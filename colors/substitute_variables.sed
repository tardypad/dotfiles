# intermediate conversion
# for aliases via base16 number
s|{{{base16/error/\([[:alpha:]]\+\)}}}|{{{base08/\1}}}|g
s|{{{base16/danger/\([[:alpha:]]\+\)}}}|{{{base08/\1}}}|g

# HEX
s|{{{base00/hex}}}|2e3440|g
s|{{{base01/hex}}}|3b4252|g
s|{{{base02/hex}}}|434c5e|g
s|{{{base03/hex}}}|4c566a|g
s|{{{base04/hex}}}|d8dee9|g
s|{{{base05/hex}}}|81a1c1|g
s|{{{base06/hex}}}|e5e9f0|g
s|{{{base07/hex}}}|eceff4|g
s|{{{base08/hex}}}|bf616a|g
s|{{{base09/hex}}}|d08770|g
s|{{{base0A/hex}}}|ebcb8b|g
s|{{{base0B/hex}}}|a3be8c|g
s|{{{base0C/hex}}}|8fbcbb|g
s|{{{base0D/hex}}}|88c0d0|g
s|{{{base0E/hex}}}|5e81ac|g
s|{{{base0F/hex}}}|b48ead|g

# fixed intermediate conversion
# for color name via 16 color number
s|{{{base00/name}}}|{{{number_{{{base00/number}}}/name}}}|g
s|{{{base01/name}}}|{{{number_{{{base01/number}}}/name}}}|g
s|{{{base02/name}}}|{{{number_{{{base02/number}}}/name}}}|g
s|{{{base03/name}}}|{{{number_{{{base03/number}}}/name}}}|g
s|{{{base04/name}}}|{{{number_{{{base04/number}}}/name}}}|g
s|{{{base05/name}}}|{{{number_{{{base05/number}}}/name}}}|g
s|{{{base06/name}}}|{{{number_{{{base06/number}}}/name}}}|g
s|{{{base07/name}}}|{{{number_{{{base07/number}}}/name}}}|g
s|{{{base08/name}}}|{{{number_{{{base08/number}}}/name}}}|g
s|{{{base09/name}}}|{{{number_{{{base09/number}}}/name}}}|g
s|{{{base0A/name}}}|{{{number_{{{base0A/number}}}/name}}}|g
s|{{{base0B/name}}}|{{{number_{{{base0B/number}}}/name}}}|g
s|{{{base0C/name}}}|{{{number_{{{base0C/number}}}/name}}}|g
s|{{{base0D/name}}}|{{{number_{{{base0D/number}}}/name}}}|g
s|{{{base0E/name}}}|{{{number_{{{base0E/number}}}/name}}}|g
s|{{{base0F/name}}}|{{{number_{{{base0F/number}}}/name}}}|g

# fixed intermediate conversion
# for foreground color code via 16 color number
s|{{{base00/fg}}}|{{{number_{{{base00/number}}}/fg}}}|g
s|{{{base01/fg}}}|{{{number_{{{base01/number}}}/fg}}}|g
s|{{{base02/fg}}}|{{{number_{{{base02/number}}}/fg}}}|g
s|{{{base03/fg}}}|{{{number_{{{base03/number}}}/fg}}}|g
s|{{{base04/fg}}}|{{{number_{{{base04/number}}}/fg}}}|g
s|{{{base05/fg}}}|{{{number_{{{base05/number}}}/fg}}}|g
s|{{{base06/fg}}}|{{{number_{{{base06/number}}}/fg}}}|g
s|{{{base07/fg}}}|{{{number_{{{base07/number}}}/fg}}}|g
s|{{{base08/fg}}}|{{{number_{{{base08/number}}}/fg}}}|g
s|{{{base09/fg}}}|{{{number_{{{base09/number}}}/fg}}}|g
s|{{{base0A/fg}}}|{{{number_{{{base0A/number}}}/fg}}}|g
s|{{{base0B/fg}}}|{{{number_{{{base0B/number}}}/fg}}}|g
s|{{{base0C/fg}}}|{{{number_{{{base0C/number}}}/fg}}}|g
s|{{{base0D/fg}}}|{{{number_{{{base0D/number}}}/fg}}}|g
s|{{{base0E/fg}}}|{{{number_{{{base0E/number}}}/fg}}}|g
s|{{{base0F/fg}}}|{{{number_{{{base0F/number}}}/fg}}}|g

