# cpt-kuesels PMM files
## Basics
I run PMM with docker-compose:
```yaml
  pmm_scheduled:
    image: meisnate12/plex-meta-manager:latest
    container_name: pmm_scheduled
    volumes:
      - /docker/appdata/plex-meta-manager/config:/config:rw
      - /docker/appdata/plex-meta-manager/assets:/assets:rw
      - /docker/appdata/plex-meta-manager/metadata:/metadata:rw
      - /docker/appdata/plex-meta-manager/overlays:/overlays:rw
    environment:
      PMM_TIME: "01:15,07:15,13:15,19:15"
    restart: on-failure
```

<br>

## WIP Notice & Instructions
Version required: v1.17.3

I overhauled my language overlays yet again.
Instead of big flags, I now use small flags with the language written beside the flag.

My suggestion is downloading the required files and run them local, as I have not yet worked in to run them from the configs repo.
Also that way you can fine tune it all to your specific needs.

<br>

Here is a short explanation on how to get them working and how to customize:

My approach was to separate different aspects of it into individual files.

They are:

  - _OverlayPacks/*

    | I generated 3 Packs to choose from: german, english and two letter language codes ISO 639-2. Take the files you want to use and put them in the folder *overlays/_flags* to use with my config

  - metadata/admin/_switches.yml

    | Switch specific overlays on using template_variables in config.yml, as they all default to false initially.

  - metadata/admin/_templates.yml

    | Contains all templates used in my files, not necessarily specific to overlays.

    | 'flag_overlays' is the template used.

  - metadata/admin/core.yml

    | Use collections to switch metadata languages for items.

  - overlays/admin/queues.yml

    | Contains the queue 'flags' used in my overlays and a pseudo overlay builder definition, which should not actually do something but was required to have a valid file.

  - overlays/flags.yml

    | Has all the overlay builders for the different languages.

  - overlays/_flags/*

    | Put the overlay files you chose/created in this folder.

I am using Overlay Queues and sorted all languages in my library according to my preference with weights.

<br>

Here is an example config:

```yaml
x-movie_languages: &movie_languages
  use_german: true
  use_english: true
  use_french: true
  use_japanese: true
  use_korean: true
  use_chinese: true
  use_danish: true
  use_russian: true
  use_spanish: true
  use_italian: true
  use_portuguese: true
  use_hindi: true
  use_telugu: true
  use_dutch: true
  use_icelandic: true
  use_turkish: true
  use_ukranian: true
x-show_languages: &show_languages
  use_german: true
  use_english: true
  use_french: true
  use_korean: true
  use_spanish: true
x-anime_languages: &anime_languages
  use_german: true
  use_english: true
  use_french: true
  use_japanese: true
  use_korean: true
  use_spanish: true
  use_italian: true
  use_portuguese: true
  use_thai: true

libraries:
  Movies:
    metadata_path:
      - file: metadata/admin/core
      - file: metadata/movies/metadata
      - file: metadata/movies/Collections
      - file: metadata/movies/Suggestions
    overlay_path:
      - remove_overlays: false
      - file: overlays/admin/queues
      - file: overlays/flags
        template_variables:
          <<: *movie_languages
    settings:
      asset_directory:
        - assets/movies/collections
        - assets/movies/movies
    operations:
      split_duplicates: true
  Shows:
    metadata_path:
      - file: metadata/admin/core
      - file: metadata/shows/metadata
    overlay_path:
      - remove_overlays: false
      - file: overlays/admin/queues
      - file: overlays/flags
        template_variables:
          <<: *show_languages
          overlay_level: episode
      - file: overlays/flags
        template_variables:
          <<: *show_languages
          overlay_level: season
      - file: overlays/flags
        template_variables:
          <<: *show_languages
    settings:
      asset_directory:
        - assets/shows/collections
        - assets/shows/shows
  Anime:
    metadata_path:
      - file: metadata/admin/core
      - file: metadata/animes/metadata
    overlay_path:
      - remove_overlays: false
      - file: overlays/admin/queues
      - file: overlays/flags
        template_variables:
          <<: *anime_languages
          overlay_level: episode
      - file: overlays/flags
        template_variables:
          <<: *anime_languages
          overlay_level: season
      - file: overlays/flags
        template_variables:
          <<: *anime_languages
    settings:
      asset_directory:
        - assets/animes/collections
        - assets/animes/animes
```

Feel free to ask me questions in the Discord or make suggestions on what I need to add here.

<br>

I added all files I used to create the overlays in the folder *__OverlayCreation*.

The psd uses variables and datasets to be able to generate a batch quickly.

    File->Export->Data-Sets as Files

To convert the generated psd-files into png-files I use the application ImageMagick and provided a batch file in the export directory to take care of it.


<br>

## Questions?
You can always shoot me a question in the PMM Discord!