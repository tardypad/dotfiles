# order of plugins sourcing is important:
# - fzf-tab before autosuggestions
#   as mentioned in their doc
# - syntax highlighting at the end
#   because it needs all widgets to be already created
# - history substring search after syntax highlighting
#   as mentioned in their doc
#
# plugin variables need to be defined after sourcing
# because otherwise some get overwritten...

## fzf-tab

source /usr/share/zsh/plugins/fzf-tab-git/fzf-tab.zsh

## autosuggestions

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg={color/base03/number}


## syntax highlighting

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# define all highlighters
ZSH_HIGHLIGHT_HIGHLIGHTERS=(
  main
  brackets
  pattern
  http_env
)

# highlight potentially dangerous commands that requires extra attention
ZSH_HIGHLIGHT_PATTERNS=('rm -(rf|fr) *' 'bg={color/alert/number},fg={color/base00/number},bold')
ZSH_HIGHLIGHT_PATTERNS+=('rm * -(rf|fr)' 'bg={color/alert/number},fg={color/base00/number},bold')

# brackets matching colors
ZSH_HIGHLIGHT_STYLES[bracket-error]='fg={color/error/number},bold'
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='fg={color/base05/number},bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg={color/base08/number}'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg={color/base09/number}'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg={color/base0A/number}'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg={color/base0B/number}'
ZSH_HIGHLIGHT_STYLES[bracket-level-5]='fg={color/base0C/number}'

# custom highlighters
ZSH_HIGHLIGHT_STYLES[http_env:1]='fg={color/blue/number},bold'
ZSH_HIGHLIGHT_STYLES[http_env:2]='fg={color/blue/number},bold'
ZSH_HIGHLIGHT_STYLES[http_env:3]='fg={color/yellow/number}'
ZSH_HIGHLIGHT_STYLES[http_env:4]='fg={color/magenta/number}'
ZSH_HIGHLIGHT_STYLES[http_env:keywords]='bold'


## substring history navigation

source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg={color/success/number},fg={color/base00/number}'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='bg={color/error/number},fg={color/base00/number}'
