# Color scheme

Using [Nord](https://arcticicestudio.github.io/nord/) palette
with own adaptation per package  
(not using individual "official" repositories config).

| BASE   | DESCRIPTION | HEX     | 16 | ANSI NAME | RGB         | HSB       | HSL       |
|--------|-------------|---------|----|-----------|-------------|-----------|-----------|
| base00 | dark 1      | #2e3440 |  8 | brblack   |  46  52  64 | 220 28 25 | 220 16 22 |
| base01 | dark 2      | #3b4252 |  0 | black     |  59  66  82 | 222 28 32 | 222 16 28 |
| base02 | dark 3      | #434c5e | 10 | brgreen   |  67  76  94 | 220 29 37 | 220 17 32 |
| base03 | dark 4      | #4c566a | 11 | bryellow  |  76  86 106 | 220 28 42 | 220 16 36 |
| base04 | light 1     | #d8dee9 | 12 | brblue    | 216 222 233 | 219  7 91 | 219 28 88 |
| base05 | light 2     | #e5e9f0 |  7 | white     | 229 233 240 | 218  5 94 | 218 27 92 |
| base06 | light 3     | #eceff4 | 15 | brwhite   | 236 239 244 | 218  3 96 | 218 27 94 |
| base07 | blue 1      | #8fbcbb |  6 | cyan      | 143 188 187 | 179 24 74 | 179 25 65 |
| base08 | blue 2      | #88c0d0 |  4 | blue      | 136 192 208 | 193 35 82 | 193 43 67 |
| base09 | blue 3      | #81a1c1 | 14 | brcyan    | 129 161 193 | 210 33 76 | 210 34 63 |
| base0A | blue 4      | #5e81ac | 13 | brmagenta |  94 129 172 | 213 45 67 | 213 32 52 |
| base0B | red         | #bf616a |  1 | red       | 191  97 106 | 354 49 75 | 354 42 56 |
| base0C | orange      | #d08770 |  9 | brred     | 208 135 112 |  14 46 82 |  14 51 63 |
| base0D | yellow      | #ebcb8b |  3 | yellow    | 235 203 139 |  40 41 92 |  40 71 73 |
| base0E | green       | #a3be8c |  2 | green     | 163 190 140 |  92 26 75 |  92 28 65 |
| base0F | violet      | #b48ead |  5 | magenta   | 180 142 173 | 311 21 71 | 311 20 63 |

The 8 first colors (in the 16 colors numbering) follow the original
ANSI meaning (color 2 is meant to have a green tone for example).  
This allows tools whose colors cannot be configured or have not been
configured yet, to have a meaningful display as was intended initially.  
This is mainly useful for their error messages, which are often displayed in
red by default, not to suddenly be displayed white and get unnoticed.  
Obviously this only works if the theme itself is not overall in the red tones.
