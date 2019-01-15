# intermediate conversion
# for aliases via code
s|{color/background/\([[:alpha:]]\+\)}|{color/base00/\1}|g
s|{color/foreground/\([[:alpha:]]\+\)}|{color/base04/\1}|g
s|{color/status_line_background/\([[:alpha:]]\+\)}|{color/base01/\1}|g
s|{color/status_line_foreground/\([[:alpha:]]\+\)}|{color/base05/\1}|g
s|{color/popup_background/\([[:alpha:]]\+\)}|{color/base02/\1}|g
s|{color/popup_foreground/\([[:alpha:]]\+\)}|{color/base04/\1}|g
s|{color/popup_group_background/\([[:alpha:]]\+\)}|{color/base01/\1}|g
s|{color/popup_group_foreground/\([[:alpha:]]\+\)}|{color/base06/\1}|g
s|{color/alert/\([[:alpha:]]\+\)}|{color/base0B/\1}|g
s|{color/error/\([[:alpha:]]\+\)}|{color/base0B/\1}|g
s|{color/warning/\([[:alpha:]]\+\)}|{color/base0C/\1}|g
s|{color/notice/\([[:alpha:]]\+\)}|{color/base0D/\1}|g
s|{color/info/\([[:alpha:]]\+\)}|{color/base08/\1}|g
s|{color/search_match/\([[:alpha:]]\+\)}|{color/base0F/\1}|g
s|{color/current_item/\([[:alpha:]]\+\)}|{color/base07/\1}|g
s|{color/selected_item/\([[:alpha:]]\+\)}|{color/base0F/\1}|g
s|{color/unread_item/\([[:alpha:]]\+\)}|{color/base0F/\1}|g
s|{color/delete/\([[:alpha:]]\+\)}|{color/base0C/\1}|g
s|{color/add/\([[:alpha:]]\+\)}|{color/base0E/\1}|g

# HEX
s|{color/base00/hex}|#base00_hex#|g
s|{color/base01/hex}|#base01_hex#|g
s|{color/base02/hex}|#base02_hex#|g
s|{color/base03/hex}|#base03_hex#|g
s|{color/base04/hex}|#base04_hex#|g
s|{color/base05/hex}|#base05_hex#|g
s|{color/base06/hex}|#base06_hex#|g
s|{color/base07/hex}|#base07_hex#|g
s|{color/base08/hex}|#base08_hex#|g
s|{color/base09/hex}|#base09_hex#|g
s|{color/base0A/hex}|#base0A_hex#|g
s|{color/base0B/hex}|#base0B_hex#|g
s|{color/base0C/hex}|#base0C_hex#|g
s|{color/base0D/hex}|#base0D_hex#|g
s|{color/base0E/hex}|#base0E_hex#|g
s|{color/base0F/hex}|#base0F_hex#|g

# fixed intermediate conversion
# for color name via 16 color number
s|{color/base0\([[:alnum:]]\)/name}|{color/number_{color/base0\1/number}/name}|g

# fixed intermediate conversion
# for foreground color code via 16 color number
s|{color/base0\([[:alnum:]]\)/fg}|{color/number_{color/base0\1/number}/fg}|g

# fixed intermediate conversion
# for background color code via 16 color number
s|{color/base0\([[:alnum:]]\)/bg}|{color/number_{color/base0\1/number}/bg}|g

# NUMBER
s|{color/base00/number}|#base00_number#|g
s|{color/base01/number}|#base01_number#|g
s|{color/base02/number}|#base02_number#|g
s|{color/base03/number}|#base03_number#|g
s|{color/base04/number}|#base04_number#|g
s|{color/base05/number}|#base05_number#|g
s|{color/base06/number}|#base06_number#|g
s|{color/base07/number}|#base07_number#|g
s|{color/base08/number}|#base08_number#|g
s|{color/base09/number}|#base09_number#|g
s|{color/base0A/number}|#base0A_number#|g
s|{color/base0B/number}|#base0B_number#|g
s|{color/base0C/number}|#base0C_number#|g
s|{color/base0D/number}|#base0D_number#|g
s|{color/base0E/number}|#base0E_number#|g
s|{color/base0F/number}|#base0F_number#|g

# fixed ANSI mapping
# from 16 color number to color name
s|{color/number_0/name}|black|g
s|{color/number_1/name}|red|g
s|{color/number_2/name}|green|g
s|{color/number_3/name}|yellow|g
s|{color/number_4/name}|blue|g
s|{color/number_5/name}|magenta|g
s|{color/number_6/name}|cyan|g
s|{color/number_7/name}|white|g
s|{color/number_8/name}|brblack|g
s|{color/number_9/name}|brred|g
s|{color/number_10/name}|brgreen|g
s|{color/number_11/name}|bryellow|g
s|{color/number_12/name}|brblue|g
s|{color/number_13/name}|brmagenta|g
s|{color/number_14/name}|brcyan|g
s|{color/number_15/name}|brwhite|g

# fixed ANSI mapping
# from 16 color number to foreground color code
s|{color/number_0/fg}|30|g
s|{color/number_1/fg}|31|g
s|{color/number_2/fg}|32|g
s|{color/number_3/fg}|33|g
s|{color/number_4/fg}|34|g
s|{color/number_5/fg}|35|g
s|{color/number_6/fg}|36|g
s|{color/number_7/fg}|37|g
s|{color/number_8/fg}|90|g
s|{color/number_9/fg}|91|g
s|{color/number_10/fg}|92|g
s|{color/number_11/fg}|93|g
s|{color/number_12/fg}|94|g
s|{color/number_13/fg}|95|g
s|{color/number_14/fg}|96|g
s|{color/number_15/fg}|97|g

# fixed ANSI mapping
# from 16 color number to background color code
s|{color/number_0/bg}|40|g
s|{color/number_1/bg}|41|g
s|{color/number_2/bg}|42|g
s|{color/number_3/bg}|43|g
s|{color/number_4/bg}|44|g
s|{color/number_5/bg}|45|g
s|{color/number_6/bg}|46|g
s|{color/number_7/bg}|47|g
s|{color/number_8/bg}|100|g
s|{color/number_9/bg}|101|g
s|{color/number_10/bg}|102|g
s|{color/number_11/bg}|103|g
s|{color/number_12/bg}|104|g
s|{color/number_13/bg}|105|g
s|{color/number_14/bg}|106|g
s|{color/number_15/bg}|107|g
