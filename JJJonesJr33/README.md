**Proper Movie, TV Shows, and Anime configs for Single PMM Instance & Multiple PMM Instances Setup**
______________________________________________________________________________________________________________________
**NOTICE 5/31/2022** - Overlays have been temporarily removed until I am able to update for the latest PMM release.
______________________________________________________________________________________________________________________
**TPDB**: You can find all my poasters at [**The Poster Database**](https://theposterdb.com/user/jjjonesjr33)

Have questions, or need support for one of my configs? Get ahold of me via direct message on discord - `JJJonesJr33#0001` 
 
Also if you want to check out all the other things I do follow me on my [**Socials**](https://jjjonesjr33.com/)
______________________________________________________________________________________________________________________
**PLEX META MANAGER**: For all other PMM related questions or issues, join the [**PMM Discord Server**](https://discord.gg/uvXgYS73Qf)
______________________________________________________________________________________________________________________
**Single Instance** (Simple Setup)

If you are using a single instance of PMM - Copy everything in ```Plex-Meta-Manager-All``` to your docker container location and edit the config.yml to match your settings. Then run the container, open a terminal window, and use the following command ```python plex_meta_manager.py -r```


**Multiple Instances** (Advanced Setup)

The way I have my PMM setup is via mutiple docker containers in Unraid. I have one for **Anime**, **Movies**, and **TV Shows**. The reason this was done was to speed up the process for each main category. On smaller collections this may not be as necessarily, however for larger collections like mine this is a must. To set them up copy ```Plex-Meta-Manager-Anime```, ```Plex-Meta-Manager-Movies```, and ```Plex-Meta-Manager-TV``` to their each own docker container location and edit the config.yml in each to match your settings. To run the containers, open a terminal window for each, and use the following command ```python plex_meta_manager.py -r```


**Unraid Setup**
<br>
![Unraid (Updated)](https://user-images.githubusercontent.com/29973406/172029302-90e7249b-803e-4724-894a-da4784fd5ab5.png)
<br>
**Anime Collections Preview**: <br>
![Anime (Updated)](https://user-images.githubusercontent.com/29973406/171267124-09064e96-ce22-4c89-affd-dc1b1a61e6f1.png)
<br>
**Movie Collections Preview**: <br>
![Movies (Updated)](https://user-images.githubusercontent.com/29973406/171275735-2b85aaf8-db28-4de9-b2e1-e8d0cd92f5ca.png)
<br>
**Movie Collections 4K Preview**: <br>
![Movies 4K (Updated)](https://user-images.githubusercontent.com/29973406/171275782-96c8e20b-7bbd-402b-b7fc-3ae9a7204bdd.png)
<br>
**TV Shows Collections Preview**: <br>
![TV](https://user-images.githubusercontent.com/29973406/171267202-af90b4d3-d2b5-4d18-a5c9-923d7c7c79ff.png)
<br>

Special thanks to the PMM users and their configs that I drew inspiration from
<br>
**Bullmoose20**, **Cpt-Kuesel**, **Evil Tacctician**, **Glasti1**, **Hiren-Z**, **Meisnate12**, **OhMyBahGosh**, **Sohjiro**, **TheUnchainedZebra**, **Tuxpeople**, & **Yozora**

The users who created, supported, and helped with creating posters
<br>
**Evil Tacctician**, **Mikenobbs**, & **Yozora**

And all the users of Reddit who have contributed to the cause! :D
