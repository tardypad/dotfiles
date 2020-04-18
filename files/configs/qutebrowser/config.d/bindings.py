# remove all default bindings
c.bindings.default = {}

# maps some keys to other keys
c.bindings.key_mappings = {
    '<Ctrl-{key/return/upp}>'           : '<Return>',
    '<{key/enter/Enter}>'               : '<Return>',
    '<Shift-{key/enter/Enter}>'         : '<Return>',
    '<Shift-{key/return/Return}>'       : '<Return>',
    '<Ctrl-{key/enter/Enter}>'          : '<Ctrl-Return>',
    '<Ctrl-{key/tabulation/low}>'       : '<Tab>',
    '<Ctrl-Shift-{key/tabulation/low}>' : '<Shift-Tab>'
}


# caret mode
config.bind('<{key/escape/Escape}>',             'leave-mode',                mode='caret')
config.bind('<Ctrl-{key/interrupt/upp}>',        'leave-mode',                mode='caret')
config.bind('<{key/return/Return}>',             'yank selection',            mode='caret')
config.bind('{key/yank}',                        'yank selection',            mode='caret')
config.bind('{key/select}',                      'toggle-selection',          mode='caret')
config.bind('{key/selection_other_end}',         'reverse-selection',         mode='caret')
config.bind('<Ctrl-{key/scroll_page_up/upp}>',   'scroll-page 0 -1',          mode='caret')
config.bind('<Ctrl-{key/scroll_page_down/upp}>', 'scroll-page 0 1',           mode='caret')
config.bind('<Ctrl-{key/scroll_up/upp}>',        'scroll-page 0 -0.5',        mode='caret')
config.bind('<Ctrl-{key/scroll_down/upp}>',      'scroll-page 0 0.5',         mode='caret')
config.bind('<Ctrl-{key/scroll_line_up/upp}>',   'scroll-page 0 -0.1',        mode='caret')
config.bind('<Ctrl-{key/scroll_line_down/upp}>', 'scroll-page 0 0.1',         mode='caret')
config.bind('{key/goto_top}{key/goto_top}',      'move-to-start-of-document', mode='caret')
config.bind('{key/goto_bottom}',                 'move-to-end-of-document',   mode='caret')
config.bind('{key/left}',                        'move-to-prev-char',         mode='caret')
config.bind('{key/down}',                        'move-to-next-line',         mode='caret')
config.bind('{key/up}',                          'move-to-prev-line',         mode='caret')
config.bind('{key/right}',                       'move-to-next-char',         mode='caret')
config.bind('{key/word_previous_start}',         'move-to-prev-word',         mode='caret')
config.bind('{key/word_next_start}',             'move-to-next-word',         mode='caret')
config.bind('{key/word_next_end}',               'move-to-end-of-word',       mode='caret')
config.bind('{key/line_start}',                  'move-to-start-of-line',     mode='caret')
config.bind('{key/line_end}',                    'move-to-end-of-line',       mode='caret')
config.bind('{key/paragraph_previous}',          'move-to-end-of-prev-block', mode='caret')
config.bind('{key/paragrap_next}',               'move-to-end-of-next-block', mode='caret')

# command mode
config.bind('<{key/escape/Escape}>',                         'leave-mode',                           mode='command')
config.bind('<Ctrl-{key/interrupt/upp}>',                    'leave-mode',                           mode='command')
config.bind('<{key/return/Return}>',                         'command-accept',                       mode='command')
config.bind('<Ctrl-{key/command_start/upp}>',                'rl-beginning-of-line',                 mode='command')
config.bind('<Ctrl-{key/command_end/upp}>',                  'rl-end-of-line',                       mode='command')
config.bind('<Ctrl-{key/command_delete_backward_char/upp}>', 'rl-backward-delete-char',              mode='command')
config.bind('<Ctrl-{key/command_delete_backward_word/upp}>', 'rl-backward-kill-word',                mode='command')
config.bind('<Ctrl-{key/command_delete_start/upp}>',         'rl-unix-line-discard',                 mode='command')
config.bind('<Ctrl-{key/yank/upp}>',                         'rl-yank',                              mode='command')
config.bind('<Ctrl-{key/next/upp}>'   ,                      'command-history-next',                 mode='command')
config.bind('<Ctrl-{key/previous/upp}>',                     'command-history-prev',                 mode='command')
config.bind('<{key/down/Down}>',                             'completion-item-focus --history next', mode='command')
config.bind('<{key/up/Up}>',                                 'completion-item-focus --history prev', mode='command')
config.bind('<{key/complete/Tab}>',                          'completion-item-focus next',           mode='command')
config.bind('<Shift-{key/complete/Tab}>',                    'completion-item-focus prev',           mode='command')

