# only show logs starting from warning level
c.logging.level.console = 'warning'

# blank start and default pages
c.url.start_pages = 'about:blank'
c.url.default_page = 'about:blank'

# Without name argument save session to 'default' instead of the last opened one
c.session.default_name = 'default'

# search engines
c.url.searchengines = {
    "DEFAULT": "https://duckduckgo.com/?q={}",
    "gg": "https://www.google.com/search?q={}",
    "map": "https://www.google.com/maps/search/{}",
    "yt": "https://www.youtube.com/results?search_query={}",
    "wp": "https://en.wikipedia.org/wiki/Special:Search/{}",
    "pkg": "https://www.archlinux.org/packages/?q={}",
    "aur": "https://aur.archlinux.org/packages/?K={}",
    "wiki": "https://wiki.archlinux.org/index.php?search={}",
    "gus": "https://genius.com/search?q={}"
}

# hide tabs tooltips
c.tabs.tooltips = False

# disable changing tabs with mouse wheel
c.tabs.mousewheel_switching = False

# display blank page when closing the last remaining tab
c.tabs.last_close = "blank"

# keep mode when switching tab
c.tabs.mode_on_change = "persist"

# disable search wrapping
c.search.wrap = False

# only show history items and filesystem in "open" completion
c.completion.open_categories = [ "history", "filesystem" ]

# Disable videos automatic play
c.content.autoplay = False

# Disable some websites requests, don't even ask for it
c.content.notifications.enabled     = False
c.content.geolocation               = False
c.content.register_protocol_handler = False

# Enable audio, micro and screen sharing on some chat websites
config.set('content.media.audio_capture', True, 'whereby.com')
config.set('content.media.video_capture', True, 'whereby.com')
config.set('content.media.audio_video_capture', True, 'whereby.com')
config.set('content.desktop_capture', True, 'whereby.com')

# prefer webpage to follow overall color scheme
c.colors.webpage.preferred_color_scheme = '{color/theme}'

# downloads
c.downloads.location.prompt = False
c.downloads.remove_finished = 3000

# external edit
c.editor.command = [ "sway-quick-command", "nvim", "-c", "'set wrap'", "{file}" ]

# minimal status bar
c.statusbar.widgets = [ 'keypress', 'url', 'scroll', 'progress' ]

#HACK: Fix some rendering issue on Intel graphics
c.qt.args = [ "disable-accelerated-2d-canvas" ]
