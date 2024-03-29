# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(common-aliases git)


# User configuration

PATH=${PATH}:${HOME}/.local/bin  # Add user bin directory from pip

export HISTSIZE=50000
SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups  # Delete old recorded entry if new entry is a duplicate.
setopt hist_ignore_space  # Don't record an entry starting with a space.

export BROWSER="firefox"
export EDITOR=nvim
export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"

alias sagi="sudo apt install"
alias saupd="sudo apt update"
alias saupg="sudo apt upgrade"
alias sadupg="sudo apt dist-upgrade"
alias zshrcc="vim ~/.zshrc-custom && source ~/.zshrc-custom"
alias e="exa --long --binary"

alias karf="kubectl apply --record=true --filename"
alias kgj="kubectl get jobs"
alias kgjwide="kubectl get jobs --output wide"
alias kgnowide="kubectl get nodes --output wide"

pulseaudio_fix() {
    sudo sed -i 's/load-module module-udev-detect/load-module module-udev-detect tsched=0/' /etc/pulse/default.pa
    pulseaudio -k
    pulseaudio --start
}
pulseaudio_fix_undo() {
    sudo sed -i 's/load-module module-udev-detect tsched=0/load-module module-udev-detect/' /etc/pulse/default.pa
    pulseaudio -k
    pulseaudio --start
}


if [[ -f "$HOME/.zshrc-custom" ]]; then
    source ~/.zshrc-custom
fi
source $ZSH/oh-my-zsh.sh
if [[ -f "$HOME/.dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
    source ~/.dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Add current Kubernetes context in prompt if kube-ps1 plugin is enabled.
# It's not possible to simply change the PROMPT variable inside ~/.zshrc-custom.
# Something must happen when zsh syntax highlighting is sourced that overrides the prompt value.
if [[ "${plugins[@]}" =~ "kube-ps1" ]]; then
    PROMPT='$(kube_ps1)'$PROMPT
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
