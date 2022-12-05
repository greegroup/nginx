


# nginx with healthcheck

## build


```

podman build -t  docker.io/library/nginx:alpine-with-healthcheck .

```


## run


```

podman run \
--name ng-ts-hc \
--publish 8080:80 \
--health-cmd "curl --silent --fail localhost:80 || exit 1" \
-d docker.io/library/nginx:alpine-with-healthcheck

```

## check


```

$ podman ps
CONTAINER ID  IMAGE                                                COMMAND               CREATED         STATUS                       PORTS                 NAMES
18e507288099  docker.io/library/nginx:alpine-with-healthcheck      nginx -g daemon o...  34 minutes ago  Up 34 minutes ago (healthy)  0.0.0.0:8080->80/tcp  ng-ts-hc

```

