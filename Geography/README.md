*Alternate Geography Collections*

Adding these two YMLs will create collections for a seven continent configuration (as opposed to the six UN regions used by the default continent.yml) and a version of the countries.yml which groups countries with low output that are culturally similar - such as 'Balkans', 'Nordic', 'Middle East' and 'Pacific Island'.

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
     
```
*Continents Collection Overview**: <br>
![Movies](https://i.imgur.com/WdZSatA.png)
<br>

**Regions Collection Preview**: <br>
![TV Shows](https://i.imgur.com/IhRoyCk.png)
<br>
