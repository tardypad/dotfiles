# overridde default bindings
set -g @tpm-install 'M-i'
set -g @tpm-update 'M-u'
set -g @tpm-clean 'M-c'
set -g @shell_mode 'vi'

# define plugins
set -g @plugin 'tmux-plugins/tpm'
if -F "$DISPLAY" "set -g @plugin 'tmux-plugins/tmux-yank'"
if -F "$DISPLAY" "set -g @plugin 'tmux-plugins/tmux-open'"
