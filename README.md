# docker-pisg

Docker container for pisg irc stats

# Usage

```
docker run --name=pisg \
  -v /data/pisg/cache:/cache \
  -v /data/pisg/config:/config \
  -v /data/pisg/logs/channel/:/logs/channel \
  -v /data/pisg/nginx:/nginx \
  rustybower/pisg
```

### Plugin version format

Docker Volumes
* `cache` - (optional) directory for pisg cache
* `config` - (required) configuration directory containing pisg.cfg
* `channel` - (required) directory containing IRC logs
* `nginx` - (required) directory to output nginx output
