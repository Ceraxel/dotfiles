# Oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
# DISABLE_AUTO_TITLE="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh


# Prompt
# source $HOME/.local/scripts/prompt.zsh
source /home/adrian/.local/scripts/transient-prompt.zsh

# Alias
alias tms="tmux-sessionizer"
alias prj=". project"
alias lg="lazygit"
alias bks=". books"
alias cfg="cd ~/dotfiles/ && nvim ."
alias gco="git switch \$(git branch -a | fzf)"
alias gcb="git-create-branch"
alias vim="nvim"
alias ta="tmux-attach"
alias tta="tmux-dir add"
alias ttr="tmux-dir remove"
alias clangf="clang-format -style='{BasedOnStyle: LLVM, IndentWidth: 4}' -dump-config > .clang-format"

# FZF
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
export FZF_DEFAULT_OPTS='--height 100% --layout=reverse-list --border double'
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

# Transient Prompt
zle -N zle-line-init

# Zoxide
# eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# eval "$(starship init zsh)"
