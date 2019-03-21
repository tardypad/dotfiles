SCRIPT_NAME    = 'go_fzf_tmux'
SCRIPT_AUTHOR  = 'Damien Tardy-Panis <damien@tardypad.me>'
SCRIPT_VERSION = '0.1.0'
SCRIPT_LICENSE = 'MIT'
SCRIPT_DESC    = 'Quick jump to buffers using fzf-tmux'
SCRIPT_COMMAND = 'go_fzf_tmux'

IMPORT_OK = True

try:
    import weechat
except ImportError:
    print('This script must be run under WeeChat.')
    IMPORT_OK = False


def get_buffers():
    buffers = []
    infolist = weechat.infolist_get('buffer', '', '')
    if infolist:
        while weechat.infolist_next(infolist):
            name = weechat.infolist_string(infolist, 'name')
            buffers.append(name)
        weechat.infolist_free(infolist)
    return buffers


def process_fzf_result(data, command, rc, out, err):
    if rc == 0 and out != '':
        selected = out.strip('\n')
        weechat.command('', '/buffer {0}'.format(selected))
    return weechat.WEECHAT_RC_OK


def go_fzf_tmux_cmd(data, buf, args):
    command = 'echo "{0}" | {1}'.format(
            '\n'.join(get_buffers()),
            'fzf-tmux -d 20')

    if not weechat.hook_process_hashtable(
        'sh', {'arg1': '-c', 'arg2': command},
        0, 'process_fzf_result', ''):
        return weechat.WEECHAT_RC_ERROR
    return weechat.WEECHAT_RC_OK


def go_fzf_tmux_main():
    if not weechat.register(SCRIPT_NAME, SCRIPT_AUTHOR, SCRIPT_VERSION,
                            SCRIPT_LICENSE, SCRIPT_DESC, '', ''):
        return
    weechat.hook_command(
        SCRIPT_COMMAND, SCRIPT_DESC,
        '', '', '', 'go_fzf_tmux_cmd', '')


if __name__ == '__main__' and IMPORT_OK:
    go_fzf_tmux_main()