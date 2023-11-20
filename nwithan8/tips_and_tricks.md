## Promotion

- Use sort_title to promote and demote certain collections
    - start with `+` to promote to top of library
    - start with `~` to demote to bottom of a library
    - can use A-Z to additionally organize collections via levels
- Recommended to start with a number corresponding to a category
    - `1` above `2` above `3` etc.
- Use `+` and `~` to promote and demote secondarily
    - `1_++_` above `1_+_` above `1__` above `1_~_` above `1_~~_`
    - `1_+_` above `1_~_` above `2_+_` above `3__`, etc.

Prefix suggestions:

```
# Prefixes for (Movie) Collections:
#   010_+ = Charts
#   020_+ = Holidays
#   030_+ = Studios or Network
#   040_+ = Genres
#   050_+ = Countries
#   060_+ = Awards
#   070_+ = Collections
#   080_+ = Decades
#   090_+ = People
#   100_+ = General
```

This collection uses a combination of all these prefixes, and are always sorted in this order:

- CATEGORY:
  - Ex. "New" collections (010) will always be above "Award" collections (060)
- LEVEL:
  - Ex. "+++" will always be above "+", "~~~" will always be below "~", "A" will always be above "B"
- ALPHABETICAL:
  - After CATEGORY and LEVEL, collections are sorted alphabetically. If this is undesirable, use CATEGORY and LEVEL to override this default action.

## Visibility

