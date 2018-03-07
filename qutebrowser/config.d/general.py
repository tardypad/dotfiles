# restore previous session on opening
c.auto_save.session = True

# hosts blocking
c.content.host_blocking.enabled = True
c.content.host_blocking.lists = [ 'https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts' ]

# search engines
c.url.searchengines = {
    "DEFAULT": "https://duckduckgo.com/?q={}",
    "google": "https://www.google.com/search?q={}"
}
