# light theme
TRAPUSR1() {
  # color numbers
  printf '\x1b]4;0;#43474e'
  printf '\x1b]4;1;#91033d'
  printf '\x1b]4;2;#557545'
  printf '\x1b]4;3;#916b01'
  printf '\x1b]4;4;#45719e'
  printf '\x1b]4;5;#756599'
  printf '\x1b]4;6;#1b7793'
  printf '\x1b]4;7;#edf1fa'
  printf '\x1b]4;8;#2d3138'
  printf '\x1b]4;9;#9a4318'
  printf '\x1b]4;10;#9a9ea7'
  printf '\x1b]4;11;#c8ccd5'
  printf '\x1b]4;12;#608bb9'
  printf '\x1b]4;13;#945b7f'
  printf '\x1b]4;14;#295984'
  printf '\x1b]4;15;#dfe3ec'

  printf '\x1b]10;#43474e' # foreground
  printf '\x1b]11;#edf1fa' # background
  printf '\x1b]12;#43474e' # cursor
  printf '\x1b]17;#43474e' # selection background
  printf '\x1b]19;#edf1fa' # selection foreground
}

# dark theme
TRAPUSR2() {
  # color numbers
  printf '\x1b]4;0;#29313f'
  printf '\x1b]4;1;#e2768d'
  printf '\x1b]4;2;#a4c193'
  printf '\x1b]4;3;#f9d082'
  printf '\x1b]4;4;#99bde7'
  printf '\x1b]4;5;#c1b2e2'
  printf '\x1b]4;6;#81c3dd'
  printf '\x1b]4;7;#c7cfe1'
  printf '\x1b]4;8;#343c4a'
  printf '\x1b]4;9;#ee9b73'
  printf '\x1b]4;10;#464e5d'
  printf '\x1b]4;11;#687080'
  printf '\x1b]4;12;#b0d3ff'
  printf '\x1b]4;13;#dfa9ca'
  printf '\x1b]4;14;#799cc6'
  printf '\x1b]4;15;#e3ecfe'

  printf '\x1b]10;#c7cfe1' # foreground
  printf '\x1b]11;#29313f' # background
  printf '\x1b]12;#c7cfe1' # cursor
  printf '\x1b]17;#c7cfe1' # selection background
  printf '\x1b]19;#29313f' # selection foreground
}
