# Updates the GPG-Agent TTY before every command since SSH does not set it.
function _gpg-agent-update-tty {
  gpg-connect-agent UPDATESTARTUPTTY /bye >/dev/null
}
add-zsh-hook preexec _gpg-agent-update-tty
