SCRIPT_NAME    = "go_fzf_tmux"
SCRIPT_AUTHOR  = "Damien Tardy-Panis <damien.dev@tardypad.me>"
SCRIPT_VERSION = "0.1.0"
SCRIPT_LICENSE = "MIT"
SCRIPT_DESC    = "Quick jump to buffers using fzf-tmux"
SCRIPT_COMMAND = "go_fzf_tmux"

IMPORT_OK = True

import os
import shlex
import subprocess

try:
    import weechat
except ImportError:
    print("This script must be run under WeeChat.")
    IMPORT_OK = False

SETTINGS = {
    "fzf_options": (
        "-d 20",
        "Options for fzf command"),
}

FZF_MAIN_OPTIONS = "--with-nth 2.."

def get_buffers():
    buffers = []
    infolist = weechat.infolist_get("buffer", "", "")
    if infolist:
        while weechat.infolist_next(infolist):
            number = weechat.infolist_integer(infolist, "number")
            name = weechat.string_remove_color(weechat.infolist_string(infolist, "short_name"), "")
            buffers.append({"number": number, "name": name})
        weechat.infolist_free(infolist)
    return buffers

def get_buffers_input():
    lines = []
    for buffer in get_buffers():
        lines.append("{} {}".format(buffer["number"], buffer["name"]))
    return "\n".join(lines)

def process_fzf_result(data, command, rc, out, err):
    if rc == 0 and out != "":
        switch_to_buffer(out)
    return weechat.WEECHAT_RC_OK

def switch_to_buffer(out):
    selected = out.strip("\n")
    number = selected.split(" ")[0]
    weechat.command("", "/buffer *{}".format(number))

def run_within_tmux():
    command = 'echo "{}" | fzf-tmux {} {}'.format(
            get_buffers_input(),
            weechat.config_get_plugin("fzf_options"),
            FZF_MAIN_OPTIONS)

    if not weechat.hook_process_hashtable(
        "sh", {"arg1": "-c", "arg2": command},
        0, "process_fzf_result", ""):
        return weechat.WEECHAT_RC_ERROR
    return weechat.WEECHAT_RC_OK

def run_blocking():
    echo_command = 'echo "{}"'.format(get_buffers_input())
    echo_process = subprocess.Popen(
                    shlex.split(echo_command),
                    stdout=subprocess.PIPE)

    try:
        fzf_command = "fzf {} {}".format(
            weechat.config_get_plugin("fzf_options"),
            FZF_MAIN_OPTIONS)
        out = subprocess.check_output(
                shlex.split(fzf_command),
                stdin=echo_process.stdout)
        if out != "":
            switch_to_buffer(out)
    except (subprocess.CalledProcessError):
        pass

    weechat.command("", "/window refresh")

    return weechat.WEECHAT_RC_OK

def go_fzf_tmux_cmd(data, buf, args):
    if os.environ.get("TMUX"):
        return run_within_tmux()
    else:
        return run_blocking()

def go_fzf_tmux_main():
    if not weechat.register(SCRIPT_NAME, SCRIPT_AUTHOR, SCRIPT_VERSION,
                            SCRIPT_LICENSE, SCRIPT_DESC, "", ""):
        return
    weechat.hook_command(
        SCRIPT_COMMAND, SCRIPT_DESC,
        "", "", "", "go_fzf_tmux_cmd", "")

    for option, value in SETTINGS.items():
        if not weechat.config_is_set_plugin(option):
            weechat.config_set_plugin(option, value[0])
            weechat.config_set_desc_plugin(
                option, '%s (default: "%s")' % (value[1], value[0]))

if __name__ == "__main__" and IMPORT_OK:
    go_fzf_tmux_main()
