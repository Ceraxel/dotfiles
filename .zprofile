#
# ~/.bash_profile

export PATH="$HOME/.local/bin:$PATH"

# startx on login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc

