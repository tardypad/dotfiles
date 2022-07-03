# fonts
c.fonts.completion.category       = "bold 12pt monospace"
c.fonts.completion.entry          = "12pt monospace"
c.fonts.contextmenu               = "11 Source Sans Pro"
c.fonts.default_family            = "Source Code Pro"
c.fonts.default_size              = "12pt"
c.fonts.debug_console             = "12pt monospace"
c.fonts.downloads                 = "12pt Source Sans Pro"
c.fonts.hints                     = "bold 12pt monospace"
c.fonts.keyhint                   = "12pt monospace"
c.fonts.messages.error            = "12pt Source Sans Pro"
c.fonts.messages.info             = "12pt Source Sans Pro"
c.fonts.messages.warning          = "12pt Source Sans Pro"
c.fonts.prompts                   = "12pt Source Sans Pro"
c.fonts.statusbar                 = "12pt monospace"
c.fonts.tabs.selected             = "12pt Source Sans Pro"
c.fonts.tabs.unselected           = "12pt Source Sans Pro"
c.fonts.web.family.cursive        = ""
c.fonts.web.family.fantasy        = ""
c.fonts.web.family.fixed          = "Source Code Pro"
c.fonts.web.family.sans_serif     = "Source Sans Pro"
c.fonts.web.family.serif          = "Source Serif Pro"
c.fonts.web.family.standard       = "Source Sans Pro"
c.fonts.web.size.default          = 18
c.fonts.web.size.default_fixed    = 15
c.fonts.web.size.minimum          = 0
c.fonts.web.size.minimum_logical  = 6

# colors
colors = {
    'base00'                 : '#{color/base00/hex}',
    'base01'                 : '#{color/base01/hex}',
    'base02'                 : '#{color/base02/hex}',
    'base03'                 : '#{color/base03/hex}',
    'base04'                 : '#{color/base04/hex}',
    'base05'                 : '#{color/base05/hex}',
    'base06'                 : '#{color/base06/hex}',
    'base07'                 : '#{color/base07/hex}',
    'base08'                 : '#{color/base08/hex}',
    'base09'                 : '#{color/base09/hex}',
    'base0A'                 : '#{color/base0A/hex}',
    'base0B'                 : '#{color/base0B/hex}',
    'base0C'                 : '#{color/base0C/hex}',
    'base0D'                 : '#{color/base0D/hex}',
    'base0E'                 : '#{color/base0E/hex}',
    'base0F'                 : '#{color/base0F/hex}',
    'error'                  : '#{color/error/hex}',
    'warning'                : '#{color/warning/hex}',
    'notice'                 : '#{color/notice/hex}',
    'info'                   : '#{color/info/hex}',
    'success'                : '#{color/success/hex}',
    'background'             : '#{color/background/hex}',
    'foreground'             : '#{color/foreground/hex}',
    'popup_background'       : '#{color/popup_background/hex}',
    'popup_foreground'       : '#{color/popup_foreground/hex}',
    'popup_group_background' : '#{color/popup_group_background/hex}',
    'popup_group_foreground' : '#{color/popup_group_foreground/hex}',
    'current_item'           : '#{color/current_item/hex}'
}

c.colors.completion.category.bg                 = colors['popup_group_background']
c.colors.completion.category.border.bottom      = colors['popup_group_background']
c.colors.completion.category.border.top         = colors['popup_group_background']
c.colors.completion.category.fg                 = colors['popup_group_foreground']
c.colors.completion.even.bg                     = colors['popup_background']
c.colors.completion.fg                          = colors['popup_foreground']
c.colors.completion.item.selected.bg            = colors['current_item']
c.colors.completion.item.selected.border.bottom = colors['current_item']
c.colors.completion.item.selected.border.top    = colors['current_item']
c.colors.completion.item.selected.fg            = colors['base00']
c.colors.completion.item.selected.match.fg      = colors['base05']
c.colors.completion.match.fg                    = colors['base09']
c.colors.completion.odd.bg                      = colors['popup_background']
c.colors.completion.scrollbar.bg                = colors['popup_background']
c.colors.completion.scrollbar.fg                = colors['popup_foreground']

c.colors.contextmenu.menu.bg                    = colors['popup_background']
c.colors.contextmenu.menu.fg                    = colors['popup_foreground']
c.colors.contextmenu.disabled.bg                = colors['popup_background']
c.colors.contextmenu.disabled.fg                = colors['base03']
c.colors.contextmenu.selected.bg                = colors['current_item']
c.colors.contextmenu.selected.fg                = colors['base00']

c.colors.downloads.bar.bg                       = colors['background']
c.colors.downloads.error.bg                     = colors['error']
c.colors.downloads.error.fg                     = colors['base00']
c.colors.downloads.start.bg                     = colors['base0A']
c.colors.downloads.start.fg                     = colors['base00']
c.colors.downloads.stop.bg                      = colors['base0A']
c.colors.downloads.stop.fg                      = colors['base00']
c.colors.downloads.system.bg                    = "none"
c.colors.downloads.system.fg                    = "none"

c.colors.hints.bg                               = colors['base09']
c.colors.hints.fg                               = colors['base00']
c.colors.hints.match.fg                         = colors['base05']
c.hints.border                                  = "1px solid " + colors['base08']

c.colors.keyhint.bg                             = colors['base09']
c.colors.keyhint.fg                             = colors['base05']
c.colors.keyhint.suffix.fg                      = colors['base00']

c.colors.messages.error.bg                      = colors['error']
c.colors.messages.error.border                  = colors['error']
c.colors.messages.error.fg                      = colors['base00']
c.colors.messages.info.bg                       = colors['info']
c.colors.messages.info.border                   = colors['info']
c.colors.messages.info.fg                       = colors['base00']
c.colors.messages.warning.bg                    = colors['warning']
c.colors.messages.warning.border                = colors['warning']
c.colors.messages.warning.fg                    = colors['base00']

c.colors.prompts.bg                             = colors['base02']
c.colors.prompts.border                         = "1px solid " + colors['base05']
c.colors.prompts.fg                             = colors['base04']
c.colors.prompts.selected.bg                    = colors['current_item']
c.colors.prompts.selected.fg                    = colors['base00']

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
c.colors.statusbar.private.bg                   = colors['base08']
c.colors.statusbar.private.fg                   = colors['base00']
c.colors.statusbar.progress.bg                  = colors['base0A']

c.colors.statusbar.url.error.fg                 = colors['error']
c.colors.statusbar.url.fg                       = colors['base05']
c.colors.statusbar.url.hover.fg                 = colors['base0B']
c.colors.statusbar.url.success.http.fg          = colors['base05']
c.colors.statusbar.url.success.https.fg         = colors['success']
c.colors.statusbar.url.warn.fg                  = colors['warning']

c.colors.tabs.bar.bg                            = colors['background']
c.colors.tabs.even.bg                           = colors['background']
c.colors.tabs.even.fg                           = colors['foreground']
c.colors.tabs.indicator.error                   = colors['error']
c.colors.tabs.indicator.start                   = colors['base0A']
c.colors.tabs.indicator.stop                    = colors['base0A']
c.colors.tabs.indicator.system                  = "none"
c.colors.tabs.odd.bg                            = colors['background']
c.colors.tabs.odd.fg                            = colors['foreground']
c.colors.tabs.pinned.even.bg                    = colors['background']
c.colors.tabs.pinned.even.fg                    = colors['foreground']
c.colors.tabs.pinned.odd.bg                     = colors['background']
c.colors.tabs.pinned.odd.fg                     = colors['foreground']
c.colors.tabs.pinned.selected.even.bg           = colors['base0A']
c.colors.tabs.pinned.selected.even.fg           = colors['base00']
c.colors.tabs.pinned.selected.odd.bg            = colors['base0A']
c.colors.tabs.pinned.selected.odd.fg            = colors['base00']
c.colors.tabs.selected.even.bg                  = colors['base0A']
c.colors.tabs.selected.even.fg                  = colors['base00']
c.colors.tabs.selected.odd.bg                   = colors['base0A']
c.colors.tabs.selected.odd.fg                   = colors['base00']

# many websites base their design
# on the assumption that the background is always white...
c.colors.webpage.bg                             = 'white'

# bars position
c.statusbar.position = 'bottom'
c.downloads.position = 'bottom'
c.tabs.position      = 'top'

c.tabs.max_width = 300
