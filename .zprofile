#
# ~/.bash_profile

export PATH="$HOME/.local/bin:$PATH"
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"
#export QT_STYLE_OVERRIDE="gtk2"
export QT_QPA_PLATFORMTHEME="gtk2"

# startx on login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc

