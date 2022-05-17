# Plex Meta Manager Default Collections & Overlays

This directory is a central hub for git-based collections and overlays.

The intention of this directory is to offer a "drag and drop" setup for creating the most popular collections and overlays, whilst offering full flexibility of users being able to choose what they do and do not want.
All images associated with this directory are held on GitHub, allowing us to centrally make changes that will deploy to all users of this setup when they next run PMM.

Credits go to Bullmoose20, Sohjiro and Yozora for the concept, design and implementation.
Special thanks to Magic815 for the overlay image inspiration and base template.

## Configurations

### Collections & Overlays

This is an out-of-the-box library mapping that can be copy-and-pasted directly into your config.yml file, replacing everything within the `libraries:` section.

Please ensure to rename the libraries to match your environment.

Report any issues in the PMM Discord Channels

Submit other requests (image or other) via PMM Discord Channels

Please consider donating towards the project (https://github.com/sponsors/meisnate12).


<details>
  <summary>Click to expand sample config.yml file:</summary>

```yaml
libraries:                                        # Library mappings must have a colon (:) placed after them
  Movies:
    missing_path: config/missing/Movies_missing
    metadata_path:
    - repo: PMM/award/bafta
      template_variables:
        collection_mode: hide
    - repo: PMM/award/cannes
      template_variables:
        collection_mode: hide
    - repo: PMM/award/choice
      template_variables:
        collection_mode: hide
    - repo: PMM/award/golden
      template_variables:
        collection_mode: hide
    - repo: PMM/award/oscars
      template_variables:
        collection_mode: hide
    - repo: PMM/award/other
      template_variables:
        collection_mode: hide
    - repo: PMM/award/spirit
      template_variables:
        collection_mode: hide
    - repo: PMM/award/sundance
      template_variables:
        collection_mode: hide
    - repo: PMM/chart/old_movie_chart
      template_variables:
        collection_mode: hide
    - repo: PMM/actor
      template_variables:
        collection_mode: hide
    - repo: PMM/audio_language
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/content_rating_us           # Choose content_rating_uk or content_rating_us
      template_variables:
        collection_mode: hide
    - repo: PMM/genre
      template_variables:
        collection_mode: hide
    - repo: PMM/resolution_standards              # Choose resolution_standards or resolution
      template_variables:
        collection_mode: hide
    - repo: PMM/studio
      template_variables:
        collection_mode: hide
    - repo: PMM/subtitle_language
      template_variables:
        collection_mode: hide
    - repo: PMM/year
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/country_color               # Choose country_color or country_white
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/decade
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/director
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/franchise
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/multi-franchise
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/producer
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/seasonal_section            # Choose seasonal or seasonal_section
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/streaming
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/writer
      template_variables:
        collection_mode: hide
    overlay_path:
    - repo: PMM/overlays/audio_codec
    - repo: PMM/overlays/audio_language
    - repo: PMM/overlays/direct_play
    - repo: PMM/overlays/imdb_top_250
    - repo: PMM/overlays/ratings
    - repo: PMM/overlays/resolution
    - repo: PMM/overlays/special_release
    - repo: PMM/overlays/streaming
    - repo: PMM/overlays/video_format
    - remove_overlays: false
  TV Shows:
    missing_path: config/missing/TV_missing
    metadata_path:
    - repo: PMM/award/choice
      template_variables:
        collection_mode: hide
    - repo: PMM/award/golden
      template_variables:
        collection_mode: hide
    - repo: PMM/award/emmy
      template_variables:
        collection_mode: hide
    - repo: PMM/award/golden
      template_variables:
        collection_mode: hide
    - repo: PMM/chart/old_show_chart
      template_variables:
        collection_mode: hide
    - repo: PMM/actor
      template_variables:
        collection_mode: hide
    - repo: PMM/audio_language
      template_variables:
        collection_mode: hide
    - repo: PMM/show/content_rating_us            # Choose content_rating_uk or content_rating_us
      template_variables:
        collection_mode: hide
    - repo: PMM/genre
      template_variables:
        collection_mode: hide
    - repo: PMM/resolution_standards              # Choose resolution_standards or resolution
      template_variables:
        collection_mode: hide
    - repo: PMM/studio
      template_variables:
        collection_mode: hide
    - repo: PMM/subtitle_language
      template_variables:
        collection_mode: hide
    - repo: PMM/year
      template_variables:
        collection_mode: hide
    - repo: PMM/show/country_color                # Choose country_color or country_white
      template_variables:
        collection_mode: hide
    - repo: PMM/show/decade
      template_variables:
        collection_mode: hide
    - repo: PMM/show/network
      template_variables:
        collection_mode: hide
    - repo: PMM/show/streaming
      template_variables:
        collection_mode: hide
    overlay_path:
    - repo: PMM/overlays/audio_codec
    - repo: PMM/overlays/audio_codec
      template_variables:
        overlay_level: episode
    - repo: PMM/overlays/audio_codec
      template_variables:
        overlay_level: season
    - repo: PMM/overlays/audio_language
    - repo: PMM/overlays/audio_language
      template_variables:
        overlay_level: episode
    - repo: PMM/overlays/audio_language
      template_variables:
        overlay_level: season
    - repo: PMM/overlays/direct_play
    - repo: PMM/overlays/direct_play
      template_variables:
        overlay_level: episode
    - repo: PMM/overlays/direct_play
      template_variables:
        overlay_level: season
    - repo: PMM/overlays/ratings
    - repo: PMM/overlays/ratings
      template_variables:
        overlay_level: episode
    - repo: PMM/overlays/ratings
      template_variables:
        overlay_level: season
    - repo: PMM/overlays/resolution
    - repo: PMM/overlays/resolution
      template_variables:
        overlay_level: episode
    - repo: PMM/overlays/resolution
      template_variables:
        overlay_level: season
    - repo: PMM/overlays/special_release
    - repo: PMM/overlays/special_release
      template_variables:
        overlay_level: episode
    - repo: PMM/overlays/special_release
      template_variables:
        overlay_level: season
    - repo: PMM/overlays/streaming
    - repo: PMM/overlays/streaming
      template_variables:
        overlay_level: episode
    - repo: PMM/overlays/streaming
      template_variables:
        overlay_level: season
    - repo: PMM/overlays/video_format
    - repo: PMM/overlays/video_format
      template_variables:
        overlay_level: episode
    - repo: PMM/overlays/video_format
      template_variables:
        overlay_level: season
    - remove_overlays: false
playlist_files:
- repo: PMM/playlist
```
</details>


Playlists Preview: <br>
![Playlists](playlist.jpg)
<br>
<br>

Movie Library With Overlays Preview: <br>
![Movies with overlays](movies-overlays.jpg)
<br>
<br>

Movie Collections Preview: <br>
![Movies Collections](movies-collections.jpg)
<br>
<br>

TV Shows Library with Overlays Preview: <br>
![TV Shows with overlays](shows-overlays.jpg)<br>
<br>
<br>

TV Shows Collections Preview: <br>
![TV Shows Collections](shows-collections.jpg)<br>
<br>
<br>
</details>
