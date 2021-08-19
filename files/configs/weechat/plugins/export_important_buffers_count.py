SCRIPT_NAME    = 'export_important_buffers_count'
SCRIPT_AUTHOR  = 'Damien Tardy-Panis <damien.dev@tardypad.me>'
SCRIPT_VERSION = '0.1.0'
SCRIPT_LICENSE = 'MIT'
SCRIPT_DESC    = 'Export the count of buffers with important messages'

IMPORT_OK = True

import os

COUNT_FILE_PATH = os.environ.get('XDG_RUNTIME_DIR') + '/chat_count'

try:
    import weechat
except ImportError:
    print('This script must be run under WeeChat.')
    IMPORT_OK = False


def important_buffers_count():
    count = 0
    infolist = weechat.infolist_get('hotlist', '', '')
    if infolist:
        while weechat.infolist_next(infolist):
            priority = weechat.infolist_integer(infolist, 'priority')
            # only count buffers with highlight or private messages
            if priority >= 2:
                count += 1
        weechat.infolist_free(infolist)
    return count


def write_count(count):
    try:
        with open(COUNT_FILE_PATH, 'w') as f:
            f.write('{}'.format(count))
            f.close()
    except (OSError, IOError):
        return False
    return True


def update_buffers_count(data, signal, signal_data):
    result = write_count(important_buffers_count())

    if not result:
        return weechat.WEECHAT_RC_ERROR
    return weechat.WEECHAT_RC_OK


def shutdown_cb():
    result = os.remove(COUNT_FILE_PATH)

    if not result:
        return weechat.WEECHAT_RC_ERROR
    return weechat.WEECHAT_RC_OK


def export_important_buffers_count_main():
    if not weechat.register(SCRIPT_NAME, SCRIPT_AUTHOR, SCRIPT_VERSION,
                            SCRIPT_LICENSE, SCRIPT_DESC, 'shutdown_cb', ''):
        return
    weechat.hook_signal('hotlist_changed', 'update_buffers_count', '')


if __name__ == '__main__' and IMPORT_OK:
    export_important_buffers_count_main()
