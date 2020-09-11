# Nginx Proxy Pass

A simple container that proxy passes to an external source. Forked from https://github.com/mikesplain/nginx-proxy-pass-docker, which was lacking websocket proxy support. 

Simply run:

```
docker run -d -p 80:80 -e TARGET_SERVER=<proxy location> lvanwissen/nginx-proxy-pass
```

For example, want to proxy everything to google? WHY NOT?!

```
docker run -d -p 80:80 -e TARGET_SERVER=google.com lvanwissen/nginx-proxy-pass
```

Or maybe another server on your network:

```
docker run -d -p 80:80 -e TARGET_SERVER=192.168.8.15:8080 lvanwissen/nginx-proxy-pass
```

## Environment variables

### Required

* TARGET_SERVER

### Optional

* HOST_SERVER (default = $host)
* CONNECT_TIMEOUT (default = 150)
* SEND_TIMEOUT (default = 100)
* READ_TIMEOUT (default = 150)