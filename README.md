# uptools
scripts for updating various scripting packages

## pipup

A simple shell script for updating your pip installed python packages.

pipup parses `pip list --outdated --local` and pipes it into `pip install --upgrade`.

Created because [`pip-review -al` seems to parse version numbers in a funny way](https://github.com/nvie/pip-tools/issues/44) leading to unexpected downgrades.

Built to use pip >= 8.0.0

## brewup
update, upgrade and cleanup homebrew packages.

## upall
Update homebrew, python, npm, ruby and perl at once.
Depends on brewup and pipup

## brew-scripts
Install homebrew versions of python, npm, ruby and perl as well as tools for updating perl.

## install
run brew-scripts and copy the updater scripts to /usr/local/bin/
