# Czepiec Site

Petr's personal website.

## Installing

### Run from [Docker Hub][docker-hub]

Run the image from Docker Hub:

```shell
docker run -p 80:80 czetech/czepiec-site
```

### Install to Kubernetes using Helm

Setup Helm repository:

```shell
helm repo add czetech https://charts.cze.tech/
```

Install Helm chart:

```shell
helm install czepiec-site czetech/czepiec-site \
  --set ingress.enabled=true \
  --set ingress.hosts[0]=<ingress-host>
```

see the [chart] for more options.

## Source code

The source code is available at <https://github.com/czepiec/czepiec-site>.

[chart]: https://github.com/czepiec/czepiec-site/tree/main/chart
[docker-hub]: https://hub.docker.com/r/czetech/czepiec-site
