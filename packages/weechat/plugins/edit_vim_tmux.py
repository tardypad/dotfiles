SCRIPT_NAME    = 'edit_vim_tmux'
SCRIPT_AUTHOR  = 'Damien Tardy-Panis <damien@tardypad.me>'
SCRIPT_VERSION = '0.1.0'
SCRIPT_LICENSE = 'MIT'
SCRIPT_DESC    = 'Compose message in vim within a tmux pane'
SCRIPT_COMMAND = 'edit_vim_tmux'

IMPORT_OK = True

import os
import os.path

MESSAGE_FILE_PATH = os.path.expanduser('~/.weechat/message.txt')

try:
    import weechat
except ImportError:
    print('This script must be run under WeeChat.')
    IMPORT_OK = False


def send_message():
    try:
        with open(MESSAGE_FILE_PATH) as f:
            message = f.read()
        weechat.command('', message)
    except (OSError, IOError):
        pass


def cleanup():
    try:
        os.remove(MESSAGE_FILE_PATH)
    except (OSError, IOError):
        pass


def process_vim_result(data, command, rc, out, err):
    if rc == 0:
        send_message()
    cleanup()
    return weechat.WEECHAT_RC_OK


def edit_vim_tmux_cmd(data, buf, args):
    command = ( 'tmux split-window -v -l 20 ' +
                '"vim {}; {}" '.format(
                    MESSAGE_FILE_PATH,
                   'tmux wait-for -S edit_vim_tmux' ) +
                '\; wait-for edit_vim_tmux' )

    if not weechat.hook_process(command, 0, 'process_vim_result', ''):
        return weechat.WEECHAT_RC_ERROR
    return weechat.WEECHAT_RC_OK


def edit_vim_tmux_main():
    if not weechat.register(SCRIPT_NAME, SCRIPT_AUTHOR, SCRIPT_VERSION,
                            SCRIPT_LICENSE, SCRIPT_DESC, '', ''):
        return
    weechat.hook_command(
        SCRIPT_COMMAND, SCRIPT_DESC,
        '', '', '', 'edit_vim_tmux_cmd', '')


if __name__ == '__main__' and IMPORT_OK:
    edit_vim_tmux_main()
