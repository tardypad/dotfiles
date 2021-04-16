# restore previous session on opening
c.auto_save.session = True

# search engines
c.url.searchengines = {
    "DEFAULT": "https://duckduckgo.com/?q={}",
    "gg": "https://www.google.com/search?q={}",
    "yt": "https://www.youtube.com/results?search_query={}",
    "wp": "https://en.wikipedia.org/wiki/Special:Search/{}",
    "pkg": "https://www.archlinux.org/packages/?q={}",
    "aur": "https://aur.archlinux.org/packages/?K={}",
    "wiki": "https://wiki.archlinux.org/index.php?search={}"
}

# hide tabs tooltips
c.tabs.tooltips = False

# disable changing tabs with mouse wheel
c.tabs.mousewheel_switching = False

# disable search wrapping
c.search.wrap = False

# only show history items and filesystem in "open" completion
c.completion.open_categories = [ "history", "filesystem" ]

# Disable some websites requests, don't even ask for it
c.content.notifications.enabled = False
c.content.geolocation           = False

# disable Javascript everywhere by default
# and only whitelist some regularly used patterns
# which are trusted or don't work well without it
c.content.javascript.enabled = False
config.set('content.javascript.enabled', True, 'localhost')
config.set('content.javascript.enabled', True, 'file:///*')
config.set('content.javascript.enabled', True, '*.local')
config.set('content.javascript.enabled', True, '*.youtube.com')
config.set('content.javascript.enabled', True, '*.ovh.com')
config.set('content.javascript.enabled', True, '*.migadu.com')
config.set('content.javascript.enabled', True, '*.gandi.net')
config.set('content.javascript.enabled', True, 'online-go.com')

# prefer webpage to follow overall color scheme
c.colors.webpage.preferred_color_scheme = '{color/theme}'

# downloads
c.downloads.location.prompt = False
c.downloads.remove_finished = 3000
