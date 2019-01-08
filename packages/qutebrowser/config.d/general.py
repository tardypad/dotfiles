# restore previous session on opening
c.auto_save.session = True

# hosts blocking
c.content.host_blocking.enabled = True
c.content.host_blocking.lists = [ 'https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts' ]
c.content.host_blocking.whitelist = [ 'analytics.google.com' ]

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

# open new tabs from middle/ctrl click in the background
c.tabs.background = True

# disable Javascript everywhere by default
# and only whitelist some regularly used patterns
# which are trusted or don't work well without it
c.content.javascript.enabled = False
config.set('content.javascript.enabled', True, '*.local')
config.set('content.javascript.enabled', True, '*.youtube.com')
