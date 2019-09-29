# Color scheme

See base colors for [dark](../config/colors/base_dark)
and [light](../config/colors/base_light) schemes
and also [aliases](../config/colors/aliases) common to both.

For the base colors, only the first 4 columns are used during the
substitution process. The other fields are only extra information.

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
