# uptools
Scripts for updating packages for homebrew, rust, python, bun, ruby, lua & perl, and for pruning the leaves every package manager collects.
All scripts are macOS & homebrew specific.

## brewup
Update, upgrade and cleanup homebrew packages.

## rustup
Update rust cargo

## pipup
Update python3 packages

## nodeup
Update bun's global node packages. Lists any installed with npm instead, which bun never sees.

## gemup
Updates rubygems and the gems installed on top of homebrew's ruby. The gems that ship with ruby are left to homebrew.

## gemdedup
Removes copies of the gems that ship with ruby that an old `gem update` installed beside them, plus leftovers of failed installs and extensions built for a previous macOS. Run by hand, `-n` only lists.

## luaup
Updates lua rocks. Rocks installed for a previous lua are installed for the current one first.

## perlup
Updates perl packages with cpanminus and cpan-outdated

## upall
Update homebrew, rust, python, bun, ruby, lua and perl at once.
Runs brewup, rustup, pipup, nodeup, gemup, luaup and perlup.

## Pruning leaves
The update scripts only ever add packages. Each package manager has a `*prune` script that lists its leaves, the installed packages nothing else depends on, and asks about each one: keep (the default), remove, skip, or show details. Kept names are remembered in `$XDG_CONFIG_HOME/uptools/<group>.keep` and never asked about or removed again; skipped ones are asked about next time. The chosen packages are removed, and the leaves that reveals are removed too when the package manager knows they were only ever installed as dependencies, or asked about otherwise.

Every pruner takes the same flags: `-n` lists the leaves and exits, `-p` reviews the kept names first (unprotect, remove, or drop entries that are no longer installed), `-a` asks about every revealed leaf, `-y` removes every revealed leaf without asking. Packages the update scripts themselves rely on are protected and shown as built-in.

## brewprune
Casks, then formulae. Uses `brew leaves`, `brew autoremove` for the dependencies a removal orphans, and `brew tab --installed-on-request` so that a kept dependency is never autoremoved.

## pipprune
Packages in `~/.venv`. Builds the dependency graph itself so that packages wanted by an installed extra count as needed, and uses pip's record of which packages were asked for to decide which revealed leaves go without asking.

## nodeprune
npm's global packages, then bun's if there are any.

## gemprune
Gems installed on top of homebrew's ruby. The gems that ship with ruby and rubygems-update are left alone.

## luaprune
Lua rocks, those of a previous lua included: they are listed as `name@X.Y` so the old tree can go once luaup has installed them for the current lua.

## perlprune
CPAN distributions installed with cpanminus, graphed from the metadata it writes. Upgraded copies of core modules are left alone.

## rustprune
Crates installed with `cargo install`.

## goprune
Binaries in `$GOBIN`.

## pruneall
Runs every pruner, language package managers first and homebrew last. `pruneall -p` then `upall` is the yearly audit.

## install
Install homebrew versions of rust, python, node, bun, ruby, lua and perl as well as tools for updating rust, python and perl. Copy or symlink the updater and pruner scripts to /usr/local/bin/
Optionally installs symlinks to this cloned directory with -l parameter

```sh
$ ./install -l
$ upall
```
