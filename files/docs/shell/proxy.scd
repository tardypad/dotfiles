PROXY(1perso)

# NAME

proxy - Start a local HTTP/HTTPS proxy

# SYNOPSIS

proxy [-f _frontend_] [-t] [-- _option_...]

# DESCRIPTION

Start a local HTTP/HTTPS proxy.

By default a regular proxy is started on port 8080
(see https://docs.mitmproxy.org/stable/concepts-modes/)

# OPTIONS

*-f* _frontend_
	Define the frontend to use++
default: tui++
valid types:
	- cli
	- tui
	- web

*-t*
	Use transparent mode to automatically proxy all requests on the system++
This requires privilege escalation and also the usage of a "proxyer" user

_option_
	*mitmdump* / *mitmproxy* / *mitmweb* option

# OPERANDS

None

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- doas
- iptables
- iptables6
- mitmdump
- mitmproxy
- mitmweb
- sysctl

# ACKNOWLEDGEMENTS

https://docs.mitmproxy.org/stable/howto-transparent/
