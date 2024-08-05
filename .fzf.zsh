# Setup fzf
# ---------
export PATH="${PATH:+${PATH}:}/usr/bin/fzf"

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/share/fzf/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/share/fzf/key-bindings.zsh"

bindkey -r '^T'
bindkey '^P' fzf-file-widget


