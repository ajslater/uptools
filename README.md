pipup
=====

A simple shell script for updating your pip installed python packages.
pipup auto-detects your pip version and does the Right Thing.

Because [`pip-review -al` seems to parse version numbers in a funny way](https://github.com/nvie/pip-tools/issues/44) leading to unexpected downgrades.

Built to use pip >= 8.0.0
