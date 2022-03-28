from qutebrowser.api import interceptor

def redirect(request: interceptor.Request, host: str):
    request.request_url.setHost(host)
    try:
        request.redirect(request.request_url)
    except interceptor.interceptors.RedirectException:
        pass

def rewrite(request: interceptor.Request):
    host = request.request_url.host()

    if host in ['reddit.com', 'www.reddit.com', 'old.reddit.com']:
        redirect(request, 'teddit.net');

    if host in ['twitter.com', 'www.twitter.com', 'mobile.twitter.com']:
        redirect(request, 'nitter.net');

    if host in ['youtube.com', 'www.youtube.com', 'youtu.be']:
        redirect(request, 'yewtu.be');

interceptor.register(rewrite)
