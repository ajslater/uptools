# uptools
Scripts for updating packages for homebrew, rust, python, bun, ruby, lua & perl.
All scripts are macOS & homebrew specific.

## brewup
Update, upgrade and cleanup homebrew packages.

## rustup
Update rust cargo

## pipup
Update python3 packages

## nodeup
Update bun's global node packages

## gemup
Updates ruby gem updater and gems

## luaup
Updates lua rocks

## perlup
Updates perl packages with cpanminus and cpan-outdated

## upall
Update homebrew, rust, python, bun, ruby, lua and perl at once.
Runs brewup, rustup, pipup, nodeup, gemup, luaup and perlup.

## install
Install homebrew versions of rust, python, node, bun, ruby, lua and perl as well as tools for updating rust, python and perl. Copy or symlink the updater scripts to /usr/local/bin/
Optionally installs symlinks to this cloned directory with -l parameter

```sh
$ ./install -l
$ upall
```
