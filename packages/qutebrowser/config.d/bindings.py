# remove all default bindings
c.bindings.default = {}

# maps some keys to other keys
c.bindings.key_mappings = {
    '<Ctrl-M>'       : '<Return>',
    '<Enter>'        : '<Return>',
    '<Shift-Enter>'  : '<Return>',
    '<Shift-Return>' : '<Return>',
    '<Ctrl-Enter>'   : '<Ctrl-Return>',
    '<Ctrl-[>'       : '<Escape>'
}


# caret mode
config.bind('<Escape>', 'leave-mode', mode='caret')
config.bind('<Ctrl-C>', 'leave-mode', mode='caret')
config.bind('<Return>', 'yank selection', mode='caret')
config.bind('y', 'yank selection', mode='caret')
config.bind('v', 'toggle-selection', mode='caret')
config.bind('<Ctrl-B>', 'scroll-page 0 -1', mode='caret')
config.bind('<Ctrl-F>', 'scroll-page 0 1', mode='caret')
config.bind('<Ctrl-U>', 'scroll-page 0 -0.5', mode='caret')
config.bind('<Ctrl-D>', 'scroll-page 0 0.5', mode='caret')
config.bind('<Ctrl-Y>', 'scroll-page 0 -0.1', mode='caret')
config.bind('<Ctrl-E>', 'scroll-page 0 0.1', mode='caret')
config.bind('gg', 'move-to-start-of-document', mode='caret')
config.bind('G', 'move-to-end-of-document', mode='caret')
config.bind('h', 'move-to-prev-char', mode='caret')
config.bind('j', 'move-to-next-line', mode='caret')
config.bind('k', 'move-to-prev-line', mode='caret')
config.bind('l', 'move-to-next-char', mode='caret')
config.bind('b', 'move-to-prev-word', mode='caret')
config.bind('w', 'move-to-next-word', mode='caret')
config.bind('e', 'move-to-end-of-word', mode='caret')
config.bind('0', 'move-to-start-of-line', mode='caret')
config.bind('$', 'move-to-end-of-line', mode='caret')
config.bind('{', 'move-to-end-of-prev-block', mode='caret')
config.bind('}', 'move-to-end-of-next-block', mode='caret')

# command mode
config.bind('<Escape>', 'leave-mode', mode='command')
config.bind('<Ctrl-C>', 'leave-mode', mode='command')
config.bind('<Return>', 'command-accept', mode='command')
config.bind('<Ctrl-B>', 'rl-beginning-of-line', mode='command')
config.bind('<Ctrl-E>', 'rl-end-of-line', mode='command')
config.bind('<Ctrl-H>', 'rl-backward-delete-char', mode='command')
config.bind('<Ctrl-W>', 'rl-backward-kill-word', mode='command')
config.bind('<Ctrl-U>', 'rl-unix-line-discard', mode='command')
config.bind('<Ctrl-R>', 'rl-yank', mode='command')
config.bind('<Ctrl-N>', 'command-history-next', mode='command')
config.bind('<Ctrl-P>', 'command-history-prev', mode='command')
config.bind('<Down>', 'completion-item-focus --history next', mode='command')
config.bind('<Up>', 'completion-item-focus --history prev', mode='command')
config.bind('<Tab>', 'completion-item-focus next', mode='command')
config.bind('<Shift-Tab>', 'completion-item-focus prev', mode='command')

# hint mode
config.bind('<Escape>', 'leave-mode', mode='hint')
config.bind('<Ctrl-C>', 'leave-mode', mode='hint')
config.bind('<Return>', 'follow-hint', mode='hint')

# insert mode
config.bind('<Escape>', 'leave-mode', mode='insert')
config.bind('<Ctrl-C>', 'leave-mode', mode='insert')

# passthrough mode
config.bind('<Ctrl-Escape>', 'leave-mode', mode='passthrough')

# prompt mode
config.bind('<Escape>', 'leave-mode', mode='prompt')
config.bind('<Ctrl-C>', 'leave-mode', mode='prompt')
config.bind('<Return>', 'prompt-accept', mode='prompt')
config.bind('<Ctrl-B>', 'rl-beginning-of-line', mode='command')
config.bind('<Ctrl-E>', 'rl-end-of-line', mode='command')
config.bind('<Ctrl-H>', 'rl-backward-delete-char', mode='command')
config.bind('<Ctrl-W>', 'rl-backward-kill-word', mode='command')
config.bind('<Ctrl-U>', 'rl-unix-line-discard', mode='command')
config.bind('<Ctrl-R>', 'rl-yank', mode='command')
config.bind('<Down>', 'prompt-item-focus next', mode='prompt')
config.bind('<Up>', 'prompt-item-focus prev', mode='prompt')
config.bind('<Tab>', 'prompt-item-focus next', mode='prompt')
config.bind('<Shift-Tab>', 'prompt-item-focus prev', mode='prompt')

