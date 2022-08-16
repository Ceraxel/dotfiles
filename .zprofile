#
# ~/.bash_profile

export PATH="$HOME/.local/bin:$PATH"
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"

# startx on login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc

