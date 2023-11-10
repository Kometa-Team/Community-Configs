This config will populate content rating overlays for Ireland (plex ratings example, ie/G, ie/PG, ie/12A, ie/15A, ie/16 and ie/18):

Add -file: config/content_rating_ie.yml to overlay_path (example below)

```
libraries:
  Movies:
    metadata_path:
    - file: config/Movies.yml
    - pmm: basic
    - pmm: studio
    - pmm: genre
    - pmm: actor
    - pmm: seasonal
    - pmm: imdb
      template_variables:
        use_lowest: false
    overlay_path:
    - remove_overlays: false
    - reapply_overlay: true
    - pmm: resolution
      template_variables:
        use_edition: false
        horizontal_align: center
        horizontal_offset: -160
    - pmm: audio_codec
      template_variables:
        horizontal_align: center
        horizontal_offset: 160
    - pmm: ribbon
      template_variables:
        use_common: false
        use_razzie: false
        horizontal_offset: 0
    - pmm: runtimes
      template_variables:
        horizontal_align: center
        back_width: 305
        text: ''
    - file: config/content_rating_ie.yml
```

Variables and defaults:

```
horizontal_offset: 15
horizontal_align: left
vertical_offset: 20
vertical_align: bottom
back_radius: 0
file: config/overlays/ie<<overlay_name>>.png
```
