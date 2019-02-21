" reset default colors for dark background
set background=dark
highlight clear
syntax reset

" color scheme name
let g:colors_name="tardypad"

" xterm-true-color (for vim within tmux)
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" use 24 bit true color (uses gui* values in the terminal)
" if using terminal emulator in graphical environment
if $DISPLAY != ""
  set termguicolors
endif

" define hex colors for GUI
let s:base00_gui                 = "#{color/base00/hex}"
let s:base01_gui                 = "#{color/base01/hex}"
let s:base02_gui                 = "#{color/base02/hex}"
let s:base03_gui                 = "#{color/base03/hex}"
let s:base04_gui                 = "#{color/base04/hex}"
let s:base05_gui                 = "#{color/base05/hex}"
let s:base06_gui                 = "#{color/base06/hex}"
let s:base07_gui                 = "#{color/base07/hex}"
let s:base08_gui                 = "#{color/base08/hex}"
let s:base09_gui                 = "#{color/base09/hex}"
let s:base0A_gui                 = "#{color/base0A/hex}"
let s:base0B_gui                 = "#{color/base0B/hex}"
let s:base0C_gui                 = "#{color/base0C/hex}"
let s:base0D_gui                 = "#{color/base0D/hex}"
let s:base0E_gui                 = "#{color/base0E/hex}"
let s:base0F_gui                 = "#{color/base0F/hex}"
let s:error_gui                  = "#{color/error/hex}"
let s:warning_gui                = "#{color/warning/hex}"
let s:notice_gui                 = "#{color/notice/hex}"
let s:background_gui             = "#{color/background/hex}"
let s:foreground_gui             = "#{color/foreground/hex}"
let s:status_line_background_gui = "#{color/status_line_background/hex}"
let s:status_line_foreground_gui = "#{color/status_line_foreground/hex}"
let s:popup_background_gui       = "#{color/popup_background/hex}"
let s:popup_foreground_gui       = "#{color/popup_foreground/hex}"
let s:search_match_gui           = "#{color/search_match/hex}"
let s:current_item_gui           = "#{color/current_item/hex}"
let s:delete_gui                 = "#{color/delete/hex}"
let s:add_gui                    = "#{color/add/hex}"

" define number colors for terminal
let s:base00_term                 = "{color/base00/number}"
let s:base01_term                 = "{color/base01/number}"
let s:base02_term                 = "{color/base02/number}"
let s:base03_term                 = "{color/base03/number}"
let s:base04_term                 = "{color/base04/number}"
let s:base05_term                 = "{color/base05/number}"
let s:base06_term                 = "{color/base06/number}"
let s:base07_term                 = "{color/base07/number}"
let s:base08_term                 = "{color/base08/number}"
let s:base09_term                 = "{color/base09/number}"
let s:base0A_term                 = "{color/base0A/number}"
let s:base0B_term                 = "{color/base0B/number}"
let s:base0C_term                 = "{color/base0C/number}"
let s:base0D_term                 = "{color/base0D/number}"
let s:base0E_term                 = "{color/base0E/number}"
let s:base0F_term                 = "{color/base0F/number}"
let s:error_term                  = "{color/error/number}"
let s:warning_term                = "{color/warning/number}"
let s:notice_term                 = "{color/notice/number}"
let s:background_term             = "{color/background/number}"
let s:foreground_term             = "{color/foreground/number}"
let s:status_line_background_term = "{color/status_line_background/number}"
let s:status_line_foreground_term = "{color/status_line_foreground/number}"
let s:popup_background_term       = "{color/popup_background/number}"
let s:popup_foreground_term       = "{color/popup_foreground/number}"
let s:search_match_term           = "{color/search_match/number}"
let s:current_item_term           = "{color/current_item/number}"
let s:delete_term                 = "{color/delete/number}"
let s:add_term                    = "{color/add/number}"

" helper function for highlight
function! s:highlight(group, base_fg, base_bg, attr)
  let l:command = "highlight " . a:group
  if a:base_fg != ""
    let l:command .= " ctermfg=" . s:{a:base_fg}_term . " guifg=" . s:{a:base_fg}_gui
  else
    let l:command .= " ctermfg=NONE guifg=NONE"
  endif
  if a:base_bg != ""
    let l:command .= " ctermbg=" . s:{a:base_bg}_term . " guibg=" . s:{a:base_bg}_gui
  else
    let l:command .= " ctermbg=NONE guibg=NONE"
  endif
  if a:attr != ""
    let l:command .= " cterm=" . a:attr " gui=" . a:attr
  else
    let l:command .= " cterm=NONE gui=NONE"
  endif
  exec l:command
endfunction

