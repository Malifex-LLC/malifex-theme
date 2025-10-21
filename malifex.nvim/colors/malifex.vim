" Malifex colorscheme for Vim/Neovim
" Maintainer: Malifex Theme
" License: MIT

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "malifex"

" Color definitions - mapped to bat/ansi positions
let background = "#000000"
let foreground = "#baa997"
let cursor     = "#baa997"

" ANSI Colors (bat compatible)
let black      = "#000000"    " ansi 0 - background
let red        = "#ff6b6b"    " ansi 1 - red (errors, functions)
let green      = "#8b2635"    " ansi 2 - green (strings, added)
let yellow     = "#baa997"    " ansi 3 - yellow (types, warnings)
let blue       = "#537a5a"    " ansi 4 - blue (keywords, info)
let magenta    = "#f2e5bc"    " ansi 5 - magenta (constants)
let cyan       = "#ff6b6b"    " ansi 6 - cyan (special)
let white      = "#f2e5bc"    " ansi 7 - foreground
let br_black   = "#4d4d4d"    " ansi 8 - bright black (comments)
let br_red     = "#ff8888"    " ansi 9 - bright red
let br_green   = "#a63d4d"    " ansi 10 - bright green
let br_yellow  = "#d4c3b2"    " ansi 11 - bright yellow
let br_blue    = "#6a9470"    " ansi 12 - bright blue
let br_magenta = "#f7eed1"    " ansi 13 - bright magenta
let br_cyan    = "#ff8888"    " ansi 14 - bright cyan
let br_white   = "#ffffff"    " ansi 15 - bright white

" UI shades
let bg_light   = "#1a1a1a"
let bg_lighter = "#2a2a2a"
let gray       = "#4d4d4d"
let gray_light = "#6a6a6a"

" Terminal colors
if has('nvim')
  let g:terminal_color_0 = black
  let g:terminal_color_1 = red
  let g:terminal_color_2 = green
  let g:terminal_color_3 = yellow
  let g:terminal_color_4 = blue
  let g:terminal_color_5 = magenta
  let g:terminal_color_6 = cyan
  let g:terminal_color_7 = white
  let g:terminal_color_8 = br_black
  let g:terminal_color_9 = br_red
  let g:terminal_color_10 = br_green
  let g:terminal_color_11 = br_yellow
  let g:terminal_color_12 = br_blue
  let g:terminal_color_13 = br_magenta
  let g:terminal_color_14 = br_cyan
  let g:terminal_color_15 = br_white
elseif has('terminal')
  let g:terminal_ansi_colors = [
    \ black, red, green, yellow,
    \ blue, magenta, cyan, white,
    \ br_black, br_red, br_green, br_yellow,
    \ br_blue, br_magenta, br_cyan, br_white
  \ ]
endif

" Basic highlight groups
exe "hi Normal guifg=" . foreground . " guibg=" . background . " ctermfg=7 ctermbg=0"
exe "hi Cursor guifg=" . background . " guibg=" . cursor . " ctermfg=0 ctermbg=7"
exe "hi CursorLine guibg=" . bg_light . " ctermbg=8"
exe "hi CursorColumn guibg=" . bg_light . " ctermbg=8"
exe "hi LineNr guifg=" . gray . " ctermfg=8"
exe "hi CursorLineNr guifg=" . yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi SignColumn guibg=" . background . " ctermbg=0"
exe "hi ColorColumn guibg=" . bg_light . " ctermbg=8"

