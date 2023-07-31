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
- Networks ^

( ! = enabled by default)
( * = movies only )
( ^ = shows only )


For more details on what each section contains: [movies](MOVIES.md) | [shows](SHOWS.md)
<br/>
<br/>
<br/>
**Install:**

clone into PMM's root directory:
```
git clone https://codeberg.org/0xFFFF/pmm-config config
```

**Usage:**

Either use [movie.yml](movie.yml), [show.yml](show.yml) to use local metadata, or use [movie_repo.yml](movie_repo.yml), [show_repo.yml](show_repo.yml) to use online resources from https://codeberg.org/0xFFFF/pmm-config.

Initial run to populate all collections:
```
python plex_meta_manager.py --config config/movie.yml --collections-only --run --ignore-schedules
python plex_meta_manager.py --config config/show.yml --collections-only --run --ignore-schedules
```
After a successful initial run:

```
python plex_meta_manager.py --config config/movie.yml --collections-only --run
python plex_meta_manager.py --config config/show.yml --collections-only --run
```

**Notes:**

*If you intend to use the Parental collection, enable "item_label.sync: Parental" (line 38, 1_parental.yml) on the initial run and disable for subsequent runs. This prevents ppm from relabelling all of the items with every run, whereas disabling will only label new items added.*

*Parental filtering can be enabled by restricting a home user to only show content that has been designated the Parental label.*

All of the assets can be found below:

- https://imgbox.com/g/1bNN3wkCVa
- https://imgbox.com/g/3ed8as9uhp
- https://imgbox.com/g/d1T5qqL3Ew
- https://imgbox.com/g/dFhG1V2dLL
- https://imgbox.com/g/iStcgmP0Y0
- https://imgbox.com/g/KaxFlLvjrU
- https://imgbox.com/g/QhNa27bRun
- https://imgbox.com/g/uz44pWg4wx
- https://imgbox.com/g/YXSDflWQpJ
- https://imgbox.com/g/Z45sK7niGI

<br/>
After a successful run, you will have something similar to this:
<br/>
<br/>

![movies](https://images2.imgbox.com/f5/87/1olEU9Sl_o.png)
<br/>
  
![shows](https://images2.imgbox.com/dd/fc/cG7v2z2i_o.png)
