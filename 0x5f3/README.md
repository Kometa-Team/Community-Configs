This config will populate the following:

- !Suggested (random, trending, popular, top-rated, most watched)
- !Seasonal *
- Parental
- Documentaries
- Stand-up *
- !Awards
- !Year (top-rated)
- !Decades (top-rated)
- !Genre (popular)
- !Genre (top-rated)
- Sub-genre (top-rated) *
- TMBD collections *

( * = movies only )
( ! = enabled by default)

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

*If you intend to use the Parental collection, enable "item_label.sync: Parental" (line 38, 1_parental.yml) on the initial run and disable for subsequent runs. This prevents ppm from relabelling all of the items with every run, where as disabling will only label new items added.*

<br/>
After a successful run, you will have something similar to this:
<br/>
<br/>

![movies](/assets/_/_movies.png)
<br/>
  
![shows](/assets/_/_shows.png)
