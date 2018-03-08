# fonts
c.fonts.completion.category       = "bold 14pt monospace"
c.fonts.completion.entry          = "14pt monospace"
c.fonts.debug_console             = "14pt monospace"
c.fonts.downloads                 = "14pt Source Sans Pro"
c.fonts.hints                     = "bold 14pt monospace"
c.fonts.keyhint                   = "14pt monospace"
c.fonts.messages.error            = "14pt Source Sans Pro"
c.fonts.messages.info             = "14pt Source Sans Pro"
c.fonts.messages.warning          = "14pt Source Sans Pro"
c.fonts.monospace                 = "Source Code Pro"
c.fonts.prompts                   = "14pt Source Sans Pro"
c.fonts.statusbar                 = "14pt monospace"
c.fonts.tabs                      = "14pt Source Sans Pro"
c.fonts.web.family.cursive        = ""
c.fonts.web.family.fantasy        = ""
c.fonts.web.family.fixed          = "Source Code Pro"
c.fonts.web.family.sans_serif     = "Source Sans Pro"
c.fonts.web.family.serif          = "Source Serif Pro"
c.fonts.web.family.standard       = "Source Sans Pro"
c.fonts.web.size.default          = 16
c.fonts.web.size.default_fixed    = 13
c.fonts.web.size.minimum          = 0
c.fonts.web.size.minimum_logical  = 6

# colors
solarized = {
    'base03'  : '#002b36',
    'base02'  : '#073642',
    'base01'  : '#586e75',
    'base00'  : '#657b83',
    'base0'   : '#839496',
    'base1'   : '#93a1a1',
    'base2'   : '#eee8d5',
    'base3'   : '#fdf6e3',
    'yellow'  : '#b58900',
    'orange'  : '#cb4b16',
    'red'     : '#dc322f',
    'magenta' : '#d33682',
    'violet'  : '#6c71c4',
    'blue'    : '#268bd2',
    'cyan'    : '#2aa198',
    'green'   : '#859900'
}

c.colors.completion.category.bg                 = solarized['base02']
c.colors.completion.category.border.bottom      = solarized['base02']
c.colors.completion.category.border.top         = solarized['base02']
c.colors.completion.category.fg                 = solarized['base2']
c.colors.completion.even.bg                     = solarized['base00']
c.colors.completion.fg                          = solarized['base03']
c.colors.completion.item.selected.bg            = solarized['base0']
c.colors.completion.item.selected.border.bottom = solarized['base0']
c.colors.completion.item.selected.border.top    = solarized['base0']
c.colors.completion.item.selected.fg            = solarized['base03']
c.colors.completion.match.fg                    = solarized['base2']
c.colors.completion.odd.bg                      = solarized['base00']
c.colors.completion.scrollbar.bg                = solarized['base00']
c.colors.completion.scrollbar.fg                = solarized['base2']
c.colors.downloads.bar.bg                       = solarized['base03']
c.colors.downloads.error.bg                     = solarized['red']
c.colors.downloads.error.fg                     = solarized['base2']
c.colors.downloads.start.bg                     = solarized['blue']
c.colors.downloads.start.fg                     = solarized['base2']
c.colors.downloads.stop.bg                      = solarized['blue']
c.colors.downloads.stop.fg                      = solarized['base2']
c.colors.downloads.system.bg                    = "none"
c.colors.downloads.system.fg                    = "none"
c.colors.hints.bg                               = solarized['base1']
c.colors.hints.fg                               = solarized['base03']
c.colors.hints.match.fg                         = solarized['base2']
c.colors.keyhint.bg                             = solarized['base00']
c.colors.keyhint.fg                             = solarized['base2']
c.colors.keyhint.suffix.fg                      = solarized['base03']
c.colors.messages.error.bg                      = solarized['red']
c.colors.messages.error.border                  = solarized['red']
c.colors.messages.error.fg                      = solarized['base2']
c.colors.messages.info.bg                       = solarized['blue']
c.colors.messages.info.border                   = solarized['blue']
c.colors.messages.info.fg                       = solarized['base2']
c.colors.messages.warning.bg                    = solarized['orange']
c.colors.messages.warning.border                = solarized['orange']
c.colors.messages.warning.fg                    = solarized['base2']
c.colors.prompts.bg                             = solarized['base00']
c.colors.prompts.border                         = "1px solid " + solarized['base2']
c.colors.prompts.fg                             = solarized['base03']
c.colors.prompts.selected.bg                    = solarized['base0']
c.colors.statusbar.caret.bg                     = solarized['magenta']
c.colors.statusbar.caret.fg                     = solarized['base2']
c.colors.statusbar.caret.selection.bg           = solarized['magenta']
c.colors.statusbar.caret.selection.fg           = solarized['base2']
c.colors.statusbar.command.bg                   = solarized['base03']
c.colors.statusbar.command.fg                   = solarized['base0']
c.colors.statusbar.command.private.bg           = solarized['violet']
c.colors.statusbar.command.private.fg           = solarized['base2']
c.colors.statusbar.insert.bg                    = solarized['yellow']
c.colors.statusbar.insert.fg                    = solarized['base2']
c.colors.statusbar.normal.bg                    = solarized['base03']
c.colors.statusbar.normal.fg                    = solarized['base0']
c.colors.statusbar.passthrough.bg               = solarized['orange']
c.colors.statusbar.passthrough.fg               = solarized['base2']
c.colors.statusbar.private.bg                   = solarized['violet']
c.colors.statusbar.private.fg                   = solarized['base2']
c.colors.statusbar.progress.bg                  = solarized['cyan']
c.colors.statusbar.url.error.fg                 = solarized['red']
c.colors.statusbar.url.fg                       = solarized['base2']
c.colors.statusbar.url.hover.fg                 = solarized['cyan']
c.colors.statusbar.url.success.http.fg          = solarized['base2']
c.colors.statusbar.url.success.https.fg         = solarized['green']
c.colors.statusbar.url.warn.fg                  = solarized['orange']
c.colors.tabs.bar.bg                            = solarized['base03']
c.colors.tabs.even.bg                           = solarized['base03']
c.colors.tabs.even.fg                           = solarized['base0']
c.colors.tabs.indicator.error                   = solarized['red']
c.colors.tabs.indicator.start                   = solarized['cyan']
c.colors.tabs.indicator.stop                    = solarized['cyan']
c.colors.tabs.indicator.system                  = "none"
c.colors.tabs.odd.bg                            = solarized['base03']
c.colors.tabs.odd.fg                            = solarized['base0']
c.colors.tabs.selected.even.bg                  = solarized['cyan']
c.colors.tabs.selected.even.fg                  = solarized['base2']
c.colors.tabs.selected.odd.bg                   = solarized['cyan']
c.colors.tabs.selected.odd.fg                   = solarized['base2']
c.colors.webpage.bg                             = solarized['base3']
