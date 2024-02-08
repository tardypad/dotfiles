from qutebrowser.api import interceptor

def rewrite(request: interceptor.Request):
    rewritten = False
    host = request.request_url.host()

    if host in ['youtube.com', 'www.youtube.com']:
        rewritten = True
        request.request_url.setHost('yewtu.be')
        request.request_url.setQuery(request.request_url.query() + '&local=true')

    if host in ['youtu.be']:
        rewritten = True
        video_id = request.request_url.path()
        request.request_url.setHost('yewtu.be')
        request.request_url.setPath('/watch')
        request.request_url.setQuery('v=' + video_id.lstrip('/') + '&local=true')

    if rewritten:
        try:
            request.redirect(request.request_url)
        except interceptor.interceptors.RedirectException:
            pass

interceptor.register(rewrite)
