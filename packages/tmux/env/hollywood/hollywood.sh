socket="$1"

session_name="Restricted area"
window_name="Authorized personnel only"
max_time=900

# start from a clean plate
if tmux -L "${socket}" has-session -t "${session_name}" &> /dev/null; then
  tmux -L "${socket}" kill-session -t "${session_name}"
fi

tmux -L "${socket}" \
  new-session -d \
  -s "${session_name}" \
  -n "${window_name}"

tree_command="loop --time ${max_time} 'tree /; sleep 1'"
htop_command="htop --delay 5"
hexdump_command="loop --time ${max_time} 'tput setaf 2; hexdump -C /usr/bin/tmux'"
man_command="man hexdump"
ssh_command="loop --time ${max_time} 'tput setaf 1; rm -f /tmp/hollywood; ssh-keygen -N \"\" -f /tmp/hollywood; sleep 2'"

tmux -L "${socket}" \
  split-window -h -b \
  -t "${session_name}:${window_name}.1" \
  "${tree_command}"

tmux -L "${socket}" \
  split-window -v -b \
  -t "${session_name}:${window_name}.1" \
  "${htop_command}"

tmux -L "${socket}" \
  split-window -v -b \
  -t "${session_name}:${window_name}.1" \
  "${hexdump_command}"

tmux -L "${socket}" \
  split-window -h -l 50 \
  -t "${session_name}:${window_name}.1" \
  "${man_command}"

tmux -L "${socket}" \
  split-window -h -l 30 \
  -t "${session_name}:${window_name}.3" \
  "${ssh_command}"

tmux -L "${socket}" \
  select-pane \
  -t "${session_name}:${window_name}.6"

# need to enter password when launching it
tmux -L "${socket}" \
  set-hook -g client-attached lock-client
