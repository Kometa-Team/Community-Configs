# Plex Meta Manager Configs

Do not open any support requests regarding files found in this directory. This is strictly a Work In Progress (WIP)
<br>
![WIP](WIP.jpg)
<br>
<br>

Sample yml config file as of 2022-05-03:
## This file is a template remove the .template to use the file

libraries:                                      # Library mappings must have a colon (:) placed after them
  Movies:
    missing_path: config/missing/Movies_missing.yml
    metadata_path:
    - repo: PMM/actor
      template_variables:
        collection_mode: hide
    - repo: PMM/audio_language
      template_variables:
        collection_mode: hide
    - repo: PMM/choice
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/content_rating_us         # Choose content_rating_uk or content_rating_us
      template_variables:
        collection_mode: hide
    - repo: PMM/genre
      template_variables:
        collection_mode: hide
    - repo: PMM/golden
      template_variables:
        collection_mode: hide
    - repo: PMM/resolution_standards            # Choose resolution_standards or resolution
      template_variables:
        collection_mode: hide
    - repo: PMM/studio
      template_variables:
        collection_mode: hide
    - repo: PMM/studio_animation
      template_variables:
        collection_mode: hide
    - repo: PMM/subtitle_language
      template_variables:
        collection_mode: hide
    - repo: PMM/year
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/award
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/bafta
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/cannes
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/chart
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/country_color             # Choose country_color or country_white
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
    - repo: PMM/movie/oscars
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/producer
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/seasonal_section          # Choose seasonal or seasonal_section
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/spirit
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/streaming
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/sundance
      template_variables:
        collection_mode: hide
    - repo: PMM/movie/writer
      template_variables:
        collection_mode: hide
    overlay_path:
    - repo: PMM/ov_alert
    - repo: PMM/ov_audio_codec_ddplus
    - repo: PMM/ov_audio_codec_dolby-atmos
    - repo: PMM/ov_audio_codec_dolby-digital
    - repo: PMM/ov_audio_codec_dolby-truehd
    - repo: PMM/ov_audio_codec_dts
    - repo: PMM/ov_audio_codec_dts-es
    - repo: PMM/ov_audio_codec_dts-hd
    - repo: PMM/ov_audio_codec_dts-x
    - repo: PMM/ov_audio_language_dual-audio
    - repo: PMM/ov_audio_language_multi-audio
    - repo: PMM/ov_resolution_480
    - repo: PMM/ov_resolution_480-DV
    - repo: PMM/ov_resolution_480-HDR
    - repo: PMM/ov_resolution_720
    - repo: PMM/ov_resolution_720-DV
    - repo: PMM/ov_resolution_720-HDR
    - repo: PMM/ov_resolution_1080
    - repo: PMM/ov_resolution_1080-DV
    - repo: PMM/ov_resolution_1080-HDR
    - repo: PMM/ov_resolution_4K
    - repo: PMM/ov_resolution_4K-DV
    - repo: PMM/ov_resolution_4K-HDR
    - repo: PMM/ov_special_release_criterion
    - repo: PMM/ov_special_release_imax
    - repo: PMM/ov_streaming_amazon
    - repo: PMM/ov_streaming_appletv
    - repo: PMM/ov_streaming_disney
    - repo: PMM/ov_streaming_hbomax
    - repo: PMM/ov_streaming_hulu
    - repo: PMM/ov_streaming_netflix
    - repo: PMM/ov_streaming_paramount
    - repo: PMM/ov_streaming_peacock
    - repo: PMM/ov_top_rated_imdb-top-250
    - repo: PMM/ov_video_format_blu-ray
    - repo: PMM/ov_video_format_dvd
    - repo: PMM/ov_video_format_hdtv
    - repo: PMM/ov_video_format_remux
    - repo: PMM/ov_video_format_web
    - remove_overlays: true
    settings:
      asset_directory:
        - config/assets

    operations:
      split_duplicates: true
      assets_for_all: false
      mass_trakt_rating_update: true
      mass_critic_rating_update: tmdb
      mass_audience_rating_update: tmdb
      mass_genre_update: tmdb
      mass_content_rating_update: omdb
      mass_originally_available_update: tmdb
      mass_imdb_parental_labels: without_none
  TV Shows:
    missing_path: config/missing/TV Shows_missing.yml
    metadata_path:
    - repo: PMM/actor
      template_variables:
        collection_mode: hide
    - repo: PMM/audio_language
      template_variables:
        collection_mode: hide
    - repo: PMM/choice
      template_variables:
        collection_mode: hide
    - repo: PMM/show/content_rating_us          # Choose content_rating_uk or content_rating_us
      template_variables:
        collection_mode: hide
    - repo: PMM/genre
      template_variables:
        collection_mode: hide
    - repo: PMM/golden
      template_variables:
        collection_mode: hide
    - repo: PMM/resolution_standards            # Choose resolution_standards or resolution
      template_variables:
        collection_mode: hide
    - repo: PMM/studio
      template_variables:
        collection_mode: hide
    - repo: PMM/studio_animation
      template_variables:
        collection_mode: hide
    - repo: PMM/subtitle_language
      template_variables:
        collection_mode: hide
    - repo: PMM/year
      template_variables:
        collection_mode: hide
    - repo: PMM/show/award
      template_variables:
        collection_mode: hide
    - repo: PMM/show/chart
      template_variables:
        collection_mode: hide
    - repo: PMM/show/country_color              # Choose country_color or country_white
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
    - repo: PMM/ov_alert_l
    - repo: PMM/ov_audio_codec_ddplus_l
    - repo: PMM/ov_audio_codec_dolby-atmos_l
    - repo: PMM/ov_audio_codec_dolby-digital_l
    - repo: PMM/ov_audio_codec_dolby-truehd_l
    - repo: PMM/ov_audio_codec_dts_l
    - repo: PMM/ov_audio_codec_dts-es_l
    - repo: PMM/ov_audio_codec_dts-hd_l
    - repo: PMM/ov_audio_codec_dts-x_l
    - repo: PMM/ov_audio_language_dual-audio_l
    - repo: PMM/ov_audio_language_multi-audio_l
    - repo: PMM/ov_resolution_480_l
    - repo: PMM/ov_resolution_480-DV_l
    - repo: PMM/ov_resolution_480-HDR_l
    - repo: PMM/ov_resolution_720_l
    - repo: PMM/ov_resolution_720-DV_l
    - repo: PMM/ov_resolution_720-HDR_l
    - repo: PMM/ov_resolution_1080_l
    - repo: PMM/ov_resolution_1080-DV_l
    - repo: PMM/ov_resolution_1080-HDR_l
    - repo: PMM/ov_resolution_4K_l
    - repo: PMM/ov_resolution_4K-DV_l
    - repo: PMM/ov_resolution_4K-HDR_l
    - repo: PMM/ov_special_release_criterion_l
    - repo: PMM/ov_special_release_imax_l
    - repo: PMM/ov_streaming_amazon_l
    - repo: PMM/ov_streaming_appletv_l
    - repo: PMM/ov_streaming_disney_l
    - repo: PMM/ov_streaming_hbomax_l
    - repo: PMM/ov_streaming_hulu_l
    - repo: PMM/ov_streaming_netflix_l
    - repo: PMM/ov_streaming_paramount_l
    - repo: PMM/ov_streaming_peacock_l
    - repo: PMM/ov_video_format_blu-ray_l
    - repo: PMM/ov_video_format_dvd_l
    - repo: PMM/ov_video_format_hdtv_l
    - repo: PMM/ov_video_format_remux_l
    - repo: PMM/ov_video_format_web_l
    - remove_overlays: false
    settings:
      asset_directory:
        - config/assets

    operations:
      split_duplicates: true
      assets_for_all: false
      mass_trakt_rating_update: true
      mass_critic_rating_update: tmdb
      mass_audience_rating_update: tmdb
      mass_genre_update: tmdb
      mass_content_rating_update: omdb
      mass_originally_available_update: tmdb
      mass_imdb_parental_labels: without_none