" misc
call s:highlight("ColorColumn",  ""      ,     "base01", "")
call s:highlight("Conceal",      "base0A",     "",       "")
call s:highlight("Directory",    "base09",     "",       "bold")
call s:highlight("EndOfBuffer",  "background", "",       "")
call s:highlight("MatchParen",   "base0B",     "base03", "bold")
call s:highlight("NonText",      "base00",     "base04", "")
call s:highlight("Normal",       "foreground", "",       "")
call s:highlight("SignColumn",   "base02",     "",       "")
call s:highlight("SpecialKey",   "base03",     "base01", "bold")
call s:highlight("Terminal",     "foreground", "",       "")
call s:highlight("Title",        "base09",     "",       "bold")
call s:highlight("Visual",       "base00",     "base03", "")

" line number
call s:highlight("CursorLineNr", "base04", "",       "")
call s:highlight("LineNr",       "base03", "",       "")

" cursor
call s:highlight("Cursor",       "background", "foreground", "")
call s:highlight("CursorColumn", "",           "base01", "")
call s:highlight("CursorLine",   "",           "base01", "")

" diff
call s:highlight("DiffAdd",      "add",    "base01", "")
call s:highlight("DiffChange",   "base0A", "base01", "")
call s:highlight("DiffDelete",   "delete", "base01", "")
call s:highlight("DiffText",     "base09", "base01", "")

" folds
call s:highlight("FoldColumn",   "base03", "",       "")
call s:highlight("Folded",       "base04", "",       "italic")

" pop up menu
call s:highlight("Pmenu",        "popup_foreground", "popup_background", "")
call s:highlight("PmenuSbar",    "",                 "popup_background", "")
call s:highlight("PmenuSel",     "base00",           "current_item",     "")
call s:highlight("PmenuThumb",   "",                 "popup_foreground", "")

" spelling
call s:highlight("SpellBad",     "warning", "", "underline")
call s:highlight("SpellCap",     "warning", "", "underline")
call s:highlight("SpellLocal",   "warning", "", "underline")
call s:highlight("SpellRare",    "warning", "", "underline")

" prompt
call s:highlight("ErrorMsg",     "base00",  "error",  "")
call s:highlight("ModeMsg",      "notice",  "",       "")
call s:highlight("MoreMsg",      "notice",  "",       "")
call s:highlight("Question",     "base0A",  "",       "")
call s:highlight("WarningMsg",   "base00", "warning", "")

" status line and splits
call s:highlight("StatusLine",   "base0A",                 "base03",                 "")
call s:highlight("StatusLineNC", "status_line_foreground", "status_line_background", "")
call s:highlight("VertSplit",    "status_line_background", "",                       "")
call s:highlight("WildMenu",     "base00",                 "current_item",           "")
highlight! link StatusLineTerm   StatusLine
highlight! link StatusLineTermNC StatusLineNC

" search
call s:highlight("IncSearch",    "base00", "base09", "")
call s:highlight("Search",       "base00", "search_match", "")
highlight! link QuickFixLine Search

" tabs
call s:highlight("TabLine",      "status_line_foreground", "status_line_background", "")
call s:highlight("TabLineFill",  "status_line_foreground", "status_line_background", "")
call s:highlight("TabLineSel",   "base0A",                 "base03",                 "")

" languages
call s:highlight("Comment",      "base03", "",       "italic")
call s:highlight("Constant",     "base0B", "",       "")
call s:highlight("Identifier",   "base0C", "",       "")
call s:highlight("Statement",    "base0A", "",       "")
call s:highlight("PreProc",      "base08", "",       "")
call s:highlight("Type",         "base09", "",       "")
call s:highlight("Special",      "base0C", "",       "")
call s:highlight("Underlined",   "base07", "",       "")
call s:highlight("Ignore",       "",       "",       "")
call s:highlight("Error",        "error",  "",       "bold")
call s:highlight("Todo",         "base07", "",       "bold")
highlight! link String           Constant
highlight! link Character        Constant
highlight! link Boolean          Constant
highlight! link Number           Constant
highlight! link Float            Constant
highlight! link Function         Identifier
highlight! link Conditional      Statement
highlight! link Repeat           Statement
highlight! link Label            Statement
highlight! link Operator         Statement
highlight! link Keyword          Statement
highlight! link Exception        Statement
highlight! link Include          PreProc
highlight! link Define           PreProc
highlight! link Macro            PreProc
highlight! link PreCondit        PreProc
highlight! link StorageClass     Type
highlight! link Structure        Type
highlight! link Typedef          Type
highlight! link SpecialChar      Special
highlight! link Tag              Special
highlight! link Delimiter        Special
highlight! link SpecialComment   Special
highlight! link Debug            Special

" Tagbar plugin
call s:highlight("TagbarFoldIcon",            "base0A", "", "")
call s:highlight("TagbarScope",               "base0C", "", "")
call s:highlight("TagbarKind",                "base0C", "", "")
call s:highlight("TagbarNestedKind",          "base0B", "", "")
call s:highlight("TagbarType",                "base0B", "", "")
call s:highlight("TagbarVisibilityPublic",    "base07", "", "")
call s:highlight("TagbarVisibilityProtected", "base07", "", "")
call s:highlight("TagbarVisibilityPrivate",   "base07", "", "")
