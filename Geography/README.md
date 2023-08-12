# Alternate Geography Collections and Audio Language Overlay

Adding these two YMLs will create collections for a seven continent configuration (as opposed to the six UN regions used by the default continent.yml) and a version of the countries.yml which groups countries with low output that are culturally similar - such as 'Balkans', 'Nordic', 'Middle East' and 'Pacific Island'.

The entry overlay file adds a country flag defined by the audio language of the entry. So Mayan gets a Mexican flag, and English gets an English flag for instance.

```yaml
libraries:
  Movies:
    metadata_path:
    - git: Geography/Movies/continents.yml
      template_variables:
        style:color  # default. Can change to white
          collection_section: "078"
    - git: Geography/Movies/regions.yml
      template_variables:
        style:color  # default. Can change to white
          collection_section: "079"
  TV Shows:
    metadata_path:
    - git: Geography/TV/continents.yml
      template_variables:
        style:color  # default. Can change to white
          collection_section: "078"
    - git: Geography/TV/regions.yml
      template_variables:
        style:color  # default. Can change to white
          collection_section: "079"
     
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
