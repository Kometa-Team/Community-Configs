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
    environment:
      PMM_TIME: "05:15,11:15,17:15,23:15"
    restart: on-failure
```
Here is a screenshot of my folder structure: <br>
![pmm_folder_structure](pmm_folder_structure.png)

I have added my config.yml as well, sanitized for personal stuff of course. 
Keep in mind my libraries have german names, but it should be understandable, I hope.

As I keep my posters and title cards locally PMM mostly keeps them up-to-date in Plex through the option *assets_for_all*. This is especially true for my anime and my tv show library.
Not much collection work going on there... yet!

## My metadata files
This is mostly just talking about my movies library, but I added a comment header into every file to explain the structure I am going for in that library.
Here it is again:
```yaml
# Prefixes for cpt-kuesels Movie Collections:
#   +1_ = Decades
#   +2_ = Awards
#   +3_ = People
#   +4_ = Genres
#   +5_ = Filme
```
These prefixes are added to the sort title of the collections in the file that should be sorted at the top of my movies library.
If I need more control in the file sorting big collections like the MCU before smaller collections like Jurassic Park I add numbers to the prefix.
This is shown in the header of each file:
```yaml
#  In this file:
#  [
#   +5_1_ = Universes
#   +5_2_ = Franchises
#  ]
```
Normal collections, like Bad Boys, are just sorted alphabetically into the library.
Capitalized Metadata Files get their own asset folders in an attempt to be organized. 
Works for me as I have now, at time of writing, cracked the mark of 10GB of local assets. Too much for a single asset directory in my opinion.

I have started cross library metadata files. 
For example in my movies library I have a `serien.yml` for those Movies that belong to a tv show.
The collections are hidden so that they just come up in the overview of the items when you scroll down, but not in the library tab.

## Overlays
Overlays are my way to signal audio languages and therefore i have created overlays with every language currently in my library. 
I also use *item_metadata_language* to only have movies with german audio track with german movie synopsis and title and everything else with english text and title.
The flags are taken from: https://www.countries-ofthe-world.com/flags-of-the-world.html

In my overlay.psd, located in  `config/overlays` in this repo btw, i have prepared a layer for every flag/language that is represented in my library.
They are in layer groups and can easily be toggled to quickly create new overlays.
If you like to use my overlays and can't use my .psd shoot me a message on Discord and I can create any missing language overlay for you.

## Questions?
You can always shoot me a question in the PMM Discord found on the main GitHub in the support section:
https://github.com/meisnate12/Plex-Meta-Manager/tree/master#support