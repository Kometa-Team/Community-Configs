# bullmoose20 PMM files
## Basics
I run PMM nightly (not lsio image) and Plex(hotio image) on Unraid 6.12.4. At the top of my config.yml file I will usually specify the version that this config.yml file works with.

<br>

## Instructions
Take what you need from my config.yml. I run everything stock from the github default PMM and tweak from within my config.yml to "make it my own". If you perform a straight copy, search for `(redacted)` as you will need to replace that with your own information. Search for `db_cache` which is for Plex and now available to set via PMM. I use 20480 MB (20GB) as my system has 168 GB of RAM. You will want to improve it from the default 40 MB that Plex sets. Maybe a good starting point if you have enough RAM is 2048 MB which is 2GB.

If you want to set the language file to something other than fr (french) do not forget to make that change to `language: fr` lines in the config.yml file before running. As for the `placeholder_imdb_id:` ensure that you read and understand those lines as you may need to choose your own movie or TV Show as your library may not have the two references that I have.

Nothing is local other than the fonts which are included in this repo (fonts.zip). These fonts are the best match I could find per ratings site and the ratings overlays. 

Unzip the fonts into `config/metadata/overlays/fonts/` to use this config without modifications.

You can put the fonts elsewhere, but if you choose to do that, you will need to adjust the ratings section (rating1_font:, rating2_font:, rating3_font:) of the overlays within the config.yml file to point to the location you chose.

I also prefer to have a copy of the local assets so that if I need to recover to the original posters, they are there. I use grab-all-posters.py from chazlarson's repo to help with that: https://github.com/chazlarson/Media-Scripts/tree/main/Plex-Meta-Manager and the following in my .env:

```
ADD_SOURCE_EXIF_COMMENT=0                    # If set to 1, add the source URL to the image EXIF tags
CURRENT_POSTER_DIR=current_posters           # put downloaded current posters and artwork here
DEFAULT_YEARS_BACK=20                        # If there is no "last run date" stored, go this many years back [integer; negative values will be made positive]
DELAY=1
FOLDERS_ONLY=0                               # If set to 1, just build out the folder hierarchy; no image downloading
GRAB_BACKGROUNDS=1                           # If set to 1, backgrounds are retrieved [into a folder `backgrounds`]
GRAB_EPISODES=1                              # grab episode posters [requires GRAB_SEASONS]
GRAB_SEASONS=1                               # grab season posters
INCLUDE_COLLECTION_ARTWORK=0                 # If set to 1, collection posters are retrieved
KEEP_JUNK=0                                  # If set to 1, keep files that script would normally delete [incorrect filetypes, mainly]
LIBRARY_NAMES=Movies,TV Shows
ONLY_COLLECTION_ARTWORK=0                    # If set to 1, ONLY collection posters are retrieved
#ONLY_THESE_COLLECTIONS=Bing|Bang|Boing       # only grab artwork for these collections and items in them; if empty, no filter
POSTER_CONSOLIDATE=0                         # if set to 0, posters are separated into folders by library
POSTER_DEPTH=1                               # grab this many posters [0 grabs all]
POSTER_DIR=extracted_posters                 # put downloaded posters here
POSTER_DOWNLOAD=1                            # if set to 0, generate a script rather than downloading
RESET_LIBRARIES=Bing,Bang,Boing              # reset "last time" count to 0 for these libraries
SUPERCHAT=1

ONLY_CURRENT=0

ASSET_DIR=assets
USE_ASSET_NAMING=1
USE_ASSET_FOLDERS=1
ASSETS_BY_LIBRARIES=1

FIND_OVERLAID_IMAGES=1
RETAIN_PMM_OVERLAID_IMAGES=0                 # keep images that have the PMM overlay EXIF tag 
RETAIN_TCM_OVERLAID_IMAGES=0                 # keep images that have the TCM overlay EXIF tag 


THREADED_DOWNLOADS=0
TMDB_KEY=(redacted)
TRACK_COMPLETION=0                           # If set to 1, movies/shows are tracked as complete by rating id
TRACK_IMAGE_SOURCES=1                        # If set to 1, keep a file containing file names and source URLs
TRACK_URLS=1                                 # If set to 1, URLS are tracked and won't be downloaded twice
USE_ASSET_SUBFOLDERS=0                       # If set to 1, create asset folders in subfolders ["Collections", "Other", or [0-9, A-Z]] ]
NO_FS_WARNING=1
PLEXAPI_PLEXAPI_TIMEOUT='360'
PLEXAPI_LOG_BACKUP_COUNT='3'
PLEXAPI_LOG_FORMAT='%(asctime)s %(module)12s:%(lineno)-4s %(levelname)-9s %(message)s'
PLEXAPI_LOG_LEVEL='INFO'
PLEXAPI_LOG_PATH='plexapi.log'
PLEXAPI_LOG_ROTATE_BYTES='512000'
PLEXAPI_LOG_SHOW_SECRETS='false'
PLEXAPI_AUTH_SERVER_BASEURL='http://192.168.2.242:32400'
PLEXAPI_AUTH_SERVER_TOKEN='(redacted)'
```

<br>

Feel free to ask me questions in the PMM Discord channel.

<br>
