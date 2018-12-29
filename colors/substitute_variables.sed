# intermediate conversion
# for aliases via code
s|{{{background/\([[:alpha:]]\+\)}}}|{{{base00/\1}}}|g
s|{{{foreground/\([[:alpha:]]\+\)}}}|{{{base04/\1}}}|g
s|{{{status_line_background/\([[:alpha:]]\+\)}}}|{{{base01/\1}}}|g
s|{{{status_line_foreground/\([[:alpha:]]\+\)}}}|{{{base06/\1}}}|g
s|{{{alert/\([[:alpha:]]\+\)}}}|{{{base08/\1}}}|g
s|{{{error/\([[:alpha:]]\+\)}}}|{{{base08/\1}}}|g
s|{{{warning/\([[:alpha:]]\+\)}}}|{{{base09/\1}}}|g
s|{{{notice/\([[:alpha:]]\+\)}}}|{{{base0A/\1}}}|g

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
s|{{{base0\([[:alnum:]]\)/name}}}|{{{number_{{{base0\1/number}}}/name}}}|g

# fixed intermediate conversion
# for foreground color code via 16 color number
s|{{{base0\([[:alnum:]]\)/fg}}}|{{{number_{{{base0\1/number}}}/fg}}}|g

# fixed intermediate conversion
# for background color code via 16 color number
s|{{{base0\([[:alnum:]]\)/bg}}}|{{{number_{{{base0\1/number}}}/bg}}}|g

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
