export PATH=$HOME/bin:/usr/local/bin:/usr/local/bin:/usr/local/sbin:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
# ZSH_THEME="random"

plugins=(git colored-man-pages brew macos zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.cloud_foundry.alias

#-------------------------
# theme: robbyrussell 
#-------------------------
local LC_ALL=""
local LC_CTYPE="en_US.UTF-8"
local PL_BRANCH_CHAR=$'\ue0a0'  # 
ZSH_THEME_GIT_PROMPT_PREFIX="%F{8}$PL_BRANCH_CHAR "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{8} ✔︎"

precmd() { print "" }
PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info) 
%F{8}❯ '