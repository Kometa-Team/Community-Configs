# Alternative Geography Collections, Oscars International Feature Film Winners and Nominees Collections, and Audio Language Overlay

Add the following code to your config.yml file to create collections for a seven continent configuration (as opposed to the six UN regions used by the default); a version of the countries.yml which groups countries with low output that are culturally similar - such as 'Balkans', 'Nordic', 'Middle East' and 'Pacific Island', and collections for the Oscar International Film Winners and Nominees

The overlay yml adds a country flag defined by the audio language of the entry to the top right corner. Note that languages are not countries. Portuguese is great for films from Portugal; but its flag on a Brazilian film could be confusing. Furthermore, many films have an unknown audio language in Plex - this requires fixing at the file level with a tool such as mkvtoolnix.

```yaml
libraries:
  Movies:
    metadata_path:
      - git: Adam-Pope/Movies/continents.yml
        template_variables:
          style: color  # defaults to white
          collection_section: "080" # puts continents before regions
      - git: Adam-Pope/Movies/regions.yml
        template_variables:
          style: color  # defaults to white
      - default: country
        template_variables:
          style: color
          collection_section: "!082"
      - git: Adam-Pope/Movies/international_feature.yml

  TV Shows:
    metadata_path:
      - git: Adam-Pope/TV/continents.yml
        template_variables:
          style: color  # defaults to white
          collection_section: "!080" # puts continents before regions
      - git: Adam-Pope/TV/regions.yml
        template_variables:
          style: color  # defaults to white
      - default: country
        template_variables:
          style: color
          collection_section: "!082"

    overlay_path:
      - pmm: resolution     
      - pmm: languages                             
        template_variables:
          horizontal_position: right
          horizontal_offset: 100
          vertical_position: top
          vertical_offset: 35
          style: half
          country_en: uk
          languages:
            - en
            - de
            - fr
            - es
            - pt
            - ja
            - ko
            - zh
            - da
            - ru
            - it
            - hi
            - te
            - fa
            - th
            - nl
            - no
            - is
            - sv
            - tr
            - pl
            - cs
            - uk
            - hu
            - ar
            - bg
            - bn
            - bs
            - ca
            - cy
            - el
            - et
            - eu
            - fi
            - fl
            - gl
            - he
            - hr
            - id
            - ka
            - kk
            - kn
            - la
            - lt
            - lv
            - mk
            - ml
            - mr
            - ms
            - nb
            - nn
            - pa
            - ro
            - sk
            - sl
            - sq
            - sr
            - sw
            - ta
            - ur
            - vi
            - wo
            - myn
            - iu
            - rom
            - su
            - zu
            - am
            - fil
      - pmm: ratings                                  
        template_variables:      
          rating1: critic
          rating1_image: rt_tomato
          rating1_font: config/metadata/overlays/fonts/Adlib.ttf
          rating2: audience  
          rating2_image: imdb
          rating2_font: config/metadata/overlays/fonts/Impact.ttf
          horizontal_position: left
          vertical_position: bottom
          rating_alignment: horizontal
          vertical_offset: 15
          horizontal_offset: 0        
      - pmm: commonsense
        template_variables:
          vertical_align: top
          horizontal_align: center
          vertical_offset: 15
      - pmm: ribbon
```

**Continents Collection Overview**: <br><br>
![Movies](https://i.imgur.com/WdZSatA.png)
<br>

**Regions Collection Preview**: <br><br>
![TV Shows](https://i.imgur.com/IhRoyCk.png)
<br>

**Overlay Preview**: <br><br>
![Overlay](https://i.imgur.com/HvmI1Lb.jpg)
<br>
