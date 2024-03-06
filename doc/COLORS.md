# Color scheme

See base colors for [dark](../config/colors/base_dark)
and [light](../config/colors/base_light) schemes
and also [aliases](../config/colors/aliases) common to both.

For the base colors, only the BASE, HEX, 16, ANSI NAME and RGB
columns are used during the substitution process. The other
fields are only extra information.

Colors were chosen initially from HCL values
(in GIMP which is using D50 reference point)
and then translated to the closest value in sRGB space.

Colors features to make the environment comfortable to the eyes:
- low intensity
- high contrast against background colors

Colors usage:
- cool foreground colors
- warm colors are reserved only for alerts

The 8 first colors (in the 16 colors numbering) follow the original
ANSI meaning (color 2 is meant to have a green tone for example).  
This allows tools whose colors cannot be configured or have not been
configured yet, to have a meaningful display as was intended initially.  
This is mainly useful for their error messages, which are often displayed in
red by default, not to suddenly be displayed white and get unnoticed.

The 8 last colors follow the ANSI meaning as best as possible
given the remaining colors available in the scheme.

Colors outside the first 16 ones are not part of the theme of many older tools
which are limited to 16. As such they don't have any number value or ANSI name.

*Warning*: Do not forget to update the "theme" script when updating the
           colors in dark and light themes

## Placeholders structure

The placeholders follow the structure "{color/ID/FORMAT}" where ID is used to
identify the color and FORMAT defines the output format.

ID is a value from:
- base index ("base00", "base0A",...)
- alias ("warning", "selected_item",...)
- ANSI name ("green", "brblue",...)

FORMAT is one of:
- "name" (ANSI name)
- "hex" (hexadecimal value)
- "fg" (ANSI foreground code)
- "bg" (ANSI background code)
- "number" (ANSI 16 colors number)
- "rgb" (red green blue)
- "rgbc" (red,green,blue)

"{color/theme}" is also used to output the current theme name.
