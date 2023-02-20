# Clyde
A basic AUR helper written in less than 200 lines of bash code

## Why?
Most AUR helpers attempt to act like pacman in many ways, which some people don't really like (like myself). At the same time, many AUR helpers are also very complex, making editing them a nightmare.

Clyde attempts to fix this by acting as a simple bash script that can easily be extended but also act completely different from pacman to reinforce the fact that the AUR is a different set of repos.

## How to install
First install `community/jq` with pacman, that's Clyde's main dependency
```sh
sudo pacman -S jq
```
Then Just add the bash script to your path, it's that easy. 

Alternatively, you can use the [AUR package](https://aur.archlinux.org/packages/clyde-aur-git), `clyde-aur-git`, which handles dependencies

## How to use
* `install`/`ins` : Install a package
* `yeet`/`remove`/`rm`: Remove a package
* `upgrade`/`upg`: Upgrade either all AUR packages or just the specified one
* `help`: help

So simple, I know
