# uptools

Scripts for updating packages for homebrew, python, node, ruby & perl.
pipup and perlup are cross platform. The others are macOS & homebrew specific.

## pipup

Update your pip installed python packages.

pipup parses `pip list --outdated --local` and pipes it into `pip install --upgrade`. I created this because [`pip-review -al` seems to parse version numbers in a funny way](https://github.com/nvie/pip-tools/issues/44) leading to unexpected downgrades. pipup is built to parse output from pip >= 8.0.0

## perlup
updates perl packages with cpanminus and cpan-outdated

## brewup
update, upgrade and cleanup homebrew packages.

## upall
Update homebrew, python, npm, ruby and perl at once.
Depends on brewup, pipup, and perlup

## install
Install homebrew versions of python, npm, ruby and perl as well as tools for updating perl. Copy or symlink the updater scripts to /usr/local/bin/
Optionally installs symlinks to this cloned directory with -l parameter

```sh
$ ./install -l
$ upall
```
