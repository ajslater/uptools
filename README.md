pipup
=====

A simple shell script for updating your pip installed python packages.

pipup parses `pip list --outdated --local` and pipes it into `pip install --upgrade`.

Created because [`pip-review -al` seems to parse version numbers in a funny way](https://github.com/nvie/pip-tools/issues/44) leading to unexpected downgrades.

Built to use pip >= 8.0.0

Installation
------------
A simple installer script is provided to copy the script to `/usr/local/bin/`

```bash
./install
```