# register mode
config.bind('<Escape>', 'leave-mode', mode='register')
config.bind('<Ctrl-C>', 'leave-mode', mode='register')

# yesno mode
config.bind('<Escape>', 'leave-mode', mode='yesno')
config.bind('<Ctrl-C>', 'leave-mode', mode='yesno')
config.bind('<Return>', 'prompt-accept', mode='yesno')
config.bind('y', 'prompt-accept yes', mode='yesno')
config.bind('n', 'prompt-accept no', mode='yesno')


# normal mode

# mode switching
config.bind('i', 'enter-mode insert', mode='normal')
config.bind("'", 'enter-mode jump_mark', mode='normal')
config.bind('m', 'enter-mode set_mark', mode='normal')
config.bind('<Ctrl-Escape>', 'enter-mode passthrough', mode='normal')
config.bind('v', 'enter-mode caret', mode='normal')

# general
config.bind('<Ctrl-Q>', 'quit', mode='normal')
config.bind('<Escape>', 'clear-keychain ;; stop ;; search ;; clear-messages ;; fullscreen --leave', mode='normal')
config.bind('<Return>', 'search', mode='normal')
config.bind('<Space>', 'nop', mode='normal')
config.bind('<Alt-Shift-R>', 'message-info "reloading config" ;; later 100 config-source', mode='normal')
config.bind(':', 'set-cmd-text :', mode='normal')
config.bind('.', 'repeat-command', mode='normal')
config.bind('o', 'set-cmd-text --space :open', mode='normal')
config.bind('r', 'reload', mode='normal')
config.bind('R', 'reload --force', mode='normal')
config.bind('u', 'undo', mode='normal')
config.bind('Z', 'fullscreen', mode='normal')
config.bind('f', 'hint all current', mode='normal')
config.bind('<Ctrl-S>', 'view-source', mode='normal')

# visual navigation
config.bind('<Ctrl-B>', 'scroll-page 0 -1', mode='normal')
config.bind('<Ctrl-F>', 'scroll-page 0 1', mode='normal')
config.bind('<Ctrl-U>', 'scroll-page 0 -0.5', mode='normal')
config.bind('<Ctrl-D>', 'scroll-page 0 0.5', mode='normal')
config.bind('<Ctrl-Y>', 'scroll-page 0 -0.1', mode='normal')
config.bind('<Ctrl-E>', 'scroll-page 0 0.1', mode='normal')
config.bind('gg', 'scroll-to-perc 0', mode='normal')
config.bind('G', 'scroll-to-perc 100', mode='normal')
config.bind('h', 'scroll left', mode='normal')
config.bind('j', 'scroll down', mode='normal')
config.bind('k', 'scroll up', mode='normal')
config.bind('l', 'scroll right', mode='normal')

# history navigation
config.bind('H', 'back', mode='normal')
config.bind('L', 'forward', mode='normal')

# search
config.bind('/', 'set-cmd-text /', mode='normal')
config.bind('?', 'set-cmd-text ?', mode='normal')
config.bind('n', 'search-next', mode='normal')
config.bind('N', 'search-prev', mode='normal')

# macros
config.bind('q', 'record-macro', mode='normal')
config.bind('@', 'run-macro', mode='normal')

# downloads
config.bind('da', 'download-cancel', mode='normal')
config.bind('dc', 'download-clear', mode='normal')
config.bind('do', 'download-open', mode='normal')
config.bind('dx', 'download-delete', mode='normal')

# yanking
config.bind('yy', 'yank url', mode='normal')
config.bind('yd', 'yank domain', mode='normal')
config.bind('yp', 'yank pretty-url', mode='normal')
config.bind('ys', 'yank selection', mode='normal')
config.bind('yt', 'yank title', mode='normal')

# bookmarks
config.bind('bc', 'set-cmd-text --space :bookmark-add {url}', mode='normal')
config.bind('bx', 'set-cmd-text --space :bookmark-del', mode='normal')
config.bind('bo', 'set-cmd-text --space :bookmark-load', mode='normal')

