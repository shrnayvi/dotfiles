# Dotfiles

Find the README files in the corresponding folders if exist.


## zsh

### Dependencies
- fzf

Installation: https://github.com/junegunn/fzf#installation

Fuzzy completion 

Guide: https://github.com/junegunn/fzf#fuzzy-completion-for-bash-and-zsh

For fzf keybindings:
1. locate fzf key bindings: whereis fzf
2. Copy .fzf.zsh to your user home

### Merge zsh_history

```
$ builtin fc -R -I {history_file}

# write the loaded history to HISTFILE
$ builtin fc -W $HISTFILE

```