" Syntax highlighting - bat-style mapping
exe "hi Comment guifg=" . gray_light . " gui=italic ctermfg=8 cterm=italic"
exe "hi String guifg=" . green . " ctermfg=2"
exe "hi Character guifg=" . green . " ctermfg=2"
exe "hi Number guifg=" . magenta . " ctermfg=5"
exe "hi Float guifg=" . magenta . " ctermfg=5"
exe "hi Boolean guifg=" . magenta . " ctermfg=5"
exe "hi Constant guifg=" . magenta . " ctermfg=5"
exe "hi Identifier guifg=" . blue . " ctermfg=4"
exe "hi Function guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi Statement guifg=" . red . " gui=bold ctermfg=1 cterm=bold"
exe "hi Conditional guifg=" . red . " ctermfg=1"
exe "hi Repeat guifg=" . red . " ctermfg=1"
exe "hi Label guifg=" . red . " ctermfg=1"
exe "hi Operator guifg=" . foreground . " ctermfg=7"
exe "hi Keyword guifg=" . red . " gui=bold ctermfg=1 cterm=bold"
exe "hi Exception guifg=" . red . " ctermfg=1"
exe "hi PreProc guifg=" . cyan . " ctermfg=6"
exe "hi Include guifg=" . cyan . " ctermfg=6"
exe "hi Define guifg=" . cyan . " ctermfg=6"
exe "hi Macro guifg=" . cyan . " ctermfg=6"
exe "hi PreCondit guifg=" . cyan . " ctermfg=6"
exe "hi Type guifg=" . yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi StorageClass guifg=" . yellow . " ctermfg=3"
exe "hi Structure guifg=" . yellow . " ctermfg=3"
exe "hi Typedef guifg=" . yellow . " ctermfg=3"
exe "hi Special guifg=" . magenta . " ctermfg=5"
exe "hi SpecialChar guifg=" . magenta . " ctermfg=5"
exe "hi Tag guifg=" . blue . " ctermfg=4"
exe "hi Delimiter guifg=" . foreground . " ctermfg=7"
exe "hi SpecialComment guifg=" . gray_light . " gui=italic ctermfg=8 cterm=italic"
exe "hi Debug guifg=" . red . " ctermfg=1"
exe "hi Underlined gui=underline cterm=underline"
exe "hi Ignore guifg=" . gray . " ctermfg=8"
exe "hi Error guifg=" . red . " guibg=" . bg_light . " gui=bold ctermfg=1 ctermbg=0 cterm=bold"
exe "hi Todo guifg=" . magenta . " guibg=" . bg_light . " gui=bold ctermfg=5 ctermbg=0 cterm=bold"

" Additional syntax highlighting
exe "hi Class guifg=" . yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi Variable guifg=" . foreground . " ctermfg=7"
exe "hi Property guifg=" . foreground . " ctermfg=7"
exe "hi Method guifg=" . blue . " ctermfg=4"

" UI elements
exe "hi Visual guibg=" . bg_lighter . " ctermbg=8"
exe "hi Search guifg=" . background . " guibg=" . yellow . " gui=bold ctermfg=0 ctermbg=3 cterm=bold"
exe "hi IncSearch guifg=" . background . " guibg=" . red . " gui=bold ctermfg=0 ctermbg=1 cterm=bold"
exe "hi StatusLine guifg=" . foreground . " guibg=" . bg_light . " gui=bold ctermfg=7 ctermbg=8 cterm=bold"
exe "hi StatusLineNC guifg=" . gray . " guibg=" . bg_light . " ctermfg=8 ctermbg=0"
exe "hi VertSplit guifg=" . gray . " ctermfg=8"
exe "hi Pmenu guifg=" . foreground . " guibg=" . bg_light . " ctermfg=7 ctermbg=8"
exe "hi PmenuSel guifg=" . background . " guibg=" . blue . " gui=bold ctermfg=0 ctermbg=4 cterm=bold"
exe "hi PmenuSbar guibg=" . bg_lighter . " ctermbg=8"
exe "hi PmenuThumb guibg=" . gray . " ctermbg=8"
exe "hi TabLine guifg=" . gray . " guibg=" . background . " ctermfg=8 ctermbg=0"
exe "hi TabLineFill guibg=" . background . " ctermbg=0"
exe "hi TabLineSel guifg=" . foreground . " guibg=" . bg_light . " gui=bold ctermfg=7 ctermbg=8 cterm=bold"
exe "hi WildMenu guifg=" . background . " guibg=" . blue . " gui=bold ctermfg=0 ctermbg=4 cterm=bold"

