**This is primarily setup for ElfHosted tenants. All that would likely be different are your paths and url, otherwise.**
______________________________________________________________________________________________________________________
There are two version of the config file (either one would need to be renamed to `config.yml` to be active.) One version only has TV overlays, while the other has overlays for TV and movies.
______________________________________________________________________________________________________________________
If you are and ElfHosted tenant, we have an Kometa channel in our Discord. For anyone else, or for more advanced questions, join the [**Kometa Discord Server**](https://discord.gg/kometa-822460010649878528)
______________________________________________________________________________________________________________________
**Please Note #1** (collections)

In the `movie_suggestions.yml`, you **must** replace the dummy `trakt_list` links with ones of your choosing. I have removed my own. This applies to...
- Recommended

In the `movie_suggestions.yml`, you **must** replace the dummy `mbdlist_list` links with ones of your choosing. I have removed my own. This applies to...
- Watchlist
  - *You could also change it to `trakt_list` and insert a list from Trakt of your choosing.*

**Please Note #1** (paths)

With ElfHosted, your `config.yml`resides in `/config/kometa/`. The `overlays` and `metadata` folders reside in `/config/kometa/kometa/`.Yes, they are nested within a second Kometa folder. 


*The overlays are based upon work done by `jmxd`, who can be found in the Kometa Discord.*
![Screenshot 2024-10-11 090957](https://github.com/user-attachments/assets/f25e7882-9872-4f1c-9d9a-1653a4755beb)