- `visible_library`, `visible_home` and `visible_shared`
    - `true`, `false` or [schedule](https://github.com/meisnate12/Plex-Meta-Manager/wiki/Schedule-Detail) available for
      all options
    - `visible_library`: Will be visible in the Recommended tab for a specific library (and in the Library tab if you have chose to intermix collections in with library items)
    - `visible_home`: Will be visible on your Home page (what appears on your Home page is determined by what libraries you have pinned)
    - `visible_shared`: Will be visible in the Home page for other users (what appears on their Home page is determined by what libraries they have pinned)
    - Collections are *ALWAYS* visible in the Collections tab for a specific library (not controlled by the `visible_library` option)
    - Advice: Treat `visible_library` the same as `visible_home`/`visible_shared`. If you want something to appear as a recommendation on the Home page, you probably want it to appear in the specific library's Recommendations tab as well.
- Visibility does not dictate when a playlist/collection is updated:
    - When setting visibility to a certain time-frame, make sure the playlist/collection itself is scheduled to update
      at
      least one day longer than the visibility time-frame. Otherwise, the playlist/collection will not update again and
      the
      visibility will not change.
        - Example: Halloween collection, `visible_shared: (10/01-10/31)`, `schedule: (10/01-11/01)`
    - You also need to schedule the playlist to update on the first day of visibility. Otherwise, the playlist will not
      update and the visibility will not change.
    - If you can spare the processing, the best thing to do would be to have the playlist/collection update every day,
      so you don't have to worry about specifically updating it to trigger visibility changes.

## Scheduling

- Save time by updating lesser-important collections and playlists less frequently:
    - ex. `schedule: weekly(wednesday), weekly(sunday)`
- Don't need to schedule a `smart_filter` because Plex auto-updates the list itself
- Scheduling can take multiple criteria
  - Ex. yearly(02/21), all[weekly(friday),range(02/21-03/31)], yearly(04/01)
    - Run on Feb. 21 every year (regardless of day of week), then run every Friday between Feb. 21 and Mar. 31, then run Apr. 1 (regardless of day of week)
    - Useful for awards or things that need to appear and be updated only for a certain time frame of the year

## Sorting

- https://github.com/meisnate12/Plex-Meta-Manager/wiki/Plex-Builders#sort-options
- If a collection is made of multiple lists, can't use `custom`
    - Recommend sorting instead by `popularity.desc`
- Can't use `collection_order` for Plex `smart_filter` rules. Replacements:
    - `collection_order: release` -> `sort_by: release.desc`
    - `collection_order: alpha` -> `sort_by: title.desc`
    - `collection_order: random` -> `sort_by: random`
    - `collection_order: custom` -> `sort_by: ??`
- Needs to be one level above `all`/`any` criteria list. Ex.:
    - `smart_filter`:
        - sort_by: `release.desc`
        - any:
            - criteria1
            - criteria2
- Collections display on home screen in order of creation
    - Recommend having library-specific collections loaded first in config before general collections

## Filters

- Type restrictions
    - Plex `smart_filter`/`plex_search`: Use, i.e. `type: episodes`, to limit collection
      to [specific type](https://github.com/meisnate12/Plex-Meta-Manager/wiki/Plex-Builders#special-attributes)
        - Needs to be one level above `all`/`any` criteria list. Ex.:
        - `smart_filter`:
            - type: `episodes`
            - any:
                - criteria1
                - criteria2
        - Recommended to use `smart_filter` over `plex_search` when possible, as `smart_filter` means Plex will keep the
          list updated based on the criteria, rather than Plex Meta Manager having to re-run the builder every time
            - Need to use `builder_level` if using `smart_filter` for anything other than show/movies (i.e. seasons,
              episodes, etc.)
            - `smart_filter` ONLY works for collections, not playlists (despite there being a Smart Playlist concept in Plex)
    - All other rules: Use, i.e., `collection_level: episodes`, to limit collection
      to [specific type](https://github.com/meisnate12/Plex-Meta-Manager/wiki/Metadata-Details#metadata-details)
  - `episode_added` only works on Shows, because it accounts for when Show had an episode added, not when episode was
    added to library
    - Use `episode_release`, which works for individual episodes, as well as Seasons and Shows

## Templates

- As of v1.16.4, you can define templates in an external file. This allows you to define your templates in one central
  place, rather than having to copy-paste them into each file.
    - Import your templates with the `external_templates` key

## Collection vs Playlist

- A collection is an unordered group of content from the same Library (Movies, TV Shows, 4K Movies, etc.)
    - Collection configs exist inside metadata configs
    - For each Plex library, define a list of "metadata_path" config files
    - You can technically group multiple Plex libraries into one "metadata" section, but it's not recommended (too
      confusing)
- A playlist is an ordered list of content of the same type (all movies, all shows, all music, etc.)
    - Import a list of "playlist" config files. A "show" playlist file will execute on all shows (and only on shows)

## Overlays

- You can add custom overlay configurations for specific Plex libraries
    - Similar to collection/metadata, define a list of "overlay_path" config files for each Plex library

## Collections Import Flow

1. We define a "Movies" section under "libraries" in the `config.yml` file. (The name "Movies" is purely descriptive and
   doesn't have to match the name of the Plex library)
2. In the "Movies" section, we define:
    - the "library_name" as "Movies" (this is the name of the Plex library, this does matter)
    - the "metadata_path" list of metadata config files. These can come from local files/folders, the Configs repo, or a
      custom repo.
        - In our case, all our config files come from a custom repo.
3. Each metadata config file is parsed and executed
    - Each config file imports templates from another file (from the custom repo) via the `external_templates` key
    - The main template file imports templates from the Configs repo via the `external_templates` key
        - This means that every metadata config file has access to all templates (user-defined and Configs repo-defined)
    - Each config entry is parsed and executed (if needed), using items from the "Movies" library.

## Collections vs Dynamic Collections

- Let's say I wanted to make a collection of each actor's movies.
- Thankfully, with templates, we don't have to manually define every single setting/parameter for each actor's
  collection.
- I can make an "actor" template, and then define an "Adam Sandler", "Mike Myers" or "Justin Timberlake" collection and
  have it reuse the settings from the "actor" template.
- The problem is, I still need to manually define a collection for each actor. That's where dynamic collections come in.
- A dynamic collection is useful when you don't know the input data (when we don't know what actors to define)
- A dynamic collection will execute a query (say, grab a list of the top 10 actors right now), and then for each result,
  make a collection using the "actor" template.
- Schedule a dynamic collection (visibility, update frequency, etc.) via the template

## Custom Posters
- Placeholder posters generated using [this utility](https://github.com/bullmoose20/Plex-Stuff#create_poster) and [this font](https://github.com/meisnate12/Plex-Meta-Manager-Images/blob/master/Comfortaa-Bold.ttf)
  - Example: `./create_poster.ps1 -clean 1 -base_color "#5B5B5B" -gradient "1" -font "Comfortaa-Bold" -font_size "200" -text "NETWORKS"` 
