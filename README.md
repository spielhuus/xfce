## This repository holds a docker recipe for the xfce4 server.


[![GitHub version](https://badge.fury.io/gh/spielhuus%2Fdocker-xfce.svg)](https://hub.docker.com/r/spielhuus/xfce)

[Docker](https://docker.io/) recipe for [xfce4](https://xfce.org) project

### Create an image 

```
docker pull spielhuus/xfce
docker run --name xfce -p 2222:22 -itd \
           -e USER={USERNAME} -e PASSWORD={PASS} \
           -v /srv/home:/home/{USER} \
           spielhuus/xfce
```

### Configure the client

Download the x2go client for your OS from:
http://wiki.x2go.org/doku.php/doc:installation:x2goclient

Connect to your server with docker hosts's IP , port : 2222 , username : {USERNAME} ,{PASS} : ( look at docker logs for container)

Select the session type as : xfce4

### Credits:

* https://docker.io
* https://xfce.org

### License 

[Boost Software License](http://www.boost.org/LICENSE_1_0.txt) - Version 1.0 - August 17th, 2003

