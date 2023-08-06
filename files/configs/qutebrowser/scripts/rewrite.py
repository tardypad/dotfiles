from qutebrowser.api import interceptor

def rewrite(request: interceptor.Request):
    rewritten = False
    host = request.request_url.host()

    if host in ['twitter.com', 'www.twitter.com', 'mobile.twitter.com']:
        rewritten = True
        request.request_url.setHost('nitter.net')

    if host in ['youtube.com', 'www.youtube.com']:
        rewritten = True
        request.request_url.setHost('yewtu.be')

    if host in ['youtu.be']:
        rewritten = True
        video_id = request.request_url.path()
        request.request_url.setHost('yewtu.be')
        request.request_url.setPath('/watch')
        request.request_url.setQuery('v=' + video_id.lstrip('/'))

    if rewritten:
        try:
            request.redirect(request.request_url)
        except interceptor.interceptors.RedirectException:
            pass

interceptor.register(rewrite)