# hint mode
config.bind('<{key/escape/Escape}>',      'leave-mode',  mode='hint')
config.bind('<Ctrl-{key/interrupt/upp}>', 'leave-mode',  mode='hint')
config.bind('<{key/return/Return}>',      'follow-hint', mode='hint')

# insert mode
config.bind('<{key/escape/Escape}>',      'leave-mode', mode='insert')
config.bind('<Ctrl-{key/interrupt/upp}>', 'leave-mode', mode='insert')

# passthrough mode
config.bind('<Ctrl-{key/escape/Escape}>', 'leave-mode', mode='passthrough')

# prompt mode
config.bind('<{key/escape/Escape}>',                         'leave-mode',              mode='prompt')
config.bind('<Ctrl-{key/interrupt/upp}>',                    'leave-mode',              mode='prompt')
config.bind('<{key/return/Return}>',                         'prompt-accept',           mode='prompt')
config.bind('<Ctrl-{key/command_start/upp}>',                'rl-beginning-of-line',    mode='command')
config.bind('<Ctrl-{key/command_end/upp}>',                  'rl-end-of-line',          mode='command')
config.bind('<Ctrl-{key/command_delete_backward_char/upp}>', 'rl-backward-delete-char', mode='command')
config.bind('<Ctrl-{key/command_delete_backward_word/upp}>', 'rl-backward-kill-word',   mode='command')
config.bind('<Ctrl-{key/command_delete_start/upp}>',         'rl-unix-line-discard',    mode='command')
config.bind('<Ctrl-{key/yank/upp}>',                         'rl-yank',                 mode='command')
config.bind('<{key/down/Down}>',                             'prompt-item-focus next',  mode='prompt')
config.bind('<{key/up/Up}>',                                 'prompt-item-focus prev',  mode='prompt')
config.bind('<{key/complete/Tab}>',                          'prompt-item-focus next',  mode='prompt')
config.bind('<Shift-{key/complete/Tab}>',                    'prompt-item-focus prev',  mode='prompt')

# register mode
config.bind('<{key/escape/Escape}>',      'leave-mode', mode='register')
config.bind('<Ctrl-{key/interrupt/upp}>', 'leave-mode', mode='register')

# yesno mode
config.bind('<{key/escape/Escape}>',      'leave-mode',        mode='yesno')
config.bind('<Ctrl-{key/interrupt/upp}>', 'leave-mode',        mode='yesno')
config.bind('<{key/return/Return}>',      'prompt-accept',     mode='yesno')
config.bind('{key/y}',                    'prompt-accept yes', mode='yesno')
config.bind('{key/n}',                    'prompt-accept no',  mode='yesno')


# normal mode

# mode switching
config.bind('{key/insert}',               'enter-mode insert',      mode='normal')
config.bind("{key/mark_jump}",            'enter-mode jump_mark',   mode='normal')
config.bind('{key/mark_set}',             'enter-mode set_mark',    mode='normal')
config.bind('<Ctrl-{key/escape/Escape}>', 'enter-mode passthrough', mode='normal')
config.bind('{key/select}',               'enter-mode caret',       mode='normal')

# general
config.bind('<Ctrl-{key/quit/upp}>',               'quit',                                                                     mode='normal')
config.bind('<{key/escape/Escape}>',               'clear-keychain ;; stop ;; search ;; clear-messages ;; fullscreen --leave', mode='normal')
config.bind('<{key/return/Return}>',               'search',                                                                   mode='normal')
config.bind('<{key/space/Space}>',                 'nop',                                                                      mode='normal')
config.bind('<Alt-Shift-{key/reload_config/upp}>', 'message-info "reloading config" ;; later 100 config-source',               mode='normal')
config.bind('{key/command}',                       'set-cmd-text :',                                                           mode='normal')
config.bind('{key/repeat}',                        'repeat-command',                                                           mode='normal')
config.bind('{key/open}',                          'set-cmd-text --space :open',                                               mode='normal')
config.bind('{key/reload/low}',                    'reload',                                                                   mode='normal')
config.bind('{key/reload/upp}',                    'reload --force',                                                           mode='normal')
config.bind('{key/undo}',                          'undo',                                                                     mode='normal')
config.bind('{key/zoom/upp}',                      'fullscreen',                                                               mode='normal')
config.bind('{key/f}',                             'hint all current',                                                         mode='normal')
config.bind('<Ctrl-{key/S}>',                      'view-source',                                                              mode='normal')