" Diff highlighting - bat-style
exe "hi DiffAdd guifg=" . green . " guibg=" . background . " gui=bold ctermfg=2 ctermbg=0 cterm=bold"
exe "hi DiffChange guifg=" . yellow . " guibg=" . background . " ctermfg=3 ctermbg=0"
exe "hi DiffDelete guifg=" . red . " guibg=" . background . " gui=bold ctermfg=1 ctermbg=0 cterm=bold"
exe "hi DiffText guifg=" . br_yellow . " guibg=" . background . " gui=bold ctermfg=11 ctermbg=0 cterm=bold"

" Git gutter
exe "hi GitGutterAdd guifg=" . green . " ctermfg=2"
exe "hi GitGutterChange guifg=" . yellow . " ctermfg=3"
exe "hi GitGutterDelete guifg=" . red . " ctermfg=1"
exe "hi GitGutterChangeDelete guifg=" . magenta . " ctermfg=5"
exe "hi GitSignsAdd guifg=" . green . " ctermfg=2"
exe "hi GitSignsChange guifg=" . yellow . " ctermfg=3"
exe "hi GitSignsDelete guifg=" . red . " ctermfg=1"

" Error and warning
exe "hi ErrorMsg guifg=" . br_red . " gui=bold ctermfg=9 cterm=bold"
exe "hi WarningMsg guifg=" . br_yellow . " gui=bold ctermfg=11 cterm=bold"
exe "hi Question guifg=" . green . " gui=bold ctermfg=2 cterm=bold"
exe "hi MoreMsg guifg=" . green . " gui=bold ctermfg=2 cterm=bold"
exe "hi ModeMsg guifg=" . foreground . " gui=bold ctermfg=7 cterm=bold"

" Folding
exe "hi Folded guifg=" . gray_light . " guibg=" . bg_light . " gui=italic ctermfg=8 ctermbg=0 cterm=italic"
exe "hi FoldColumn guifg=" . gray . " guibg=" . background . " ctermfg=8 ctermbg=0"

" Spelling
exe "hi SpellBad guisp=" . red . " gui=undercurl ctermfg=1 cterm=underline"
exe "hi SpellCap guisp=" . blue . " gui=undercurl ctermfg=4 cterm=underline"
exe "hi SpellLocal guisp=" . cyan . " gui=undercurl ctermfg=6 cterm=underline"
exe "hi SpellRare guisp=" . magenta . " gui=undercurl ctermfg=5 cterm=underline"

" File explorer and tree colors
exe "hi Directory guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi NvimTreeFolderName guifg=" . blue . " ctermfg=4"
exe "hi NvimTreeFolderIcon guifg=" . blue . " ctermfg=4"
exe "hi NvimTreeOpenedFolderName guifg=" . br_blue . " gui=bold ctermfg=12 cterm=bold"
exe "hi NvimTreeFileName guifg=" . foreground . " ctermfg=7"
exe "hi NvimTreeExecFile guifg=" . green . " gui=bold ctermfg=2 cterm=bold"
exe "hi NvimTreeSpecialFile guifg=" . magenta . " gui=bold ctermfg=5 cterm=bold"
exe "hi NvimTreeImageFile guifg=" . cyan . " ctermfg=6"
exe "hi NvimTreeMarkdownFile guifg=" . red . " ctermfg=1"
exe "hi NvimTreeIndentMarker guifg=" . gray . " ctermfg=8"

