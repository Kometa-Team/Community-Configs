#### This config will populate the following:
```
- !Suggested (random, recently added|released, recommended, suggested, trending, popular, top-rated)
- Unwatched (random, recommended, suggested, popular, top-rated)
- !Watched (most watched daily|weekly|monthly|yearly)
- !Seasonal *
- Parental
- Family
- Documentaries
- Stand-up *
- Sports
- Anime
- Awards
- !Year (top-rated)
- !Decades (top-rated)
- !Genre (popular)
- !Genre (top-rated)
- Sub-genre (top-rated) *
- Studio *
- TMDB collections *
- Network ^

(! = enabled by default)
(* = movies only)
(^ = shows only)
```
###### For more details on what each section contains: [movies](MOVIES.md) | [shows](SHOWS.md)
#### Requirements:
```
 - API keys for: mdblist, tmdb, trakt
```
#### Install:
```
git clone --recursive https://github.com/0x5f3/kometa.config config
```
#### Usage:

###### The initial process for populating collections:
```
docker run --rm -it -v ./config:/config kometateam/kometa:nightly --config config/config.yml --run --ignore-schedules
```
###### Following a successful initial run:
```
docker run --rm -d -v ./config:/config kometateam/kometa:nightly --config config/config.yml --run
```
###### Notes:
``
With the parental configuration, there is a 'Parental' label added to their collections and all items included. The label can be used with 'Allow Only Labels' in a user's restriction settings.
``
#
#
###### A successful run will result in something similar to this:
![movies](https://raw.githubusercontent.com/0x5f3/kometa.config/collections/_/movies.png)
![shows](https://raw.githubusercontent.com/0x5f3/kometa.config/collections/_/shows.png)
