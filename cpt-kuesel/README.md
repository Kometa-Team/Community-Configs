# cpt-kuesels PMM files
## Basics
I run PMM with docker-compose:
```yaml
  pmm_scheduled:
    image: meisnate12/plex-meta-manager:latest
    container_name: pmm_scheduled
    volumes:
      - /docker/appdata/plex-meta-manager/config:/config:rw
      - /docker/appdata/plex-meta-manager/assets:/assets:rw
      - /docker/appdata/plex-meta-manager/metadata:/metadata:rw
      - /docker/appdata/plex-meta-manager/overlays:/overlays:rw
    environment:
      PMM_TIME: "01:15,07:15,13:15,19:15"
    restart: on-failure
```

## MAINTENANCE Notice
I have archived my old config and will be deleting it once I am ready with my new config I am developing for v1.17 and onward.
This will still take some time.

The new files shared are a Work-in-Progress and might not work or have unintended side effects.

Use at your own risk.

## Questions?
You can always shoot me a question in the PMM Discord found on the main GitHub in the support section:
https://github.com/meisnate12/Plex-Meta-Manager/tree/master#support