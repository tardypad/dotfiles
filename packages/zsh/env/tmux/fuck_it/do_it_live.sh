socket="$1"

image_path="${XDG_CONFIG_HOME:-$HOME/.config}/tmux/images/doitlive"
session_name='fuck_it do_it_live'
window_name="What could possibly go wrong?"

# better do things live on a clean plate
if tmux -L "${socket}" has-session -t "${session_name}" &> /dev/null; then
  tmux -L "${socket}" kill-session -t "${session_name}"
fi

# new FIWDIL session
tmux -L "${socket}" \
  new-session -d \
  -s "${session_name}" \
  -n "${window_name}"

# define left margin for centered image on left pane
window_width=$( tmux -L "${socket}" display -p '#{window_width}' )
image_width=$( wc --max-line-length < "${image_path}" )
margin_left_width=$(( ( (window_width / 2) - image_width ) / 2 ))
margin_left=$( printf '%*s' ${margin_left_width} )

# define top margin for centered image on left pane
window_height=$( tmux -L "${socket}" display -p '#{window_height}' )
image_height=$( wc --lines < "${image_path}" )
margin_top_height=$(( ( window_height - image_height ) / 2 ))
margin_top=$( printf '%*s' ${margin_top_height} | sed 's/ / \n/g' )

# command to display Bill centered until q key is pressed
display_command="cat <( echo \"${margin_top}\" ) ${image_path} \
  | sed 's/^/${margin_left}/' \
  && read -s -d q"

# image on the left and work on the right
tmux -L "${socket}" \
  split-window -h -b \
  -t "${session_name}:${window_name}.1" \
  "${display_command}"

tmux -L "${socket}" \
  select-pane \
  -t "${session_name}:${window_name}.2"
