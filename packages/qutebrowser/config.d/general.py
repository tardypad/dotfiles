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

# only show history items in "open" completion
c.completion.open_categories = [ "history" ]

# disable Javascript everywhere by default
# and only whitelist some regularly used patterns
# which are trusted or don't work well without it
c.content.javascript.enabled = False
config.set('content.javascript.enabled', True, '*.local')
config.set('content.javascript.enabled', True, '*.youtube.com')
config.set('content.javascript.enabled', True, '*.migadu.com')
config.set('content.javascript.enabled', True, '*.gandi.net')

# minimize fingerprinting
c.content.headers.user_agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36"
c.content.headers.accept_language = "en-US,en;q=0.5"
#c.content.headers.custom = { "accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8" }
c.content.headers.do_not_track = False
