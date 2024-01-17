# sooslaca/owi2plex

Dockerfile to run owi2plex as cron

Example use:
```
docker run --name owi2plex --rm -it -v$(pwd):/out -v /etc/localtime:/etc/localtime:ro -e HOST=192.168.0.1 -e BOUQUET="My perfect list" -e OUT=/out/epg.xml sooslaca/owi2plex
```

Code source:
owi2plex - xmltv epg grabber for enigma receivers using open web, thanks to @cvarelaruiz \
github: https://github.com/cvarelaruiz/owi2plex