# quickmarks
config.bind('Bc', 'set-cmd-text --space :quickmark-add {url}', mode='normal')
config.bind('Bx', 'set-cmd-text --space :quickmark-del', mode='normal')
config.bind('Bo', 'set-cmd-text --space :quickmark-load', mode='normal')

# tabs management
config.bind('tc', 'open --tab about:blank ;; set-cmd-text --space :open', mode='normal')
config.bind('tx', 'tab-close', mode='normal')
config.bind('tb', 'set-cmd-text --space :bookmark-load --tab', mode='normal')
config.bind('tB', 'set-cmd-text --space :quickmark-load --tab', mode='normal')
config.bind('tH', 'back --tab', mode='normal')
config.bind('tL', 'forward --tab', mode='normal')
config.bind('to', 'set-cmd-text --space :open --tab', mode='normal')
config.bind('tw', 'tab-give', mode='normal')
config.bind('tf', 'hint all tab-fg', mode='normal')

# windows management
config.bind('wc', 'open --window about:blank', mode='normal')
config.bind('wx', 'close', mode='normal')
config.bind('wb', 'set-cmd-text --space :bookmark-load --window', mode='normal')
config.bind('wB', 'set-cmd-text --space :quickmark-load --window', mode='normal')
config.bind('wH', 'back --window', mode='normal')
config.bind('wL', 'forward --window', mode='normal')
config.bind('wo', 'set-cmd-text --space :open --window', mode='normal')
config.bind('wp', 'open --private about:blank', mode='normal')
config.bind('wf', 'hint all window', mode='normal')


# sessions management
config.bind('ss', 'set-cmd-text --space :session-save', mode='normal')
config.bind('sx', 'set-cmd-text --space :session-delete', mode='normal')
config.bind('so', 'set-cmd-text --space :session-load', mode='normal')

# tabs navigation
config.bind('gt', 'tab-focus', mode='normal')
config.bind('gT', 'tab-prev', mode='normal')
config.bind('t1', 'tab-focus 1', mode='normal')
config.bind('t2', 'tab-focus 2', mode='normal')
config.bind('t3', 'tab-focus 3', mode='normal')
config.bind('t4', 'tab-focus 4', mode='normal')
config.bind('t5', 'tab-focus 5', mode='normal')
config.bind('t6', 'tab-focus 6', mode='normal')
config.bind('t7', 'tab-focus 7', mode='normal')
config.bind('t8', 'tab-focus 8', mode='normal')
config.bind('t9', 'tab-focus 9', mode='normal')
config.bind('t0', 'tab-focus 10', mode='normal')
config.bind('ta', 'tab-focus last', mode='normal')
config.bind('th', 'tab-prev', mode='normal')
config.bind('tp', 'tab-prev', mode='normal')
config.bind('tl', 'tab-next', mode='normal')
config.bind('tn', 'tab-next', mode='normal')

# tabs moving
config.bind('tm1', 'tab-move 1', mode='normal')
config.bind('tm2', 'tab-move 2', mode='normal')
config.bind('tm3', 'tab-move 3', mode='normal')
config.bind('tm4', 'tab-move 4', mode='normal')
config.bind('tm5', 'tab-move 5', mode='normal')
config.bind('tm6', 'tab-move 6', mode='normal')
config.bind('tm7', 'tab-move 7', mode='normal')
config.bind('tm8', 'tab-move 8', mode='normal')
config.bind('tm9', 'tab-move 9', mode='normal')
config.bind('tm0', 'tab-move 10', mode='normal')
config.bind('tmh', 'tab-move -', mode='normal')
config.bind('tmp', 'tab-move -', mode='normal')
config.bind('tml', 'tab-move +', mode='normal')
config.bind('tmn', 'tab-move +', mode='normal')

# zooming
config.bind('<Ctrl-->', 'zoom-out', mode='normal')
config.bind('<Ctrl-Shift-+>', 'zoom-in', mode='normal')
config.bind('<Ctrl-=>', 'zoom', mode='normal')

# qute:// links
config.bind('Qb', 'open --tab qute://bookmarks#bookmarks', mode='normal')
config.bind('QB', 'open --tab qute://bookmarks#quickmarks', mode='normal')
config.bind('Qc', 'open --tab qute://help/commands.html', mode='normal')
config.bind('Qs', 'open --tab qute://help/settings.html', mode='normal')
config.bind('Qh', 'open --tab qute://history', mode='normal')
