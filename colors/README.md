# Color scheme

Using [Nord](https://arcticicestudio.github.io/nord/) palette
with own adaptation per package  
(not using individual "official" repositories config).

See [base colors](definitions/base)
and [aliases](definitions/aliases) definitions.

For the base colors, only the first 3 columns are used during the
substitution process. The other fields are only extra information.

The 8 first colors (in the 16 colors numbering) follow the original
ANSI meaning (color 2 is meant to have a green tone for example).  
This allows tools whose colors cannot be configured or have not been
configured yet, to have a meaningful display as was intended initially.  
This is mainly useful for their error messages, which are often displayed in
red by default, not to suddenly be displayed white and get unnoticed.  
Obviously this only works if the theme itself is not overall in the red tones.
