#!/usr/bin/env zsh

export zle-line-init() {
emulate -L zsh

[[ $CONTEXT == start ]] || return 0

while true; do
    zle .recursive-edit
    local -i ret=$?
    [[ $ret == 0 && $KEYS == $'\4' ]] || break
    [[ -o ignore_eof ]] || exit 0
done

local saved_prompt=$PROMPT
local saved_rprompt=$RPROMPT
PROMPT='%F{120}❱ %f'
RPROMPT=''
zle .reset-prompt
PROMPT=$saved_prompt
RPROMPT=$saved_rprompt

if (( ret )); then
    zle .send-break
else
    zle .accept-line
fi
return ret
}