# visual navigation
config.bind('<Ctrl-{key/scroll_page_up/upp}>',   'scroll-page 0 -1',   mode='normal')
config.bind('<Ctrl-{key/scroll_page_down/upp}>', 'scroll-page 0 1',    mode='normal')
config.bind('<Ctrl-{key/scroll_up/upp}>',        'scroll-page 0 -0.5', mode='normal')
config.bind('<Ctrl-{key/scroll_down/upp}>',      'scroll-page 0 0.5',  mode='normal')
config.bind('<Ctrl-{key/scroll_line_up/upp}>',   'scroll-page 0 -0.1', mode='normal')
config.bind('<Ctrl-{key/scroll_line_down/upp}>', 'scroll-page 0 0.1',  mode='normal')
config.bind('{key/goto_top}{key/goto_top}',      'scroll-to-perc 0',   mode='normal')
config.bind('{key/goto_bottom}',                 'scroll-to-perc 100', mode='normal')
config.bind('{key/left/low}',                    'scroll left',        mode='normal')
config.bind('{key/down/low}',                    'scroll down',        mode='normal')
config.bind('{key/up/low}',                      'scroll up',          mode='normal')
config.bind('{key/right/low}',                   'scroll right',       mode='normal')

# history navigation
config.bind('{key/left/upp}',  'back',    mode='normal')
config.bind('{key/right/upp}', 'forward', mode='normal')

# search
config.bind('{key/search_forward}',        'set-cmd-text /', mode='normal')
config.bind('{key/search_backward}',       'set-cmd-text ?', mode='normal')
config.bind('{key/search_repeat}',         'search-next',    mode='normal')
config.bind('{key/search_repeat_reverse}', 'search-prev',    mode='normal')

# macros
config.bind('{key/macro_record}', 'record-macro', mode='normal')
config.bind('{key/macro_run}',    'run-macro',    mode='normal')

# downloads
config.bind('{key/download}{key/a}',    'download-cancel', mode='normal')
config.bind('{key/download}{key/c}',    'download-clear',  mode='normal')
config.bind('{key/download}{key/open}', 'download-open',   mode='normal')
config.bind('{key/download}{key/kill}', 'download-delete', mode='normal')

# yanking
config.bind('{key/yank}{key/yank}', 'yank url',        mode='normal')
config.bind('{key/yank}{key/d}',    'yank domain',     mode='normal')
config.bind('{key/yank}{key/p}',    'yank pretty-url', mode='normal')
config.bind('{key/yank}{key/s}',    'yank selection',  mode='normal')
config.bind('{key/yank}{key/t}',    'yank title',      mode='normal')

# bookmarks
config.bind('{key/bookmark/low}{key/create}', 'set-cmd-text --space :bookmark-add {url}', mode='normal')
config.bind('{key/bookmark/low}{key/kill}',   'set-cmd-text --space :bookmark-del',       mode='normal')
config.bind('{key/bookmark/low}{key/open}',   'set-cmd-text --space :bookmark-load',      mode='normal')

# quickmarks
config.bind('{key/bookmark/upp}{key/create}', 'set-cmd-text --space :quickmark-add {url}', mode='normal')
config.bind('{key/bookmark/upp}{key/kill}',   'set-cmd-text --space :quickmark-del',       mode='normal')
config.bind('{key/bookmark/upp}{key/open}',   'set-cmd-text --space :quickmark-load',      mode='normal')

# tabs management
config.bind('{key/tab}{key/create}',       'open --tab about:blank ;; set-cmd-text --space :open', mode='normal')
config.bind('{key/tab}{key/kill}',         'tab-close',                                            mode='normal')
config.bind('{key/tab}{key/bookmark/low}', 'set-cmd-text --space :bookmark-load --tab',            mode='normal')
config.bind('{key/tab}{key/bookmark/upp}', 'set-cmd-text --space :quickmark-load --tab',           mode='normal')
config.bind('{key/tab}{key/left/upp}',     'back --tab',                                           mode='normal')
config.bind('{key/tab}{key/right/upp}',    'forward --tab',                                        mode='normal')
config.bind('{key/tab}{key/open}',         'set-cmd-text --space :open --tab',                     mode='normal')
config.bind('{key/tab}{key/window}',       'tab-give',                                             mode='normal')
config.bind('{key/tab}{key/f}',            'hint all tab-fg',                                      mode='normal')

# windows management
config.bind('{key/window}{key/create}',       'open --window about:blank',                     mode='normal')
config.bind('{key/window}{key/kill}',         'close',                                         mode='normal')
config.bind('{key/window}{key/bookmark/low}', 'set-cmd-text --space :bookmark-load --window',  mode='normal')
config.bind('{key/window}{key/bookmark/upp}', 'set-cmd-text --space :quickmark-load --window', mode='normal')
config.bind('{key/window}{key/left/upp}',     'back --window',                                 mode='normal')
config.bind('{key/window}{key/right/upp}',    'forward --window',                              mode='normal')
config.bind('{key/window}{key/open}',         'set-cmd-text --space :open --window',           mode='normal')
config.bind('{key/window}{key/p}',            'open --private about:blank',                    mode='normal')
config.bind('{key/window}{key/f}',            'hint all window',                               mode='normal')


