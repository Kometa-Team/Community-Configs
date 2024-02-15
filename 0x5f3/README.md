#### This config will populate the following:
```
- !Suggested (random, recently added|released, recommended, suggested, trending, popular, top-rated, unwatched, most watched)
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
git clone -b remote https://github.com/0x5f3/pmm.config config
```
#### Usage:

###### The initial process for populating collections:
```
docker run --rm -it -v ./config:/config meisnate12/plex-meta-manager --config config/config.yml --collection-only --run --ignore-schedules
```

###### Following a successful initial run:
```
docker run --rm -it -v ./config:/config meisnate12/plex-meta-manager --config config/config.yml --collection-only --run
```
###### A successful run will result in something similar to this:
![movies](https://raw.githubusercontent.com/0x5f3/pmm.config/main/assets/_/_movies.png)
![shows](https://raw.githubusercontent.com/0x5f3/pmm.config/main/assets/_/_shows.png)