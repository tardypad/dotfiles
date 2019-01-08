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
let s:base00_gui                 = "#{{{base00/hex}}}"
let s:base01_gui                 = "#{{{base01/hex}}}"
let s:base02_gui                 = "#{{{base02/hex}}}"
let s:base03_gui                 = "#{{{base03/hex}}}"
let s:base04_gui                 = "#{{{base04/hex}}}"
let s:base05_gui                 = "#{{{base05/hex}}}"
let s:base06_gui                 = "#{{{base06/hex}}}"
let s:base07_gui                 = "#{{{base07/hex}}}"
let s:base08_gui                 = "#{{{base08/hex}}}"
let s:base09_gui                 = "#{{{base09/hex}}}"
let s:base0A_gui                 = "#{{{base0A/hex}}}"
let s:base0B_gui                 = "#{{{base0B/hex}}}"
let s:base0C_gui                 = "#{{{base0C/hex}}}"
let s:base0D_gui                 = "#{{{base0D/hex}}}"
let s:base0E_gui                 = "#{{{base0E/hex}}}"
let s:base0F_gui                 = "#{{{base0F/hex}}}"
let s:error_gui                  = "#{{{error/hex}}}"
let s:warning_gui                = "#{{{warning/hex}}}"
let s:notice_gui                 = "#{{{notice/hex}}}"
let s:background_gui             = "#{{{background/hex}}}"
let s:foreground_gui             = "#{{{foreground/hex}}}"
let s:status_line_background_gui = "#{{{status_line_background/hex}}}"
let s:status_line_foreground_gui = "#{{{status_line_foreground/hex}}}"
let s:search_match_gui           = "#{{{search_match/hex}}}"
let s:current_item_gui           = "#{{{current_item/hex}}}"
let s:delete_gui                 = "#{{{delete/hex}}}"
let s:add_gui                    = "#{{{add/hex}}}"

" define number colors for terminal
let s:base00_term                 = "{{{base00/number}}}"
let s:base01_term                 = "{{{base01/number}}}"
let s:base02_term                 = "{{{base02/number}}}"
let s:base03_term                 = "{{{base03/number}}}"
let s:base04_term                 = "{{{base04/number}}}"
let s:base05_term                 = "{{{base05/number}}}"
let s:base06_term                 = "{{{base06/number}}}"
let s:base07_term                 = "{{{base07/number}}}"
let s:base08_term                 = "{{{base08/number}}}"
let s:base09_term                 = "{{{base09/number}}}"
let s:base0A_term                 = "{{{base0A/number}}}"
let s:base0B_term                 = "{{{base0B/number}}}"
let s:base0C_term                 = "{{{base0C/number}}}"
let s:base0D_term                 = "{{{base0D/number}}}"
let s:base0E_term                 = "{{{base0E/number}}}"
let s:base0F_term                 = "{{{base0F/number}}}"
let s:error_term                  = "{{{error/number}}}"
let s:warning_term                = "{{{warning/number}}}"
let s:notice_term                 = "{{{notice/number}}}"
let s:background_term             = "{{{background/number}}}"
let s:foreground_term             = "{{{foreground/number}}}"
let s:status_line_background_term = "{{{status_line_background/number}}}"
let s:status_line_foreground_term = "{{{status_line_foreground/number}}}"
let s:search_match_term           = "{{{search_match/number}}}"
let s:current_item_term           = "{{{current_item/number}}}"
let s:delete_term                 = "{{{delete/number}}}"
let s:add_term                    = "{{{add/number}}}"

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
call s:highlight("Conceal",      "base0D",     "",       "")
call s:highlight("Directory",    "base05",     "",       "bold")
call s:highlight("EndOfBuffer",  "background", "",       "")
call s:highlight("MatchParen",   "base0C",     "base03", "bold")
call s:highlight("NonText",      "base00",     "base04", "")
call s:highlight("Normal",       "foreground", "",       "")
call s:highlight("SignColumn",   "base02",     "",       "")
call s:highlight("SpecialKey",   "base03",     "base01", "bold")
call s:highlight("Terminal",     "foreground", "",       "")
call s:highlight("Title",        "base05",     "",       "bold")
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
call s:highlight("DiffChange",   "base0D", "base01", "")
call s:highlight("DiffDelete",   "delete", "base01", "")
call s:highlight("DiffText",     "base05", "base01", "")

" folds
call s:highlight("FoldColumn",   "base03", "",       "")
call s:highlight("Folded",       "base04", "",       "italic")

" pop up menu
call s:highlight("Pmenu",        "base04", "base02",       "")
call s:highlight("PmenuSbar",    "",       "base03",       "")
call s:highlight("PmenuSel",     "base00", "current_item", "")
call s:highlight("PmenuThumb",   "",       "base04",       "")

" spelling
call s:highlight("SpellBad",     "warning", "", "underline")
call s:highlight("SpellCap",     "warning", "", "underline")
call s:highlight("SpellLocal",   "warning", "", "underline")
call s:highlight("SpellRare",    "warning", "", "underline")

" prompt
call s:highlight("ErrorMsg",     "base07",  "error",  "")
call s:highlight("ModeMsg",      "notice",  "",       "")
call s:highlight("MoreMsg",      "notice",  "",       "")
call s:highlight("Question",     "base0D",  "",       "")
call s:highlight("WarningMsg",   "base07", "warning", "")

" status line and splits
call s:highlight("StatusLine",   "base0D",                 "base03",                 "")
call s:highlight("StatusLineNC", "status_line_foreground", "status_line_background", "")
call s:highlight("VertSplit",    "status_line_background", "",                       "")
call s:highlight("WildMenu",     "base00",                 "current_item",           "")
highlight! link StatusLineTerm   StatusLine
highlight! link StatusLineTermNC StatusLineNC

" search
call s:highlight("IncSearch",    "base00", "base05", "")
call s:highlight("Search",       "base00", "search_match", "")
highlight! link QuickFixLine Search

" tabs
call s:highlight("TabLine",      "status_line_foreground", "status_line_background", "")
call s:highlight("TabLineFill",  "status_line_foreground", "status_line_background", "")
call s:highlight("TabLineSel",   "base0D",                 "base03",                 "")

" languages
call s:highlight("Comment",      "base03", "",       "italic")
call s:highlight("Constant",     "base0C", "",       "")
call s:highlight("Identifier",   "base0B", "",       "")
call s:highlight("Statement",    "base0D", "",       "")
call s:highlight("PreProc",      "base0E", "",       "")
call s:highlight("Type",         "base05", "",       "")
call s:highlight("Special",      "base0B", "",       "")
call s:highlight("Underlined",   "base0F", "",       "")
call s:highlight("Ignore",       "",       "",       "")
call s:highlight("Error",        "error",  "",       "bold")
call s:highlight("Todo",         "base0F", "",       "bold")
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
call s:highlight("TagbarFoldIcon",            "base0D", "", "")
call s:highlight("TagbarScope",               "base0B", "", "")
call s:highlight("TagbarKind",                "base0B", "", "")
call s:highlight("TagbarNestedKind",          "base0C", "", "")
call s:highlight("TagbarType",                "base0C", "", "")
call s:highlight("TagbarVisibilityPublic",    "base0F", "", "")
call s:highlight("TagbarVisibilityProtected", "base0F", "", "")
call s:highlight("TagbarVisibilityPrivate",   "base0F", "", "")