" Neo-tree colors
exe "hi NeoTreeDirectoryName guifg=" . blue . " ctermfg=4"
exe "hi NeoTreeDirectoryIcon guifg=" . blue . " ctermfg=4"
exe "hi NeoTreeFileName guifg=" . foreground . " ctermfg=7"
exe "hi NeoTreeFileIcon guifg=" . blue . " ctermfg=4"
exe "hi NeoTreeModified guifg=" . yellow . " ctermfg=3"
exe "hi NeoTreeGitAdded guifg=" . green . " ctermfg=2"
exe "hi NeoTreeGitDeleted guifg=" . red . " ctermfg=1"
exe "hi NeoTreeGitModified guifg=" . yellow . " ctermfg=3"
exe "hi NeoTreeGitUntracked guifg=" . gray_light . " ctermfg=8"
exe "hi NeoTreeNormal guifg=" . foreground . " guibg=" . background . " ctermfg=7 ctermbg=0"

" Telescope colors
exe "hi TelescopeSelection guifg=" . foreground . " guibg=" . bg_lighter . " gui=bold ctermfg=7 ctermbg=8 cterm=bold"
exe "hi TelescopeSelectionCaret guifg=" . red . " gui=bold ctermfg=1 cterm=bold"
exe "hi TelescopeMultiSelection guifg=" . green . " gui=bold ctermfg=2 cterm=bold"
exe "hi TelescopeNormal guifg=" . foreground . " ctermfg=7"
exe "hi TelescopeBorder guifg=" . gray . " guibg=" . background . " ctermfg=8 ctermbg=0"
exe "hi TelescopePromptBorder guifg=" . gray . " guibg=" . background . " ctermfg=8 ctermbg=0"
exe "hi TelescopeResultsBorder guifg=" . gray . " guibg=" . background . " ctermfg=8 ctermbg=0"
exe "hi TelescopePreviewBorder guifg=" . gray . " guibg=" . background . " ctermfg=8 ctermbg=0"
exe "hi TelescopeTitle guifg=" . foreground . " gui=bold ctermfg=7 cterm=bold"
exe "hi TelescopePromptTitle guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi TelescopeResultsTitle guifg=" . green . " gui=bold ctermfg=2 cterm=bold"
exe "hi TelescopePreviewTitle guifg=" . cyan . " gui=bold ctermfg=6 cterm=bold"
exe "hi TelescopeMatching guifg=" . yellow . " gui=bold ctermfg=3 cterm=bold"

" Which-key
exe "hi WhichKey guifg=" . red . " gui=bold ctermfg=1 cterm=bold"
exe "hi WhichKeyGroup guifg=" . blue . " ctermfg=4"
exe "hi WhichKeyDesc guifg=" . foreground . " ctermfg=7"
exe "hi WhichKeySeparator guifg=" . gray . " ctermfg=8"

" Float windows
exe "hi NormalFloat guifg=" . foreground . " guibg=" . bg_light . " ctermfg=7 ctermbg=8"
exe "hi FloatBorder guifg=" . gray . " guibg=" . bg_light . " ctermfg=8 ctermbg=8"

" LSP and diagnostic colors
exe "hi DiagnosticError guifg=" . red . " ctermfg=1"
exe "hi DiagnosticWarn guifg=" . yellow . " ctermfg=3"
exe "hi DiagnosticInfo guifg=" . blue . " ctermfg=4"
exe "hi DiagnosticHint guifg=" . gray_light . " ctermfg=8"
exe "hi DiagnosticUnderlineError gui=undercurl guisp=" . red . " cterm=underline"
exe "hi DiagnosticUnderlineWarn gui=undercurl guisp=" . yellow . " cterm=underline"
exe "hi DiagnosticUnderlineInfo gui=undercurl guisp=" . blue . " cterm=underline"
exe "hi DiagnosticUnderlineHint gui=undercurl guisp=" . gray_light . " cterm=underline"

" LSP semantic highlighting / Treesitter
exe "hi @variable guifg=" . foreground . " ctermfg=7"
exe "hi @variable.builtin guifg=" . red . " gui=italic ctermfg=1 cterm=italic"
exe "hi @variable.parameter guifg=" . foreground . " gui=italic ctermfg=7 cterm=italic"
exe "hi @constant guifg=" . magenta . " gui=bold ctermfg=5 cterm=bold"
exe "hi @constant.builtin guifg=" . magenta . " gui=bold,italic ctermfg=5 cterm=bold,italic"
exe "hi @constant.macro guifg=" . br_magenta . " gui=bold ctermfg=13 cterm=bold"
exe "hi @string guifg=" . green . " ctermfg=2"
exe "hi @string.escape guifg=" . br_green . " gui=bold ctermfg=10 cterm=bold"
exe "hi @string.special guifg=" . cyan . " ctermfg=6"
exe "hi @character guifg=" . green . " ctermfg=2"
exe "hi @number guifg=" . magenta . " ctermfg=5"
exe "hi @boolean guifg=" . magenta . " gui=bold ctermfg=5 cterm=bold"
exe "hi @float guifg=" . magenta . " ctermfg=5"
exe "hi @function guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi @function.builtin guifg=" . blue . " gui=bold,italic ctermfg=4 cterm=bold,italic"
exe "hi @function.macro guifg=" . cyan . " gui=bold ctermfg=6 cterm=bold"
exe "hi @method guifg=" . blue . " ctermfg=4"
exe "hi @constructor guifg=" . yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi @parameter guifg=" . foreground . " gui=italic ctermfg=7 cterm=italic"
exe "hi @keyword guifg=" . red . " gui=bold ctermfg=1 cterm=bold"
exe "hi @keyword.function guifg=" . red . " gui=italic ctermfg=1 cterm=italic"
exe "hi @keyword.operator guifg=" . red . " ctermfg=1"
exe "hi @keyword.return guifg=" . red . " gui=bold ctermfg=1 cterm=bold"
exe "hi @conditional guifg=" . red . " ctermfg=1"
exe "hi @repeat guifg=" . red . " ctermfg=1"
exe "hi @label guifg=" . red . " ctermfg=1"
exe "hi @operator guifg=" . foreground . " ctermfg=7"
exe "hi @exception guifg=" . red . " gui=bold ctermfg=1 cterm=bold"
exe "hi @type guifg=" . yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi @type.builtin guifg=" . yellow . " gui=bold,italic ctermfg=3 cterm=bold,italic"
exe "hi @type.definition guifg=" . yellow . " ctermfg=3"
exe "hi @storageclass guifg=" . yellow . " ctermfg=3"
exe "hi @structure guifg=" . yellow . " ctermfg=3"
exe "hi @namespace guifg=" . yellow . " gui=italic ctermfg=3 cterm=italic"
exe "hi @include guifg=" . cyan . " gui=bold ctermfg=6 cterm=bold"
exe "hi @preproc guifg=" . cyan . " ctermfg=6"
exe "hi @debug guifg=" . red . " ctermfg=1"
exe "hi @tag guifg=" . red . " ctermfg=1"
exe "hi @tag.attribute guifg=" . yellow . " ctermfg=3"
exe "hi @tag.delimiter guifg=" . foreground . " ctermfg=7"
exe "hi @comment guifg=" . gray_light . " gui=italic ctermfg=8 cterm=italic"
exe "hi @comment.documentation guifg=" . gray_light . " gui=italic ctermfg=8 cterm=italic"
exe "hi @field guifg=" . foreground . " ctermfg=7"
exe "hi @property guifg=" . foreground . " ctermfg=7"
exe "hi @punctuation.delimiter guifg=" . foreground . " ctermfg=7"
exe "hi @punctuation.bracket guifg=" . foreground . " ctermfg=7"

" Treesitter context
exe "hi TreesitterContext guibg=" . bg_light . " ctermbg=8"
exe "hi TreesitterContextLineNumber guifg=" . foreground . " gui=bold ctermfg=7 cterm=bold"

