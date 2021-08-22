# uptools
Scripts for updating packages for homebrew, python, node, ruby & perl.
pipup and perlup are cross platform. The others are macOS & homebrew specific.

## brewup
Update, upgrade and cleanup homebrew packages.

## rustup
Update rust cargo

## pipup
Update python3 packages

## nodeup
Update npm packages

## gemup
Updates ruby gem updater and gems

## luaup
Updates lua rocks

## perlup
Updates perl packages with cpanminus and cpan-outdated

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
