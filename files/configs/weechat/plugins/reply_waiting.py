SCRIPT_NAME    = "reply_waiting"
SCRIPT_AUTHOR  = "Damien Tardy-Panis <damien.dev@tardypad.me>"
SCRIPT_VERSION = "0.1.0"
SCRIPT_LICENSE = "MIT"
SCRIPT_DESC    = "Take note that a buffer is waiting for a reply"
SCRIPT_COMMAND = "reply_waiting"

IMPORT_OK = True

import os.path

try:
    import weechat
except ImportError:
    print("This script must be run under WeeChat.")
    IMPORT_OK = False

SETTINGS = {
    "filepath": (
        "~/Desktop/reply_waiting",
        "File path where to store the buffers waiting for a reply"),
    "format": (
        "Waiting for reply from {}",
        "Format of waiting reply messages"),
    "format_with_context": (
        "Waiting for reply from {}: {}",
        "Format of waiting reply messages with context provided"),
}

def append_buffer_to_file(filepath, text):
    try:
        with open(os.path.expanduser(filepath), "a") as f:
            f.write(text + "\n")
            f.close()
    except (OSError, IOError):
        return False
    return True

def reply_waiting_cmd(data, buf, args):
    buffer_name = weechat.buffer_get_string(buf, "short_name")

    if args:
        text = weechat.config_get_plugin("format_with_context").format(buffer_name, args)
    else:
        text = weechat.config_get_plugin("format").format(buffer_name)
    text = text.replace("\\n", "\n")

    result = append_buffer_to_file(
        weechat.config_get_plugin("filepath"),
        text
    )

    if not result:
        weechat.prnt("", "Fail to add reply waiting to " + buffer_name)
        return weechat.WEECHAT_RC_ERROR

    return weechat.WEECHAT_RC_OK

def reply_waiting_main():
    if not weechat.register(SCRIPT_NAME, SCRIPT_AUTHOR, SCRIPT_VERSION,
                            SCRIPT_LICENSE, SCRIPT_DESC, "", ""):
        return
    weechat.hook_command(
        SCRIPT_COMMAND, SCRIPT_DESC,
        "", "", "", "reply_waiting_cmd", "")

    for option, value in SETTINGS.items():
        if not weechat.config_is_set_plugin(option):
            weechat.config_set_plugin(option, value[0])
            weechat.config_set_desc_plugin(
                option, '%s (default: "%s")' % (value[1], value[0]))

if __name__ == "__main__" and IMPORT_OK:
    reply_waiting_main()
