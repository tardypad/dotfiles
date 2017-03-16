#!/usr/bin/zsh

# mb: start blink        -> red foreground
# md: start bold         -> orange foreground
# me: end all attributes -> end all attributes
# so: start standout     -> black foreground on grey background
# se: end standout       -> end all attributes
# us: start underline    -> blue foreground
# ue: end underline      -> end all attributes

env \
  LESS_TERMCAP_mb=$(tput setaf 1) \
  LESS_TERMCAP_md=$(tput setaf 3) \
  LESS_TERMCAP_me=$(tput sgr0) \
  LESS_TERMCAP_so=$(tput setaf 0; tput setab 11) \
  LESS_TERMCAP_se=$(tput sgr0) \
  LESS_TERMCAP_us=$(tput setaf 4) \
  LESS_TERMCAP_ue=$(tput sgr0) \
  man "$@"
