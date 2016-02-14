# dotfiles

## Introduction
My configuration files are organized by application. I use [GNU Stow](1) to symlink the files.  
<strong>Warning</strong>: I use the keyboard layout `fr-bepo`. You may need to modify these files in order to use them with another layout.

## Installation

- Clone this repository to your home directory.
- `stow $PACKAGE_NAME` to symlink package to your home directory.
- \*: `stow $PACKAGE_NAME -t /etc` to symlink package to `/etc`.

## Description


### gtk2
- `.gtkrc-2.0`: sets the theme and font for GTK+ 2 applications. Contains a fix for gVim (dark solarized theme).

### ideavim
- `.ideavimrc`: config file for IdeaVim (PyCharm, WebStorm). Reads ~/.vimrc and add some specific remaps.

### pentadactyl
- `.pentadactylrc`: config file for Pentadactyl.
- `.pentadactylrc.bepo`: remaping for `fr-bepo` layout.

### ranger
- `.config/ranger/commands.py`: contains ranger's commands. 
- `.config/ranger/rc.conf`: defines keybinding and settings.
- `.config/ranger/rifle.conf`: ranger's settings for executing/opening files.
- `.config/ranger/scope.sh`: file previews settings.

### vim
- `.vimrc`: config file for vim.
- `.vimrc.bepo`: remaping for `fr-bepo` layout.

### Xorg
- `.xinitrc`: used to execute programs when starting X server. I don't use it for now (I use a display manager, LightDM).
- `.Xresources`: defines settings for urxvt.

### zsh
- `.zshrc`: base config file for (oh-my-)zsh.
- `.zshrc-custom`: custom config file with functions and aliases.

[1]: https://www.gnu.org/software/stow/
