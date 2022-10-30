#
# ~/.bash_profile

export PATH="$HOME/.local/bin:$PATH"
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"
export QT_STYLE_OVERRIDE="gtk2"
export QT_QPA_PLATFORMTHEME="gtk2"
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit
wmname LG3D

# startx on login
#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  #exec startx
#fi

[[ -f ~/.bashrc ]] && . ~/.bashrc



# Added by Toolbox App
export PATH="$PATH:/home/adrian/.local/share/JetBrains/Toolbox/scripts"

