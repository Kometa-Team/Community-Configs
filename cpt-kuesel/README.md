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
Version required: v1.17.1 (latest)

I am still not finished but here are my new language overlays.

My suggestion is downloading the required files and run them local, as I have not yet worked in to run them from the configs repo.
Also that way you can fine tune more to what you want.

<br>

Here is a short explanation on how to get them working and how to customize:

My approach was to separate all different aspects of it into individual files.

They are:

  - metadata/admin/_switches.yml

    | Switch specific overlays on using template_variables in config.yml, as they all default to false initially.

  - metadata/admin/_templates.yml

    | Contains all templates used in my files, not necessarily specific to overlays.

    | Templates used in overlay files are `ol_builder` and `it_items`.

  - metadata/admin/core.yml

    | Create a collection with all used labels, switch metadata languages for items and add a label to 4k/HDR content.

    | Also toggable via template_variables in config.yml

  - overlays/admin/queues.yml

    | Contains all queues used in my overlays and a pseudo overlay builder definition, which should not actually do something but was required to have a valid file.

  - overlays/flags.yml

    | Has all the overlay builders for the different languages.

  - overlays/badges.yml

    | Has a 4k and a HDR overlay builder.

  - overlays/_posters/[250x150]/* | overlays/_posters/[183x113]/*

    | In this folder are all the files used as overlay for Movies, Shows and Seasons with dimensions 250x150 or 183x113.
    Choose the size you want to use and move them up in overlays/_posters.

    | My configs use size 250x150.

  - overlays/_titlecards/[240x180]*

    | In this folder are all the files used as overlay for Episodes with dimensions 240x180.

I am using Overlay Queues and sorted all languages in my library according to my preference with weights accordingly.

All queues apart from the default ones require their specific label on the Plex Item.
You can add those manually or via another PMM collection builder using `item_label`.

<br>

Here is an example config:

```yaml
x-movie_languages: &movie_languages
  sw_german: true
  sw_english: true
  sw_french: true
  sw_japanese: true
  sw_korean: true
  sw_chinese: true
  sw_danish: true
  sw_russian: true
  sw_spanish: true
  sw_italian: true
  sw_portuguese: true
  sw_hindi: true
  sw_telugu: true
  sw_farsi: true
  sw_thai: true
  sw_dutch: true
  sw_norwegian: true
  sw_icelandic: true
  sw_turkish: true
  sw_polish: true
  sw_czech: true
  sw_ukranian: true
  sw_hungarian: true
x-show_languages: &show_languages
  sw_german: true
  sw_english: true
  sw_french: true
  sw_korean: true
  sw_spanish: true
  sw_swedish: true
x-anime_languages: &anime_languages
  sw_german: true
  sw_english: true
  sw_french: true
  sw_japanese: true
  sw_korean: true
  sw_spanish: true
  sw_italian: true
  sw_portuguese: true
  sw_thai: true
x-badges: &badges
  sw_uhd: true
  sw_hdr: true

libraries:
  Movies:
    metadata_path:
      - file: metadata/admin/core
        template_variables:
          local_only: true
      - file: metadata/movies/metadata
      - file: metadata/movies/Collections
      - file: metadata/movies/Suggestions
    overlay_path:
      - remove_overlays: false
      - file: overlays/admin/queues
      - file: overlays/flags
        template_variables:
          <<: *movie_languages
          ol_type: movie
          ol_folder: _posters
          ol_queue: default_portrait_flags
      - file: overlays/badges
        template_variables:
          <<: *badges
          ol_type: movie
          ol_folder: _posters
          ol_queue: default_portrait_badges
      - file: overlays/flags
        template_variables:
          <<: *movie_languages
          ol_type: movie
          ol_folder: _posters
          ol_queue: bottom_portrait_flags
          it_queue: bottom
          it_default: null
      - file: overlays/badges
        template_variables:
          <<: *badges
          ol_type: movie
          ol_folder: _posters
          ol_queue: bottom_portrait_badges
          it_queue: bottom
          it_default: null
      - file: overlays/flags
        template_variables:
          <<: *movie_languages
          ol_type: movie
          ol_folder: _posters
          ol_queue: up_corners_portrait_flags
          it_queue: up_corners
          it_default: null
      - file: overlays/badges
        template_variables:
          <<: *badges
          ol_type: movie
          ol_folder: _posters
          ol_queue: up_corners_portrait_badges
          it_queue: up_corners
          it_default: null
      - file: overlays/flags
        template_variables:
          <<: *movie_languages
          ol_type: movie
          ol_folder: _posters
          ol_queue: down_corners_portrait_flags
          it_queue: down_corners
          it_default: null
      - file: overlays/badges
        template_variables:
          <<: *badges
          ol_type: movie
          ol_folder: _posters
          ol_queue: down_corners_portrait_badges
          it_queue: down_corners
          it_default: null
    settings:
      asset_directory:
        - assets/movies/collections
        - assets/movies/movies
    operations:
      split_duplicates: true
  Shows:
    metadata_path:
      - file: metadata/admin/core
        template_variables:
          local_only: true
      - file: metadata/shows/metadata
    overlay_path:
      - remove_overlays: false
      - file: overlays/admin/queues
      - file: overlays/flags
        template_variables:
          <<: *show_languages
          overlay_level: episode
          ol_type: episode
          ol_folder: _titlecards
          ol_queue: default_landscape_flags
      - file: overlays/badges
        template_variables:
          <<: *badges
          overlay_level: episode
          ol_type: episode
          ol_folder: _titlecards
          ol_queue: default_landscape_badges
      - file: overlays/flags
        template_variables:
          <<: *show_languages
          overlay_level: season
          ol_type: season
          ol_folder: _posters
          ol_queue: default_portrait_flags
      - file: overlays/badges
        template_variables:
          <<: *badges
          overlay_level: season
          ol_type: season
          ol_folder: _posters
          ol_queue: default_portrait_badges
      - file: overlays/flags
        template_variables:
          <<: *show_languages
          ol_type: show
          ol_folder: _posters
          ol_queue: default_portrait_flags
      - file: overlays/badges
        template_variables:
          <<: *badges
          ol_type: show
          ol_folder: _posters
          ol_queue: default_portrait_badges
    settings:
      asset_directory:
        - assets/shows/collections
        - assets/shows/shows
```

I know I need to properly explain more, but for the moment it is all I can think of.

Feel free to ask me questions in the Discord or make suggestions on what I need to add here.

<br>

## Questions?
You can always shoot me a question in the PMM Discord found on the main GitHub in the support section:
https://github.com/meisnate12/Plex-Meta-Manager/tree/master#support