# uptools

Scripts for updating packages for homebrew, python, node, ruby & perl.
pipup and perlup are cross platform. The others are macOS & homebrew specific.

# gemup
updates ruby gem updater and gems

# perlup
updates perl packages with cpanminus and cpan-outdated

## brewup
update, upgrade and cleanup homebrew packages.

## upall
Update homebrew, python, npm, ruby and perl at once.
Depends on brewup, pip-review, npm, gem and perlup

## install
Install homebrew versions of python, npm, ruby and perl as well as tools for updating python and perl. Copy or symlink the updater scripts to /usr/local/bin/
Creates the script pip-review2 as a python2 version of pip-review
Optionally installs symlinks to this cloned directory with -l parameter

```sh
$ ./install -l
$ upall
```
