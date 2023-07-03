This config will add UK BBFC raitings as overlays using Commonsense Overlay


**Install:**

Copy bbfc.yml and the bbcf folder to your config directory


Add it in your config.yml like so:
```
libraries:
  Movies:
    overlay_path:
    - file: /config/bbfc.yml
```


After a sucessfull run, you should have something like this:

![movies](https://raw.githubusercontent.com/holl595/Plex-Meta-Manager-Configs/master/holl595/Screenshot.png)