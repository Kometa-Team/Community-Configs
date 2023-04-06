This config will populate the following:

- Suggested (random, trending, popular, top-rated, most watched)
- Seasonal *
- Parental
- Awards
- Year (top-rated)
- Decades (top-rated)
- Genre (popular)
- Genre (top-rated)
- Sub-genre (top-rated) *
- TMBD collections *

( * = movies only )

For more details on what each section contains: [movies](MOVIES.md) | [shows](SHOWS.md)
<br/>
<br/>
<br/>
**Install:**

clone into PMM's root directory:
```
git clone --branch assets https://github.com/0x5f3/pmm-config config
```
initial run to populate collections:
```
python plex_meta_manager.py --config config/movie.yml --collections-only --run --ignore-schedules
python plex_meta_manager.py --config config/show.yml --collections-only --run --ignore-schedules
```
<br/>
After a sucessfull run, you should have something like this:
<br/>
<br/>

![movies](https://raw.githubusercontent.com/0x5f3/pmm-config/assets/assets/_/_movies.png)
<br/>
  
![shows](https://raw.githubusercontent.com/0x5f3/pmm-config/assets/assets/_/_shows.png)
