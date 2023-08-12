# Alternative Geography Collections (plus doublebonus Audio Language Overlay)

Adding these two YMLs will create collections for a seven continent configuration (as opposed to the six UN regions used by the default continent.yml) and a version of the countries.yml which groups countries with low output that are culturally similar - such as 'Balkans', 'Nordic', 'Middle East' and 'Pacific Island'.

The entry overlay file adds a country flag defined by the audio language of the entry to the top right corner. So Mayan gets a Mexican flag, and English gets an English flag for instance. This is inexact, as languages are not countries. Spanish is great for films from Spain; but a Portuguese flag on a Brazilean film could be confusing. Furthermore, many films have an unknown or multiple audio languages - this needs to be fixed at the file levelv however with a tool such as mkvtoolnix.

```yaml
libraries:
  Movies:
    metadata_path:
    - git: Geography/Movies/continents.yml
      template_variables:
        style: color  # defaults to white
    - git: Geography/Movies/regions.yml
      template_variables:
        style: color  # defaults to white

  TV Shows:
    - git: Geography/TV/continents.yml
      template_variables:
        style: color  # defaults to white
    - git: Geography/TV/regions.yml
      template_variables:
        style: color  # defaults to white

  overlay_path:
    - git: Geography/overlays.yml
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
