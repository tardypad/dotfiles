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
colors = {
    'base00'       : '#{{{base00/hex}}}',
    'base01'       : '#{{{base01/hex}}}',
    'base02'       : '#{{{base02/hex}}}',
    'base03'       : '#{{{base03/hex}}}',
    'base04'       : '#{{{base04/hex}}}',
    'base05'       : '#{{{base05/hex}}}',
    'base06'       : '#{{{base06/hex}}}',
    'base07'       : '#{{{base07/hex}}}',
    'base08'       : '#{{{base08/hex}}}',
    'base09'       : '#{{{base09/hex}}}',
    'base0A'       : '#{{{base0A/hex}}}',
    'base0B'       : '#{{{base0B/hex}}}',
    'base0C'       : '#{{{base0C/hex}}}',
    'base0D'       : '#{{{base0D/hex}}}',
    'base0E'       : '#{{{base0E/hex}}}',
    'base0F'       : '#{{{base0F/hex}}}',
    'error'        : '#{{{error/hex}}}',
    'warning'      : '#{{{warning/hex}}}',
    'notice'       : '#{{{notice/hex}}}',
    'background'   : '#{{{background/hex}}}',
    'foreground'   : '#{{{foreground/hex}}}',
    'current_item' : '#{{{current_item/hex}}}'
}

c.colors.completion.category.bg                 = colors['base01']
c.colors.completion.category.border.bottom      = colors['base01']
c.colors.completion.category.border.top         = colors['base01']
c.colors.completion.category.fg                 = colors['base07']
c.colors.completion.even.bg                     = colors['base02']
c.colors.completion.fg                          = colors['base04']
c.colors.completion.item.selected.bg            = colors['current_item']
c.colors.completion.item.selected.border.bottom = colors['current_item']
c.colors.completion.item.selected.border.top    = colors['current_item']
c.colors.completion.item.selected.fg            = colors['base00']
c.colors.completion.match.fg                    = colors['base05']
c.colors.completion.odd.bg                      = colors['base02']
c.colors.completion.scrollbar.bg                = colors['base03']
c.colors.completion.scrollbar.fg                = colors['base04']

c.colors.downloads.bar.bg                       = colors['background']
c.colors.downloads.error.bg                     = colors['error']
c.colors.downloads.error.fg                     = colors['base07']
c.colors.downloads.start.bg                     = colors['base0D']
c.colors.downloads.start.fg                     = colors['base07']
c.colors.downloads.stop.bg                      = colors['base0D']
c.colors.downloads.stop.fg                      = colors['base07']
c.colors.downloads.system.bg                    = "none"
c.colors.downloads.system.fg                    = "none"

c.colors.hints.bg                               = colors['base05']
c.colors.hints.fg                               = colors['base00']
c.colors.hints.match.fg                         = colors['base07']
c.hints.border                                  = "1px solid " + colors['base0E']

c.colors.keyhint.bg                             = colors['base05']
c.colors.keyhint.fg                             = colors['base07']
c.colors.keyhint.suffix.fg                      = colors['base00']

c.colors.messages.error.bg                      = colors['error']
c.colors.messages.error.border                  = colors['error']
c.colors.messages.error.fg                      = colors['base07']
c.colors.messages.info.bg                       = colors['base0D']
c.colors.messages.info.border                   = colors['base0D']
c.colors.messages.info.fg                       = colors['base07']
c.colors.messages.warning.bg                    = colors['warning']
c.colors.messages.warning.border                = colors['warning']
c.colors.messages.warning.fg                    = colors['base07']

c.colors.prompts.bg                             = colors['base02']
c.colors.prompts.border                         = "1px solid " + colors['base06']
c.colors.prompts.fg                             = colors['base04']
c.colors.prompts.selected.bg                    = colors['current_item']

c.colors.statusbar.caret.bg                     = colors['background']
c.colors.statusbar.caret.fg                     = colors['notice']
c.colors.statusbar.caret.selection.bg           = colors['background']
c.colors.statusbar.caret.selection.fg           = colors['notice']
c.colors.statusbar.command.bg                   = colors['background']
c.colors.statusbar.command.fg                   = colors['foreground']
c.colors.statusbar.command.private.bg           = colors['background']
c.colors.statusbar.command.private.fg           = colors['notice']
c.colors.statusbar.insert.bg                    = colors['background']
c.colors.statusbar.insert.fg                    = colors['notice']
c.colors.statusbar.normal.bg                    = colors['background']
c.colors.statusbar.normal.fg                    = colors['foreground']
c.colors.statusbar.passthrough.bg               = colors['background']
c.colors.statusbar.passthrough.fg               = colors['notice']
c.colors.statusbar.private.bg                   = colors['base0E']
c.colors.statusbar.private.fg                   = colors['base00']
c.colors.statusbar.progress.bg                  = colors['base0D']

c.colors.statusbar.url.error.fg                 = colors['error']
c.colors.statusbar.url.fg                       = colors['base07']
c.colors.statusbar.url.hover.fg                 = colors['base0C']
c.colors.statusbar.url.success.http.fg          = colors['base07']
c.colors.statusbar.url.success.https.fg         = colors['base0B']
c.colors.statusbar.url.warn.fg                  = colors['warning']

c.colors.tabs.bar.bg                            = colors['background']
c.colors.tabs.even.bg                           = colors['background']
c.colors.tabs.even.fg                           = colors['foreground']
c.colors.tabs.indicator.error                   = colors['error']
c.colors.tabs.indicator.start                   = colors['base0D']
c.colors.tabs.indicator.stop                    = colors['base0D']
c.colors.tabs.indicator.system                  = "none"
c.colors.tabs.odd.bg                            = colors['background']
c.colors.tabs.odd.fg                            = colors['foreground']
c.colors.tabs.selected.even.bg                  = colors['base0D']
c.colors.tabs.selected.even.fg                  = colors['base00']
c.colors.tabs.selected.odd.bg                   = colors['base0D']
c.colors.tabs.selected.odd.fg                   = colors['base00']

c.colors.webpage.bg                             = colors['base04']

# bars position
c.statusbar.position = 'bottom'
c.downloads.position = 'bottom'
c.tabs.position      = 'top'

c.tabs.max_width = 1000
