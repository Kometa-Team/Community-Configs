# Audio Flags # 

Always wanted Audio Language Flags, now I've got them. Focused on English and German combinations mainly. 
Combinations up to three flags, won't do more to combat clutter. Also, I only need original language + german and optionally english if available.

## Setup ###

This config works by regex matching the filename and applying flags accordingly.
Requires {MediaInfo AudioLanguages} in radarr naming or manually add the languages in whatever standard radarr uses in '[]' braces.


## Supported Languages ##
- english
- german
- korean
- spanish
- norwegian
- japanese
- french
- italian

## Supported combinations ##
### (single language) ###
- any language listed

### (dual language) ###
- english with any language listed
- german with any language listed

### (triple language) ###
- english + german + any third language

## Flags ##
wanted to automate the flag-combination generating to enable more combinations, but no willing to get into imagemagick at this moment. I've created templates with gimp.

# Recent Ratings # 

To combat clutter, I wanted to only display ratings for the most recently added.
It's basically the same as the [PMM ratings config](https://github.com/meisnate12/Plex-Meta-Manager-Configs/blob/master/PMM/overlays/ratings.yml) but added a recently added filter. Defaults to 30 days.

# Ratings - no 250 # 

same ratings config as in the [PMM repo](https://github.com/meisnate12/Plex-Meta-Manager-Configs/blob/master/PMM/overlays/ratings.yml), difference being that it won't change the icon if it's IMdb's top 250.
I did this because I already have the [250 corner banner](https://github.com/meisnate12/Plex-Meta-Manager-Configs/blob/master/PMM/overlays/imdb_top_250.yml), so having it twice would be redundant and wouldn't look nice.
