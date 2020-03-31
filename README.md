[![Build Status](https://travis-ci.org/asteny/promxy-deb.svg?branch=master)](https://travis-ci.org/asteny/promxy-deb)[![Download](https://api.bintray.com/packages/asten/prometheus/promxy/images/download.svg)](https://bintray.com/asten/prometheus/promxy/_latestVersion)


Promxy deb
==========

Deb package with [Promxy](https://github.com/jacksontj/promxy) for Ubuntu (16.04 - 18.04)

Installation
------------
```bash
apt-get update
apt-get install gnupg2 apt-transport-https ca-certificates -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
echo "deb https://dl.bintray.com/asten/prometheus xenial main" | tee -a /etc/apt/sources.list.d/prometheus.list
apt-get update
apt-get install promxy -y

```

[All package versions in Bintray repo](https://bintray.com/asten/prometheus/promxy)
-------------------------------------------------------------------------------
