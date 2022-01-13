Below are example starter configurations to help you get started with Plex Meta Manager.

For the purpose of this demonstration, the Plex library being used is set up as follows:

![LibraryOverview](https://i.imgur.com/lsNIUMX.png)

## config.yml
```
libraries:                                      # Library mappings must have a colon (:) placed after them
  Audiobooks:
    metadata_path:
      - file: config/Audobooks.yml                 # This represents a file on the host filesystem
      - git: meisnate12/MovieCharts             # This represents a file on the GitHub repository
  TV Shows:
    metadata_path:
      - file: config/TV Shows.yml               # You can map multiple file/git files
      - file: config/TV Charts.yml
      - file: config/TV Networks.yml             
      - git: meisnate12/ShowCharts
  TV Shows - Animé:
    metadata_path:                              # No files will skip the connection to this library
  Music:
    metadata_path:
      - file: config/Music.yml
playlist_files:                                 # playlist_files should be at the same indentation as libraries
  - file: config/playlists.yml                
  - git: meisnate12/Playlists
```
In the above example, `Movies`, `TV Shows`, `Anime` and `Music` are named to match my libraries within Plex. This is essential to allow Plex Meta Manager to know which library it is connecing to.

where you see any .yml file underneath a library, that points to either a git location within the [Plex Meta Manager Config Repo](https://github.com/meisnate12/Plex-Meta-Manager-Configs) or a file within your host's filesystem.

For playlists, you should use the `playlist_files` operator, and it should always be at the same indentation as your `libraries` operator.


## Basic Configurations

The first lesson to learn is that there is often more than one way to achieve the same end results for basic collections.

The following three collections all use different [Plex Builders](https://github.com/meisnate12/Plex-Meta-Manager/wiki/Plex-Builders) to create a collection of Movies released in the 1990's:

```yaml
collections:
  90s Movies:
    plex_all: true
    filters:
      decade: 1990

```
```yaml
collections:
  90s Movies:
    plex_search:
      any:
        decade: 1990
```
```yaml
collections:
  90s Movies:
    smart_filter:
      all:
        year.gt: 1989
        year.lt: 2000
      sort_by: audience_rating.desc
      limit: 20
```

You should see that the first collection uses the [Plex All](https://github.com/meisnate12/Plex-Meta-Manager/wiki/Plex-Builders#plex-all) builder which finds every item in the Plex library and then applies the `decade: 1999` filter, whilst the second collection uses the [Plex Search](https://github.com/meisnate12/Plex-Meta-Manager/wiki/Plex-Builders#plex-search) builder which uses Plex's Advance Filters to find all items based on the search criteria.

The third collection differs from the first two in a couple ways. Firstly, we have created a Smart Collection. This means that when future films are added to Plex which meets the criteria, they will automatically be added to the collection. In the first two examples, Plex Meta Manager would have to be run again to pick up any new movies which meet the criteria. Additionaly, we have added a `limit` to control how many items the collection has, and we have also added a `sort_by` which will re-arrange the collection to sort the items by audience rating, starting with the highest rated.