# fixed intermediate conversion
# for background color code via 16 color number
s|{{{base00/bg}}}|{{{number_{{{base00/number}}}/bg}}}|g
s|{{{base01/bg}}}|{{{number_{{{base01/number}}}/bg}}}|g
s|{{{base02/bg}}}|{{{number_{{{base02/number}}}/bg}}}|g
s|{{{base03/bg}}}|{{{number_{{{base03/number}}}/bg}}}|g
s|{{{base04/bg}}}|{{{number_{{{base04/number}}}/bg}}}|g
s|{{{base05/bg}}}|{{{number_{{{base05/number}}}/bg}}}|g
s|{{{base06/bg}}}|{{{number_{{{base06/number}}}/bg}}}|g
s|{{{base07/bg}}}|{{{number_{{{base07/number}}}/bg}}}|g
s|{{{base08/bg}}}|{{{number_{{{base08/number}}}/bg}}}|g
s|{{{base09/bg}}}|{{{number_{{{base09/number}}}/bg}}}|g
s|{{{base0A/bg}}}|{{{number_{{{base0A/number}}}/bg}}}|g
s|{{{base0B/bg}}}|{{{number_{{{base0B/number}}}/bg}}}|g
s|{{{base0C/bg}}}|{{{number_{{{base0C/number}}}/bg}}}|g
s|{{{base0D/bg}}}|{{{number_{{{base0D/number}}}/bg}}}|g
s|{{{base0E/bg}}}|{{{number_{{{base0E/number}}}/bg}}}|g
s|{{{base0F/bg}}}|{{{number_{{{base0F/number}}}/bg}}}|g

# NUMBER
s|{{{base00/number}}}|8|g
s|{{{base01/number}}}|0|g
s|{{{base02/number}}}|10|g
s|{{{base03/number}}}|11|g
s|{{{base04/number}}}|12|g
s|{{{base05/number}}}|14|g
s|{{{base06/number}}}|7|g
s|{{{base07/number}}}|15|g
s|{{{base08/number}}}|1|g
s|{{{base09/number}}}|9|g
s|{{{base0A/number}}}|3|g
s|{{{base0B/number}}}|2|g
s|{{{base0C/number}}}|6|g
s|{{{base0D/number}}}|4|g
s|{{{base0E/number}}}|13|g
s|{{{base0F/number}}}|5|g

# fixed ANSI mapping
# from 16 color number to color name
s|{{{number_0/name}}}|black|g
s|{{{number_1/name}}}|red|g
s|{{{number_2/name}}}|green|g
s|{{{number_3/name}}}|yellow|g
s|{{{number_4/name}}}|blue|g
s|{{{number_5/name}}}|magenta|g
s|{{{number_6/name}}}|cyan|g
s|{{{number_7/name}}}|white|g
s|{{{number_8/name}}}|brblack|g
s|{{{number_9/name}}}|brred|g
s|{{{number_10/name}}}|brgreen|g
s|{{{number_11/name}}}|bryellow|g
s|{{{number_12/name}}}|brblue|g
s|{{{number_13/name}}}|brmagenta|g
s|{{{number_14/name}}}|brcyan|g
s|{{{number_15/name}}}|brwhite|g

# fixed ANSI mapping
# from 16 color number to foreground color code
s|{{{number_0/fg}}}|30|g
s|{{{number_1/fg}}}|31|g
s|{{{number_2/fg}}}|32|g
s|{{{number_3/fg}}}|33|g
s|{{{number_4/fg}}}|34|g
s|{{{number_5/fg}}}|35|g
s|{{{number_6/fg}}}|36|g
s|{{{number_7/fg}}}|37|g
s|{{{number_8/fg}}}|90|g
s|{{{number_9/fg}}}|91|g
s|{{{number_10/fg}}}|92|g
s|{{{number_11/fg}}}|93|g
s|{{{number_12/fg}}}|94|g
s|{{{number_13/fg}}}|95|g
s|{{{number_14/fg}}}|96|g
s|{{{number_15/fg}}}|97|g

# fixed ANSI mapping
# from 16 color number to background color code
s|{{{number_0/bg}}}|40|g
s|{{{number_1/bg}}}|41|g
s|{{{number_2/bg}}}|42|g
s|{{{number_3/bg}}}|43|g
s|{{{number_4/bg}}}|44|g
s|{{{number_5/bg}}}|45|g
s|{{{number_6/bg}}}|46|g
s|{{{number_7/bg}}}|47|g
s|{{{number_8/bg}}}|100|g
s|{{{number_9/bg}}}|101|g
s|{{{number_10/bg}}}|102|g
s|{{{number_11/bg}}}|103|g
s|{{{number_12/bg}}}|104|g
s|{{{number_13/bg}}}|105|g
s|{{{number_14/bg}}}|106|g
s|{{{number_15/bg}}}|107|g