playlist_files:
  - repo: PMM/playlist
settings:                                       # Can be individually specified per library as well
  cache: true
  cache_expiration: 60
  asset_folders: true
  asset_depth: 3
  create_asset_folders: false
  dimensional_asset_rename: true
  sync_mode: sync
  delete_below_minimum: true
  delete_not_scheduled: false
  run_again_delay: 2
  missing_only_released: true
  only_filter_missing: false
  show_unmanaged: true
  show_filtered: true
  show_options: true
  show_missing: true
  show_missing_assets: true
  show_missing_season_assets: true
  save_missing: true
  tvdb_language: eng
  ignore_ids:
  ignore_imdb_ids:
  minimum_items: 1
  default_collection_order:
  download_url_assets: false
  verify_ssl: true
  item_refresh_delay: 0
  asset_directory: config/assets
  missing_path: config/missing
  playlist_sync_to_users: all
  show_missing_episode_assets: false
  show_asset_not_needed: true
  blank_collection: true
  custom_repo: https://github.com/meisnate12/Plex-Meta-Manager-Configs/sohjiro/
  check_nightly: true
webhooks:                                       # Can be individually specified per library as well
  error: notifiarr
  run_start: notifiarr
  run_end: notifiarr
  changes:
    - notifiarr
  version:
plex:                                           # Can be individually specified per library as well; REQUIRED for the script to run
  url: http://192.168.2.242:32400
  token: p*********************2
  timeout: 60
  clean_bundles: true
  empty_trash: true
  optimize: true
tmdb:                                           # REQUIRED for the script to run
  apikey: 1*********************8
  language: en
  cache_expiration: 60
  region:
tautulli:                                       # Can be individually specified per library as well
  url: http://192.168.2.242:8181
  apikey: 6*********************9
omdb:
  apikey: 9*********************6
  cache_expiration: 60
notifiarr:
  apikey: d*********************6
radarr:                                         # Can be individually specified per library as well
  url: http://192.168.2.242:7878
  token: 3*********************4
  root_folder_path: /data/media/movies
  monitor: true
  availability: announced
  quality_profile: Any
  tag: pmm
  search: false
  radarr_path:
  plex_path:
  add_existing: false
  add_missing: false
sonarr:                                         # Can be individually specified per library as well
  url: http://192.168.2.242:8989
  token: a*********************8
  root_folder_path: /data/media/tv
  monitor: all
  quality_profile: Any
  language_profile: English
  series_type: standard
  season_folder: true
  tag: pmm
  search: false
  cutoff_search: false
  sonarr_path:
  plex_path:
  add_existing: false
  add_missing: false
trakt:
  client_id: f*********************4
  client_secret: 6*********************d
  authorization:
    access_token: 7*********************0
    token_type: Bearer
    expires_in: 7889237
    refresh_token: 2*********************d
    scope: public
    created_at: 1650161441
  pin:

