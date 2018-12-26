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
let s:base00_gui            = "#{{{base00/hex}}}"
let s:base01_gui            = "#{{{base01/hex}}}"
let s:base02_gui            = "#{{{base02/hex}}}"
let s:base03_gui            = "#{{{base03/hex}}}"
let s:base04_gui            = "#{{{base04/hex}}}"
let s:base05_gui            = "#{{{base05/hex}}}"
let s:base06_gui            = "#{{{base06/hex}}}"
let s:base07_gui            = "#{{{base07/hex}}}"
let s:base08_gui            = "#{{{base08/hex}}}"
let s:base09_gui            = "#{{{base09/hex}}}"
let s:base0A_gui            = "#{{{base0A/hex}}}"
let s:base0B_gui            = "#{{{base0B/hex}}}"
let s:base0C_gui            = "#{{{base0C/hex}}}"
let s:base0D_gui            = "#{{{base0D/hex}}}"
let s:base0E_gui            = "#{{{base0E/hex}}}"
let s:base0F_gui            = "#{{{base0F/hex}}}"
let s:base16_error_gui      = "#{{{base16/error/hex}}}"
let s:base16_background_gui = "#{{{base16/background/hex}}}"
let s:base16_foreground_gui = "#{{{base16/foreground/hex}}}"

" define number colors for terminal
let s:base00_term            = "{{{base00/number}}}"
let s:base01_term            = "{{{base01/number}}}"
let s:base02_term            = "{{{base02/number}}}"
let s:base03_term            = "{{{base03/number}}}"
let s:base04_term            = "{{{base04/number}}}"
let s:base05_term            = "{{{base05/number}}}"
let s:base06_term            = "{{{base06/number}}}"
let s:base07_term            = "{{{base07/number}}}"
let s:base08_term            = "{{{base08/number}}}"
let s:base09_term            = "{{{base09/number}}}"
let s:base0A_term            = "{{{base0A/number}}}"
let s:base0B_term            = "{{{base0B/number}}}"
let s:base0C_term            = "{{{base0C/number}}}"
let s:base0D_term            = "{{{base0D/number}}}"
let s:base0E_term            = "{{{base0E/number}}}"
let s:base0F_term            = "{{{base0F/number}}}"
let s:base16_error_term      = "{{{base16/error/number}}}"
let s:base16_background_term = "{{{base16/background/number}}}"
let s:base16_foreground_term = "{{{base16/foreground/number}}}"

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
call s:highlight("ColorColumn",  ""      ,            "base01", "")
call s:highlight("Conceal",      "base0D",            "",       "")
call s:highlight("Directory",    "base0D",            "",       "")
call s:highlight("EndOfBuffer",  "base16_background", "",       "")
call s:highlight("FoldColumn",   "base04",            "",       "")
call s:highlight("Folded",       "base04",            "",       "bold")
call s:highlight("MatchParen",   "base07",            "base01", "bold")
call s:highlight("NonText",      "base00",            "base04", "")
call s:highlight("Normal",       "base16_foreground", "",       "")
call s:highlight("QuickFixLine", "base00",            "base0A", "")
call s:highlight("SignColumn",   "base02",            "",       "")
call s:highlight("SpecialKey",   "base03",            "base01", "bold")
call s:highlight("Terminal",     "base04",            "",       "")
call s:highlight("Title",        "base0A",            "",       "bold")
call s:highlight("Visual",       "base00",            "base02", "")

" line number
call s:highlight("CursorLineNr", "base04", "",       "bold")
call s:highlight("LineNr",       "base02", "",       "")

" cursor
call s:highlight("Cursor",       "base07", "base0D", "")
call s:highlight("CursorColumn", "",       "base01", "")
call s:highlight("CursorIM",     "",       "base04", "")
call s:highlight("CursorLine",   "",       "base01", "")

" diff
call s:highlight("DiffAdd",      "base0B", "base01", "")
call s:highlight("DiffChange",   "base0A", "base01", "")
call s:highlight("DiffDelete",   "base0F", "base01", "bold")
call s:highlight("DiffText",     "base0D", "base01", "")

" pop up menu
call s:highlight("Pmenu",        "base01", "base04", "")
call s:highlight("PmenuSbar",    "base04", "base06", "")
call s:highlight("PmenuSel",     "base06", "base02", "")
call s:highlight("PmenuThumb",   "base00", "base04", "")

" spelling
call s:highlight("SpellBad",     "base0E", "",       "underline")
call s:highlight("SpellCap",     "base0E", "",       "underline")
call s:highlight("SpellLocal",   "base0A", "",       "underline")
call s:highlight("SpellRare",    "base0C", "",       "underline")

" prompt
call s:highlight("ErrorMsg",     "base07", "base16_error", "")
call s:highlight("ModeMsg",      "base0D", "",             "")
call s:highlight("MoreMsg",      "base0D", "",             "")
call s:highlight("Question",     "base0C", "",             "bold")
call s:highlight("WarningMsg",   "base09", "",             "bold")

" status line and splits
call s:highlight("StatusLine",   "base01", "base04", "")
call s:highlight("StatusLineNC", "base01", "base02", "")
call s:highlight("VertSplit",    "base02", "",       "")
call s:highlight("WildMenu",     "base01", "base06", "")
highlight! link StatusLineTerm   StatusLine
highlight! link StatusLineTermNC StatusLineNC

" search
call s:highlight("IncSearch",    "base00", "base09", "")
call s:highlight("Search",       "base00", "base0A", "")

" tabs
call s:highlight("TabLine",      "base01", "base02", "")
call s:highlight("TabLineFill",  "base01", "base02", "")
call s:highlight("TabLineSel",   "base01", "base04", "")

" languages
call s:highlight("Comment",      "base02",       "",       "italic")
call s:highlight("Constant",     "base0C",       "",       "")
call s:highlight("Identifier",   "base0D",       "",       "")
call s:highlight("Statement",    "base0B",       "",       "")
call s:highlight("PreProc",      "base09",       "",       "")
call s:highlight("Type",         "base0A",       "",       "")
call s:highlight("Special",      "base09",       "",       "")
call s:highlight("Underlined",   "base0E",       "",       "")
call s:highlight("Ignore",       "",             "",       "")
call s:highlight("Error",        "base16_error", "",       "bold")
call s:highlight("Todo",         "base0F",       "",       "bold")
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
call s:highlight("TagbarScope",               "base0D", "", "")
call s:highlight("TagbarKind",                "base0D", "", "")
call s:highlight("TagbarNestedKind",          "base0C", "", "")
call s:highlight("TagbarType",                "base0B", "", "")
call s:highlight("TagbarVisibilityPublic",    "base0A", "", "")
call s:highlight("TagbarVisibilityProtected", "base0A", "", "")
call s:highlight("TagbarVisibilityPrivate",   "base0A", "", "")