# sessions management
config.bind('{key/session}{key/save}', 'set-cmd-text --space :session-save',   mode='normal')
config.bind('{key/session}{key/kill}', 'set-cmd-text --space :session-delete', mode='normal')
config.bind('{key/session}{key/open}', 'set-cmd-text --space :session-load',   mode='normal')

# tabs navigation
config.bind('{key/g}{key/tab/low}',     'tab-focus',              mode='normal')
config.bind('{key/g}{key/tab/upp}',     'tab-prev',               mode='normal')
config.bind('{key/tab}{key/1}',         'tab-focus --no-last 1',  mode='normal')
config.bind('{key/tab}{key/2}',         'tab-focus --no-last 2',  mode='normal')
config.bind('{key/tab}{key/3}',         'tab-focus --no-last 3',  mode='normal')
config.bind('{key/tab}{key/4}',         'tab-focus --no-last 4',  mode='normal')
config.bind('{key/tab}{key/5}',         'tab-focus --no-last 5',  mode='normal')
config.bind('{key/tab}{key/6}',         'tab-focus --no-last 6',  mode='normal')
config.bind('{key/tab}{key/7}',         'tab-focus --no-last 7',  mode='normal')
config.bind('{key/tab}{key/8}',         'tab-focus --no-last 8',  mode='normal')
config.bind('{key/tab}{key/9}',         'tab-focus --no-last 9',  mode='normal')
config.bind('{key/tab}{key/0}',         'tab-focus --no-last 10', mode='normal')
config.bind('{key/tab}{key/alternate}', 'tab-focus last',         mode='normal')
config.bind('{key/tab}{key/left}',      'tab-prev',               mode='normal')
config.bind('{key/tab}{key/previous}',  'tab-prev',               mode='normal')
config.bind('{key/tab}{key/right}',     'tab-next',               mode='normal')
config.bind('{key/tab}{key/next}',      'tab-next',               mode='normal')

# tabs moving
config.bind('{key/tab}{key/move}{key/1}',        'tab-move 1',  mode='normal')
config.bind('{key/tab}{key/move}{key/2}',        'tab-move 2',  mode='normal')
config.bind('{key/tab}{key/move}{key/3}',        'tab-move 3',  mode='normal')
config.bind('{key/tab}{key/move}{key/4}',        'tab-move 4',  mode='normal')
config.bind('{key/tab}{key/move}{key/5}',        'tab-move 5',  mode='normal')
config.bind('{key/tab}{key/move}{key/6}',        'tab-move 6',  mode='normal')
config.bind('{key/tab}{key/move}{key/7}',        'tab-move 7',  mode='normal')
config.bind('{key/tab}{key/move}{key/8}',        'tab-move 8',  mode='normal')
config.bind('{key/tab}{key/move}{key/9}',        'tab-move 9',  mode='normal')
config.bind('{key/tab}{key/move}{key/0}',        'tab-move 10', mode='normal')
config.bind('{key/tab}{key/move}{key/left}',     'tab-move -',  mode='normal')
config.bind('{key/tab}{key/move}{key/previous}', 'tab-move -',  mode='normal')
config.bind('{key/tab}{key/move}{key/right}',    'tab-move +',  mode='normal')
config.bind('{key/tab}{key/move}{key/next}',     'tab-move +',  mode='normal')

# zooming
config.bind('<Ctrl-{key/zoom_out}>',      'zoom-out', mode='normal')
config.bind('<Ctrl-Shift-{key/zoom_in}>', 'zoom-in',  mode='normal')
config.bind('<Ctrl-{key/zoom_reset}>',    'zoom',     mode='normal')

# qute:// links
config.bind('{key/Q}{key/bookmark/low}', 'open --tab qute://bookmarks#bookmarks',  mode='normal')
config.bind('{key/Q}{key/bookmark/upp}', 'open --tab qute://bookmarks#quickmarks', mode='normal')
config.bind('{key/Q}{key/c}'           , 'open --tab qute://help/commands.html',   mode='normal')
config.bind('{key/Q}{key/s}'           , 'open --tab qute://help/settings.html',   mode='normal')
config.bind('{key/Q}{key/h}'           , 'open --tab qute://history',              mode='normal')

# Javascript temporary toggling  on current domain
config.bind('<Ctrl-{key/J}>', 'config-cycle --print --temp --pattern={url:host} content.javascript.enabled ;; reload', mode='normal')
