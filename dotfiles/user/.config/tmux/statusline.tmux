# Status bar

set -g status-left-length  32
set -g status-right-length 150
set -g status-interval     5

set-window-option -g window-status-format ' #I #W'

set -g window-status-format         '#[fg=white,nobold] #I#[fg=colour231,nobold] #W#F #[fg=colour31]'
set -g window-status-current-format '#[fg=#DC9656] #I#[fg=#B21363,bold] #W #[fg=colour31,bold]'

# Status bar color
# set -g status-bg '#98C379'
# set -g status-fg '#1B1918'
set -g status-right '#{prefix_highlight} | %a %Y-%m-%d %H:%M'
set -g status-style             fg='#98C379',bg='#1B1918'
set -g window-status-last-style fg=colour31
