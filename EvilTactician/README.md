# Evil Tactician's Anime Collections

Anime Collections based on MAL Genres

## Included
* config.yml
* Anime.yml
* Custom Artwork
* Photoshop Template

Preview: <br>
![Anime](Anime.png)

I am going to assume you've followed the guides for installing [Plex Meta Manager](https://github.com/meisnate12/Plex-Meta-Manager) for your platform.

## config.yml

You can either use my ```config.yml```, or you can use it as a cheatsheet for the elements you need in your own.<br>
Note that mine only contains the sections required for Anime Collections to work.<br>
Don't forget to configure the ```plex:```, ```tmbd:``` and ```mal:``` sections with your details and API keys. There are links in the file to guides for those.

## Anime.yml

This is the configuration file for the Anime Collections.

```yaml
templates:
  MAL Genre:
    mal_genre:
      genre_id: <<genre_id>>
    collection_order: alpha
    collection_mode: hide
    sync_mode: sync
```

The above is the template for the Genre Collections.<br>
If you wish to change the ```collection_mode```, ```collection_order``` or ```sync_mode```, please do so here. It will apply to all Genre Collections.

```yaml
  MAL User:
    sort_title: ~<<collection_name>>
    mal_userlist:
      username: <<username>>
      status: plan_to_watch
      sort_by: title
      limit: 500
    collection_order: alpha
    collection_mode: hide
    sync_mode: sync 
```

The above is the template for the MAL "Plan to Watch" Collections below.

```yaml
  Collection1: # Replace Username1 with a valid MAL Username
    template: { name: MAL User, username: Username1 }
  Collection2: # Replace Username2 with a valid MAL Username
    template: { name: MAL User, username: Username2 }
```

Above is where you specify collections for individual users, based on their MAL profile's "Plan to Watch" list.<br>
Replace ```Collection1:``` with whatever you want the Collection to be called in Plex.<br>
Replace ```Username1``` with the exact username of the MAL profile you wish to use.

Repeat for as many users as you want - just copy and paste more entries.

If you don't wish to use these, simply delete them from the file.


```yaml
  Unmatched:
    plex_collectionless:
       exclude: Test
    sort_title: ~_Unmatched
    collection_order: alpha
```

The above (at the very bottom of the file) creates a collection named "Unmatched" which will contain every Anime in your library which PMM wasn't able to add to the MAL Genres. I use this myself to see which Anime PMM couldn't map.
PMM maps via external resources and it sometimes takes a while for those resources to update as they rely on human intervention. It doesn't necessarily mean there is something wrong with your library or config - it's like that those Anime haven't been mapped.

Again, if you don't want this - just delete those lines.


## Custom Artwork

The posters from the preview can be found in the Assets folder. You can upload the entire folder "as is" to the same directory where your ```config.yml``` and ```Anime.yml``` files are located.
Please note that the names of each poster need to match the names of the collections in your Anime.yml file. If you rename any collection, you'll have to rename the poster accordingly!

If you wish to display custom posters for your MAL "Plan to Watch" Collection(s), you'll need to add posters in the ```Assets``` folder with the name of each collection as well.

For example, if your MAL Profile Collection is called "Plan to Watch", you would need to add "/Assets/Plan to Watch.png"


## PSD Template

There is a PSD Template (Photoshop) included if you wish to make MAL Profile Collections in the same style.
This template can also be used to make new Collection posters in the same style, just untick the "Plan to Watch" layer and make sure your background image spans the whole frame.

## Testing / First Run

If you wish for PMM to do a one-off run instead of waiting for the daily schedule: 
1. Ensure the PMM container is running
2. Open the terminal
3. Run ```python plex_meta_manager.py -r```
Press ```CTRL-C``` if you want it to stop before it finishes.

For me it takes approximately 16 minutes.

## Special Thanks
JJJonesJr33 - Original Base Anime.yml & Feedback<br>
Fribb - Creator of https://github.com/Fribb/anime-lists, helped me track down some mapping issues<br>
Sohjiro - Creator of Plex Meta Manager

There was quite a bit of work involved in this - and you're welcome to use my assets and templates as you see fit as long as you give credit if you re-distribute them anywhere or include them in another project.

If you wish to say thanks, you can [buy me a coffee](https://ko-fi.com/eviltactician) or wave on Discord.
