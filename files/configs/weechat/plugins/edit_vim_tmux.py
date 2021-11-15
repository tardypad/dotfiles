SCRIPT_NAME    = "edit_vim_tmux"
SCRIPT_AUTHOR  = "Damien Tardy-Panis <damien.dev@tardypad.me>"
SCRIPT_VERSION = "0.1.0"
SCRIPT_LICENSE = "MIT"
SCRIPT_DESC    = "Compose message in vim within a tmux pane"
SCRIPT_COMMAND = "edit_vim_tmux"

IMPORT_OK = True

import os
import os.path
import shlex
import subprocess

MESSAGE_FILE_PATH = os.environ.get("XDG_RUNTIME_DIR") + "/weechat/message"

try:
    import weechat
except ImportError:
    print("This script must be run under WeeChat.")
    IMPORT_OK = False

SETTINGS = {
    "tmux_split_options": (
        "-v -l 20",
        "Options for tmux split window command"),
    "vim_options": (
        "+startinsert",
        "Options for vim command"),
}

def send_message():
    try:
        with open(MESSAGE_FILE_PATH) as f:
            message = f.read()
        message = message.rstrip("\n")
        weechat.command("", message)
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

def run_within_tmux():
    command = ( "tmux split-window {} ".format(
                    weechat.config_get_plugin("tmux_split_options")) +
                '"vim {} -- {}; {}" '.format(
                    weechat.config_get_plugin("vim_options"),
                    MESSAGE_FILE_PATH,
                   "tmux wait-for -S edit_vim_tmux" ) +
                "\; wait-for edit_vim_tmux" )

    if not weechat.hook_process(command, 0, "process_vim_result", ""):
        return weechat.WEECHAT_RC_ERROR
    return weechat.WEECHAT_RC_OK

def run_blocking():
    command = "vim {} -- {}".format(
                weechat.config_get_plugin("vim_options"),
                MESSAGE_FILE_PATH)
    code = subprocess.Popen(shlex.split(command)).wait()

    if code == 0:
        send_message()
    cleanup()

    weechat.command("", "/window refresh")

    return weechat.WEECHAT_RC_OK

def edit_vim_tmux_cmd(data, buf, args):
    if os.environ.get("TMUX"):
        return run_within_tmux()
    else:
        return run_blocking()

def edit_vim_tmux_main():
    if not weechat.register(SCRIPT_NAME, SCRIPT_AUTHOR, SCRIPT_VERSION,
                            SCRIPT_LICENSE, SCRIPT_DESC, "", ""):
        return
    weechat.hook_command(
        SCRIPT_COMMAND, SCRIPT_DESC,
        "", "", "", "edit_vim_tmux_cmd", "")

    for option, value in SETTINGS.items():
        if not weechat.config_is_set_plugin(option):
            weechat.config_set_plugin(option, value[0])
            weechat.config_set_desc_plugin(
                option, '%s (default: "%s")' % (value[1], value[0]))

if __name__ == "__main__" and IMPORT_OK:
    edit_vim_tmux_main()
