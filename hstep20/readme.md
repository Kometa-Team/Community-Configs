# Configs
I wanted to try and make things as 'drag and drop' as possible for people who like things to be more modular than the large, monolithic configs some people put together. Each individual config file is atomic, in the sense that it contains one collection, one movie series, or similar along with matching posters for each item in the collection.

In order to best use these, you can use a `folder:` tag in your config file for each library pointed to the directory you place them in.

Each config file uses a complete set of matching posters, and collection poster, all of which are linked in the config file itself. If you want to change the poster set, just change the links in your config.

I've also included a config file which I use as a base for all of these. If you want to create your own structure, just copy the contents of the config file into your yml, and fill out the fields


All Movies have matching poster sets and a collection poster. TV Show metadata may vary from Only posters to everything, including Title Cards


## Movies
- Back to the Future Trilogy
- Blade Runner Collection
- Despicable Me Collection
- Futurama Movie Collection
- Harry Potter Collection
- How to Train your Dragon Trilogy
- Indiana Jones Collection
- Johnny English Trilogy
- Kingsman Collection
- Lego Movie Collection
- Lord of the Rings Trilogy
- National Treasure Collection
- Night at the Museum Trilogy
- Pirates of the Caribbean Collection
- Shrek Collection
- Studio Ghibli Collection
## Shows
- Doctor Who (2005)
  - Season Posters
- Documentary Now
  - Show Poster
  - Season Posters
- Guiellermo Del Toro: Cabinet of Curiosities
  - Show Poster
  - Season Posters
  - Title Cards
- Loki
  - Show Poster
  - Season Posters
  - Title Cards

## Cross Library
- David Attenborough Documentaries
  - Matching 'signature' posters for all of the media I could find starring Attenborough
- Futurama
  - Show
    - Season Posters
    - Show Poster
  - Movies
    - Collection Poster
    - Movie Posters
- Psych (2006) 
  - Show
    - Season Posters
    - Show Poster 
  - Movies
    - Collection Poster
    - Movie Posters

--------


# Playlists

**IMPORTANT NOTE ABOUT PLAYLISTS** - Playlist files require the 'libraries' field to be filled out, in order for PMM to appy the playlist to the libraries listed. This means that Playlist files WILL NOT WORK using the 'git:' attribute in the config file. You have to manually Copy/Paste the Playlist file into your own setup, and change each of the 'Libraries' to match your personal naming scheme for your Plex libraries.
## TV Show Playlists

### TV
- X-Files (Freak of the Week)
  - Just the 'Monster of the Week' episodes of X-Files, all in order

- X-Files (Mythology)
  - Just the Serialized 'Mythology' episodes of X-Files, all in order

- Ducktales (2017) Intended Viewing Order
  - Disney aired them out of order of the Crew's intended viewing order, so this uses the alternate order on the TVDB page to build a playlist in the order meant to be watched
### Anime
- Bleach - No Filler
  - All of the core episodes of the show Bleach without any of the filler

- Monogatari Watch Order
  - Monogatari in it's intended watch order. The series should be organized to TVDB Standards to use this - no HAMA/other metadata providers

## Music Playlists

- **Note** - Music playlists are currently broken in the 'stable' release. If you are on **v1.18.0** or earlier, you'll need to wait for a new stable update, or move to the **:develop** branch using a container tag
  
- <3 by Genre
  - Uses a template to build out playlists of <3 music by Genre. Uses Common genres I personally listen to, but is easily expandable for your own personal library
  - **Note** - Soundtracks are excluded by default, and a few playlists don't fit the template (soundtrack album type, instrumental [where you might want soundtracks], and All <3 music). This could probably be improved via optional variables, but I haven't put time into figuring that out.
  
- Chillhop by Season
  - The 'Chillhop Essentials' release a seasonal album for each season, each year. This groups them together by Season for a quick shuffle of background noise dependant on the weather. 


#### Future Collections
Some future collections I plan to do include:
- Marvel Cinematic Universe
- Star Wars Universe
- Wes Anderson Movies
- Black Mirror
- Love Death Robots
- 

There are a lot of good collections for these already, but my aim is to include matching posters for them in metadata alongside the collection itself, which most don't do.
