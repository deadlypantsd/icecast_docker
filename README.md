# Icecast Server
#### _Icecast with Docker!_
### About
This container provides Icecast. 

### Why?
##### Home Assistant.
I needed a way to connect multiple `media_player` entities to a stream source that wouldnt have different sync times. Playing from the same online source would be 1/2 a second _or more_ before/after on one `media_player` versus another one. Sounded. Like. Crap. So, this was the easy button. 

### Docker
##### Build it!
Build the image with the following command:
```
# docker build https://github.com/deadlypantsd/icecast_docker/Dockerfile -t <imagename>
```
`<imagename>` can be anything... but I would suggest 'icecast_server'.
##### Run it!
Create the container. I find the commandline to be much easier.

We need to set the container`--privileged` for running init scripts (the icecast service)
appending /usr/bin/init will allow for init scripts

```
# docker run -ti -d --privileged --name Icecast-Server --rm -p 8080:8080 icecast_server /usr/bin/init
```

##### Done!
