# OME Distribution specific custom wheels

See
- [index.md](index.md)
- https://www.manicstreetpreacher.co.uk/ome-distribution-specific-pypi/

This is a statically built PyPI repostory: https://www.python.org/dev/peps/pep-0503/

This repository uses a [custom Jekyll plugin](/_plugins) so cannot be built by GitHub pages.
You must build `./docs` and commit this repository whenever you make a change:
```
rm -rf docs/
./docker.sh
git add -A docs/
```
