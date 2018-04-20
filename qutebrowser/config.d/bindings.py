# tabs management
config.unbind('K', mode='normal')
config.unbind('J', mode='normal')
config.unbind('d', mode='normal')
config.unbind('D', mode='normal')
config.unbind('<Ctrl-W>', mode='normal')
config.bind('<Space>tc', 'open -t about:blank ;; set-cmd-text -s :open', mode='normal')
config.bind('<Space>tx', 'tab-close', mode='normal')
config.bind('<Space>tr', 'set-cmd-text -s :open', mode='normal')
config.bind('X', 'tab-close', mode='normal')

# tabs navigation
config.bind('gt', 'tab-focus', mode='normal')
config.bind('gT', 'tab-prev', mode='normal')
config.bind('<Space>t1', 'tab-focus 1', mode='normal')
config.bind('<Space>t2', 'tab-focus 2', mode='normal')
config.bind('<Space>t3', 'tab-focus 3', mode='normal')
config.bind('<Space>t4', 'tab-focus 4', mode='normal')
config.bind('<Space>t5', 'tab-focus 5', mode='normal')
config.bind('<Space>t6', 'tab-focus 6', mode='normal')
config.bind('<Space>t7', 'tab-focus 7', mode='normal')
config.bind('<Space>t8', 'tab-focus 8', mode='normal')
config.bind('<Space>t9', 'tab-focus 9', mode='normal')
config.bind('<Space>t0', 'tab-focus 10', mode='normal')
config.bind('<Space>ta', 'tab-focus last', mode='normal')
config.bind('<Space>th', 'tab-prev', mode='normal')
config.bind('<Space>tp', 'tab-prev', mode='normal')
config.bind('<Space>tl', 'tab-next', mode='normal')
config.bind('<Space>tn', 'tab-next', mode='normal')


# tabs moving
config.bind('<Space>tm1', 'tab-move 1', mode='normal')
config.bind('<Space>tm2', 'tab-move 2', mode='normal')
config.bind('<Space>tm3', 'tab-move 3', mode='normal')
config.bind('<Space>tm4', 'tab-move 4', mode='normal')
config.bind('<Space>tm5', 'tab-move 5', mode='normal')
config.bind('<Space>tm6', 'tab-move 6', mode='normal')
config.bind('<Space>tm7', 'tab-move 7', mode='normal')
config.bind('<Space>tm8', 'tab-move 8', mode='normal')
config.bind('<Space>tm9', 'tab-move 9', mode='normal')
config.bind('<Space>tm0', 'tab-move 10', mode='normal')
config.bind('<Space>tmh', 'tab-move -', mode='normal')
config.bind('<Space>tmp', 'tab-move -', mode='normal')
config.bind('<Space>tml', 'tab-move +', mode='normal')
config.bind('<Space>tmn', 'tab-move +', mode='normal')

# zooming
config.unbind('-', mode='normal')
config.unbind('+', mode='normal')
config.unbind('=', mode='normal')
config.bind('<Ctrl-->', 'zoom-out', mode='normal')
config.bind('<Ctrl-Shift-+>', 'zoom-in', mode='normal')
config.bind('<Ctrl-=>', 'zoom', mode='normal')
