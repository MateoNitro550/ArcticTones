# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n] confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Aliases
alias cat='/usr/bin/bat'
alias catn='/usr/bin/cat'
alias catnl='/usr/bin/bat --paging=never --style=plain'
alias icat="kitten icat"
alias l='lsd --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias ll='lsd -lh --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'

# Bindkeys
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[F' end-of-line
bindkey '^[[H' beginning-of-line

# History
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS SHARE_HISTORY

# Plugins
source /usr/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh-sudo/sudo.plugin.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Theme
source /opt/powerlevel10k/powerlevel10k.zsh-theme

# Powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zsh-autocomplete
bindkey '\t' menu-complete "$terminfo[kcbt]" reverse-menu-complete
zstyle ':autocomplete:*' min-input 2
zstyle ':autocomplete:tab:*' widget-style menu-select

# zsh-history-substring-search
bindkey "^[OA" history-substring-search-up
bindkey "^[OB" history-substring-search-down 
