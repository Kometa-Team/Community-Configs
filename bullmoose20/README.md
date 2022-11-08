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

<br>

Feel free to ask me questions in the PMM Discord channel.

<br>
