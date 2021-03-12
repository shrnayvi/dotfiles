set -g default-terminal "xterm-256color"
set-option -g status-position top
set -g mouse on #Enable mouse mode

bind -n M-h select-pane -L
bind -n M-l select-pane -R
bind -n M-j select-pane -U
bind -n M-k select-pane -D

# Disable pane switching with ESC
set -s escape-time 0

set -g xterm-keys on # pass through xterm keys
bind y run-shell "tmux show-buffer | xclip -sel clip -i" \; display-message "Copied tmux buffer to system clipboard"
set -g status-style bg="blue"

# reload config file 
bind r source-file ~/.tmux.conf

