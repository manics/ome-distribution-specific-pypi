---
title: OME Distribution specific custom wheels
layout: default
---

These repositories contain PyPI wheels that are specific to a Linux distribution.
They replace existing PyPI packages, so can only be used as a standalone (`--index-url`) to install single packages.

You cannot combine this repository with the default PyPI index in the same `pip install` command.
See [https://github.com/pypa/pip/issues/3454](https://github.com/pypa/pip/issues/3454).

{% for repo in site.data.repos.distributions %}
- [{{ repo.name }}]({{ repo.name }})
{% endfor %}


## Example usage: Ubuntu 18.04

```sh
PYPI_INDEX=https://www.manicstreetpreacher.co.uk/ome-distribution-specific-pypi/ubuntu-18.04/

apt-get update && apt-get install -y python3 python3-pip
python3 -mpip install --index-url $PYPI_INDEX zeroc-ice

python3 -c 'import Ice; print(Ice.stringVersion())'
```
