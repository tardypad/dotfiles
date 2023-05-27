# define common paths
export XDG_BOOKS_DIR="${HOME}/Books"
export XDG_DESKTOP_DIR="${HOME}/Desktop"
export XDG_DOCUMENTS_DIR="${HOME}/Documents"
export XDG_DOWNLOAD_DIR="${HOME}/Downloads"
export XDG_MAIL_DIR="${HOME}/Mail"
export XDG_NOTES_DIR="${HOME}/Notes"
export XDG_PROJECTS_DIR="${HOME}/Projects"
export XDG_TODO_DIR="${HOME}/Todo"
export XDG_VIDEOS_DIR="${HOME}/Videos"

# defaults but less needs to have it set to use it..
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"

# Make vim the default editor everywhere
export EDITOR=vim

# define replacement for redirections with no command
export NULLCMD=:
export READNULLCMD=less

# use less as pager
export PAGER=less

# update gpg tty for pinentry use
export GPG_TTY="$( tty )"

# change grep output colors
GREP_COLORS='ms=1;{color/search_match/fg}'
GREP_COLORS="${GREP_COLORS}:mc=1;{color/search_match/fg}"
GREP_COLORS="${GREP_COLORS}:sl="
GREP_COLORS="${GREP_COLORS}:cx="
GREP_COLORS="${GREP_COLORS}:fn={color/base09/fg}"
GREP_COLORS="${GREP_COLORS}:ln={color/base0A/fg}"
GREP_COLORS="${GREP_COLORS}:bn={color/base0A/fg}"
GREP_COLORS="${GREP_COLORS}:se={color/base08/fg}"
export GREP_COLORS

# change jq output colors
JQ_COLORS='0;{color/base0C/fg}'
JQ_COLORS="${JQ_COLORS}:0;{color/base0B/fg}"
JQ_COLORS="${JQ_COLORS}:0;{color/base0B/fg}"
JQ_COLORS="${JQ_COLORS}:0;{color/base0B/fg}"
JQ_COLORS="${JQ_COLORS}:0;{color/base0B/fg}"
JQ_COLORS="${JQ_COLORS}:0;{color/base0C/fg}"
JQ_COLORS="${JQ_COLORS}:0;{color/base0C/fg}"
export JQ_COLORS

# define ripgrep config path
export RIPGREP_CONFIG_PATH='{dir/config}/ripgrep/config'

# decrease key timeout to 100ms
export KEYTIMEOUT=10

# only alphanumeric characters and _ are considered part of a word
# no other character is added
# (not used by vi-style movement bindings but define it just in case anyway)
export WORDCHARS='_'

# fzf default find command
export FZF_DEFAULT_COMMAND='rg --files'

# remove color overwritten in tmux-xpanes
export TMUX_XPANES_PANE_BORDER_FORMAT=' #{pane_title} '
export TMUX_XPANES_PANE_DEAD_MESSAGE='\nPane is dead: Press [Enter] to exit...'

# update SWAYSOCK variable on reload
eval $( tmux show-environment -s SWAYSOCK 2> /dev/null )

# tell ssh to use gpg agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$( gpgconf --list-dirs agent-ssh-socket )"
fi
