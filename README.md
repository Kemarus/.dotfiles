# dotfiles

## Introduction
My configuration files are organized by application. I use [GNU Stow](1) to symlink the files and [Arch Linux](2).  
<strong>Warning</strong>: I use the keyboard layout `fr-bepo`. You may need to modify these files in order to use them with another layout.

## Installation

- Clone this repository to your home directory.
- `stow $PACKAGE_NAME` to symlink package to your home directory.
- \*: `stow $PACKAGE_NAME -t /etc` to symlink package to `/etc`.

## Description


### dunst
- `.config/dunst/dunstrc`: config file for dunst (a notification daemon).

### ect*
- `vconsole.conf`: defines the keyboard layout in the console to `fr-bepo`.

### gtk2
- `.gtkrc-2.0`: sets the theme and font for GTK+ 2 applications. Contains a fix for gVim (dark solarized theme).

### gtk3
- `.config/gtk-3.0/gtk.css`: removes the window shadow (for i3).
- `.config/gtk-3.0/settings.ini`: sets the theme and font for GTK+ 3 applications.

### ideavim
- `.ideavimrc`: config file for IdeaVim (PyCharm, WebStorm). Reads ~/.vimrc and add some specific remaps.

### i3
- `.i3blocks.conf`: config file for i3blocks (an i3 status line).
- `.i3/config`: config file for i3. 
- `.i3/scripts/`: various scripts for i3.

### lightdm**
- Files must be copied to `/etc/lightdm/`. Symbolic link not supported.
- `lightdm/lightdm-gtk-greeter.conf`: config file for LightDM (GTK+ greeter).

### livestreamer
- `.config/livestreamer/config`: config file for livestreamer.
- `.config/livestreamer/config.dailymotion`: config file for Dailymotion.com website.
- `.config/livestreamer/config.twitch`: config file for Twitch.tv website.

### mplayer
- `.mplayer/config`: config file for mplayer.

### pacman*
- `pacman.conf`: config file for pacman.

### pentadactyl
- `.pentadactylrc`: config file for Pentadactyl.
- `.pentadactylrc.bepo`: remaping for `fr-bepo` layout.

### pynote
- `.noterc`: config file for pynote.

### ranger
- `.config/ranger/commands.py`: contains ranger's commands. 
- `.config/ranger/rc.conf`: defines keybinding and settings.
- `.config/ranger/rifle.conf`: ranger's settings for executing/opening files.
- `.config/ranger/scope.sh`: file previews settings.

### vim
- `.vimrc`: config file for vim.
- `.vimrc.bepo`: remaping for `fr-bepo` layout.

### virtualbox*
- `modules-load.d/virtualbox.conf`: config file for loading Virtualbox kernel modules at boot time

### Xorg
- `.xinitrc`: used to execute programs when starting X server. I don't use it for now (I use a display manager, LightDM).
- `.Xresources`: defines settings for urxvt.

### X11*
- `X11/xorg.conf.d/00-keyboard.conf`: keyboard config file for Xorg. Changes layout to `fr-bepo`, remaps caps lock to backspace and modifies keyboard rate.
- `X11/xorg.conf.d/50-mouse-acceleration.conf`: config file for the mouse. Deactivates mouse acceleration.

### zsh
- `.zshrc`: base config file for (oh-my-)zsh.
- `.zshrc-custom`: custom config file with functions and aliases.

[1]: https://www.gnu.org/software/stow/
[2]: https://www.archlinux.org/
