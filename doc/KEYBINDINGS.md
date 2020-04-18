# Key bindings scheme

See [configuration](../config/keys)

Some features of the key bindings:
- all default bindings are removed to prevent mistakes. Only the relevant
  custom ones are left configured.
- consistency in being as much vim-like as possible
- difficult bindings requiring several simultaneous or consecutive key presses
  are used only for risky or rare actions
- the more often the action is needed, the easier the binding to type

The general organization is:
- sway uses the "Super" key as mod
- alacritty uses "Ctrl+Shift" as mod
- tmux uses "Ctrl+Space" as prefix
- vim uses "Space" as leader

The local organization is:
- use lowercase keys for sway workspace and tmux windows
- use uppercase keys for sway windows and tmux panes

*Warning*  
The bindings are currently focused only on a single output usage.

## Placeholders structure

The placeholders have the following structures:
- "{key/ALIAS}" where ALIAS is used to identify the key binding
- "{key/ALIAS/FORMAT}" where FORMAT defines the output format
- "{key/ALIAS/KEY}" where KEY is not a FORMAT
- "{key/KEY}" where KEY is not an ALIAS.

When KEY is present, the placeholder gets directly substituted by this
hardcoded value.

FORMAT is one of:
- "low" (lowercase)
- "upp" (uppercase)
