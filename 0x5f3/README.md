#### This config will populate the following:
```
- !Suggested (random, recently added|released, recommended, suggested, trending, popular, top-rated)
- Unwatched (random, recommended, suggested, popular, top-rated)
- !Watched (most watched daily|weekly|monthly|yearly)
- !Seasonal *
- Parental
- Documentaries
- Stand-up *
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
git clone https://github.com/0x5f3/pmm.config config
```
#### Usage:

###### The initial process for populating collections:
```
docker run --rm -it -v ./config:/config meisnate12/plex-meta-manager:nightly --config config/config.yml --run --ignore-schedules
```
###### Following a successful initial run:
```
docker run --rm -it -v ./config:/config meisnate12/plex-meta-manager:nightly --config config/config.yml --run
```
###### Notes:
``
The parental configuration adds a 'Parental' label to their collections and all items included. The label is capable of being used with 'Allow Only Labels' in a user's restriction settings.
``
#
#
###### A successful run will result in something similar to this:
![movies](/assets/_/_movies.png)
![shows](/assets/_/_shows.png)
