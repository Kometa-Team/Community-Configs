# bullmoose20 PMM files
## Basics
I run PMM nightly (not lsio image) and Plex(hotio image) on Unraid 6.11.2. At the top of my config.yml file I will usually specify the version that this config.yml file works with.

<br>

## Instructions
Take what you need from my config.yml. I run everything stock from the github default PMM and tweak from within my config.yml to "make it my own". If you perform a straight copy, search for `(redacted)` as you will need to replace that with your own information.

If you want to set the language file to something other than fr (french) do not forget to make that change to `language: fr` lines in the config.yml file before running. As for the `placeholder_imdb_id:` ensure that you read and understand those lines as you may need to choose your own movie or TV Show as your library may not have the two references that I have.

Nothing is local other than the fonts which are included in this repo (fonts.zip). These fonts are the best match I could find per ratings site and the ratings overlays. 

Unzip the fonts into `config/metadata/overlays/fonts/` to use this config without modifications.

You can put the fonts elsewhere, but if you choose to do that, you will need to adjust the ratings section (rating1_font:, rating2_font:, rating3_font:) of the overlays within the config.yml file to point to the location you chose.

I also prefer to have a copy of the local assets so that if I need to recover to the original posters, they are there. I use grab-all-posters.py from chazlarson's repo to help with that: https://github.com/chazlarson/Media-Scripts/tree/main/Plex-Meta-Manager and the following in my .env:
```
ARTWORK=1
BACKGROUND_NAME=background
CAST_DEPTH=100
CURRENT_POSTER_DIR=\\nzwhs01\data\media\posters\
DELAY=1
KEEP_COLLECTIONS=bing,bang                   # List of collections to keep
INCLUDE_COLLECTION_ARTWORK=1                 # should get-all-posters retrieve collection posters?
ONLY_COLLECTION_ARTWORK=0                    # should get-all-posters retrieve ONLY collection posters?
GRAB_SEASONS=1                               # should get-all-posters retrieve season posters?
GRAB_EPISODES=1                              # should get-all-posters retrieve episode posters? [requires GRAB_SEASONS]
GRAB_BACKGROUNDS=1                           # should get-all-posters retrieve backgrounds?
ONLY_CURRENT=1                               # should get-all-posters retrieve ONLY current artwork?
LOCAL_RESET_ARCHIVE=1                        # should reset-posters-tmdb keep a local archive of posters?
USE_ASSET_NAMING=1                           # should grab-all-posters name images to match PMM's Asset Directory requirements?
USE_ASSET_FOLDERS=1                          # should those PMM-Asset-Directory names use asset folders?
ASSETS_BY_LIBRARIES=1                        # should those PMM-Asset-Directory images be sorted into library folders?
ASSET_DIR=assets                             # top-level directory for those PMM-Asset-Directory images
GRAB_EPISODES=1
GRAB_SEASONS=1
GRAB_BACKGROUNDS=0
KEEP_JUNK=0
TRACK_COMPLETION=0
INCLUDE_COLLECTION_ARTWORK=0
KEEP_COLLECTIONS=bing,bang
LIBRARY_MAP={"LIBRARY_ON_PLEX":"LIBRARY_ON_TARGET_PLEX", ...}
LIBRARY_NAMES=TV Shows, Movies
LOCAL_RESET_ARCHIVE=1
NAME_IN_TITLE=1
ONLY_COLLECTION_ARTWORK=0
PLEX_OWNER=bullmoose
PLEX_PATHS=0
PLEX_TOKEN='(redacted)'
PLEX_URL='http://192.168.2.242:32400'
POSTER_CONSOLIDATE=0
POSTER_DEPTH=0
POSTER_DIR=extracted_posters
POSTER_DOWNLOAD=1
POSTER_NAME=poster
REMOVE_LABELS=1
RESET_EPISODES=1
RESET_SEASONS=1
TARGET_LABELS=bing,bang,boing
TMDB_KEY=(redacted)
TARGET_PLEX_OWNER=yournamehere
TARGET_PLEX_TOKEN=PLEX-TOKEN-TWO
TARGET_PLEX_URL=https://plex.otherdomain.tld
TOP_COUNT=10
TRACK_RESET_STATUS=1
TVDB_KEY=TVDB_V4_API_KEY
UNDO=0
LOG_FILE_ACTIONS=1
OPTIMIZE_DB=0
PERSON_DEPTH=10
DB_PATH=\\NZWHS01\appdata\plex\Plug-in Support\Databases
DELETE=0
DIR_PATH=\\NZWHS01\appdata\plex\Metadata
EMPTY_TRASH=0
CLEAN_BUNDLES=0
RENAME=0
TC_DEL=0
TC_PATH=\\NZWHS01\appdata\plex\Cache\PhotoTranscoder
TMP_DIR=c:\folder\plex_db
SLEEP=60

```

<br>

Feel free to ask me questions in the PMM Discord channel.

<br>
