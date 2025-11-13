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

" ANSI Colors (bat compatible) - names adjusted to match actual hex colors
let black        = "#000000"    " ansi 0 - black
let coral        = "#ff6b6b"    " ansi 1/4 - red (coral)
let maroon       = "#8b2635"    " ansi 2 - dark red (maroon)
let taupe        = "#baa997"    " ansi 3 - taupe
let peach         = "#ff3535"    " ansi 5 - warm ivory-peach (constants, keywords)
let parchment    = "#f2e5bc"    " ansi 6/7 - parchment
let gray         = "#4d4d4d"    " ansi 8 - gray
let light_coral  = "#ff8888"    " ansi 9/12 - light coral
let brick        = "#a63d4d"    " ansi 10 - brick red
let sand         = "#d4c3b2"    " ansi 11 - sand (comments)
let salmon       = "#FF9b9b"    " ansi 13 - salmon (types, macros)
let linen        = "#f7eed1"    " ansi 14 - linen
let white        = "#ffffff"    " ansi 15 - white

" Terminal colors
if has('nvim')
  let g:terminal_color_0 = black
  let g:terminal_color_1 = coral
  let g:terminal_color_2 = maroon
  let g:terminal_color_3 = taupe
  let g:terminal_color_4 = coral
  let g:terminal_color_5 = peach
  let g:terminal_color_6 = parchment
  let g:terminal_color_7 = parchment
  let g:terminal_color_8 = gray
  let g:terminal_color_9 = light_coral
  let g:terminal_color_10 = brick
  let g:terminal_color_11 = sand
  let g:terminal_color_12 = light_coral
  let g:terminal_color_13 = salmon
  let g:terminal_color_14 = linen
  let g:terminal_color_15 = white
elseif has('terminal')
  let g:terminal_ansi_colors = [
    \ black, coral, maroon, taupe,
    \ coral, peach, parchment, parchment,
    \ gray, light_coral, brick, sand,
    \ light_coral, salmon, linen, white
  \ ]
endif

" Basic highlight groups
exe "hi Normal guifg=" . foreground . " guibg=NONE ctermfg=7 ctermbg=NONE"
exe "hi Cursor guifg=" . background . " guibg=" . cursor . " ctermfg=0 ctermbg=7"
exe "hi CursorLine guibg=" . gray . " ctermbg=8"
exe "hi CursorColumn guibg=" . gray . " ctermbg=8"
exe "hi LineNr guifg=" . gray . " ctermfg=8"
exe "hi CursorLineNr guifg=" . parchment . " ctermfg=7"

" Syntax highlighting - bat-style mapping
exe "hi Comment guifg=" . sand . " gui=italic ctermfg=11 cterm=italic"
exe "hi String guifg=" . maroon . " ctermfg=2"
exe "hi Character guifg=" . brick . " ctermfg=10"
exe "hi Number guifg=" . parchment . " ctermfg=6"
exe "hi Float guifg=" . parchment . " ctermfg=6"
exe "hi Boolean guifg=" . coral . " ctermfg=1"
exe "hi Constant guifg=" . peach . " ctermfg=5"
exe "hi Identifier guifg=" . parchment . " ctermfg=7"
exe "hi Function guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi Statement guifg=" . coral . " gui=bold ctermfg=4 cterm=bold"
exe "hi Conditional guifg=" . coral . " ctermfg=4"
exe "hi Repeat guifg=" . coral . " ctermfg=4"
exe "hi Label guifg=" . coral . " ctermfg=4"
exe "hi Operator guifg=" . parchment . " ctermfg=7"
exe "hi Keyword guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi Exception guifg=" . coral . " ctermfg=1"
exe "hi PreProc guifg=" . salmon . " ctermfg=13"
exe "hi Include guifg=" . salmon . " ctermfg=13"
exe "hi Define guifg=" . salmon . " ctermfg=13"
exe "hi Macro guifg=" . salmon . " ctermfg=13"
exe "hi PreCondit guifg=" . salmon . " ctermfg=13"
exe "hi Type guifg=" . parchment . " gui=bold ctermfg=6 cterm=bold"
exe "hi StorageClass guifg=" . taupe . " ctermfg=3"
exe "hi Structure guifg=" . parchment . " ctermfg=6"
exe "hi Typedef guifg=" . taupe . " ctermfg=3"
exe "hi Special guifg=" . parchment . " ctermfg=6"
exe "hi SpecialChar guifg=" . linen . " ctermfg=14"
exe "hi Tag guifg=" . coral . " ctermfg=1"
exe "hi Delimiter guifg=" . parchment . " ctermfg=7"
exe "hi SpecialComment guifg=" . sand . " ctermfg=11"
exe "hi Debug guifg=" . light_coral . " ctermfg=9"

" Additional syntax highlighting
exe "hi Class guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi Variable guifg=" . parchment . " ctermfg=7"
exe "hi Property guifg=" . parchment . " ctermfg=6"
exe "hi Method guifg=" . coral . " ctermfg=1"

" UI elements
exe "hi Visual guibg=" . gray . " ctermbg=8"
exe "hi Search guifg=" . background . " guibg=" . taupe . " gui=bold ctermfg=0 ctermbg=3 cterm=bold"
exe "hi IncSearch guifg=" . background . " guibg=" . sand . " gui=bold ctermfg=0 ctermbg=11 cterm=bold"
exe "hi StatusLine guifg=" . parchment . " guibg=" . gray . " gui=bold ctermfg=7 ctermbg=8 cterm=bold"
exe "hi StatusLineNC guifg=" . gray . " guibg=NONE ctermfg=8 ctermbg=NONE"
exe "hi VertSplit guifg=" . gray . " ctermfg=8"
exe "hi Pmenu guifg=" . parchment . " guibg=" . gray . " ctermfg=7 ctermbg=8"
exe "hi PmenuSel guifg=" . background . " guibg=" . coral . " gui=bold ctermfg=0 ctermbg=4 cterm=bold"
exe "hi PmenuSbar guibg=" . gray . " ctermbg=8"
exe "hi PmenuThumb guibg=" . parchment . " ctermbg=7"
exe "hi TabLine guifg=" . gray . " guibg=NONE ctermfg=8 ctermbg=NONE"
exe "hi TabLineFill guibg=NONE ctermbg=NONE"
exe "hi TabLineSel guifg=" . parchment . " guibg=" . gray . " gui=bold ctermfg=7 ctermbg=8 cterm=bold"

" Diff highlighting - bat-style
exe "hi DiffAdd guifg=" . maroon . " guibg=NONE gui=bold ctermfg=2 ctermbg=NONE cterm=bold"
exe "hi DiffChange guifg=" . taupe . " guibg=NONE ctermfg=3 ctermbg=NONE"
exe "hi DiffDelete guifg=" . coral . " guibg=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold"
exe "hi DiffText guifg=" . sand . " guibg=NONE gui=bold ctermfg=11 ctermbg=NONE cterm=bold"

" Git gutter
exe "hi GitGutterAdd guifg=" . maroon . " ctermfg=2"
exe "hi GitGutterChange guifg=" . taupe . " ctermfg=3"
exe "hi GitGutterDelete guifg=" . coral . " ctermfg=1"
exe "hi GitGutterChangeDelete guifg=" . peach . " ctermfg=5"

" Error and warning
exe "hi Error guifg=" . light_coral . " guibg=NONE gui=bold ctermfg=9 ctermbg=NONE cterm=bold"
exe "hi Warning guifg=" . sand . " guibg=NONE gui=bold ctermfg=11 ctermbg=NONE cterm=bold"
exe "hi ErrorMsg guifg=" . light_coral . " gui=bold ctermfg=9 cterm=bold"
exe "hi WarningMsg guifg=" . sand . " gui=bold ctermfg=11 cterm=bold"
exe "hi Question guifg=" . maroon . " gui=bold ctermfg=2 cterm=bold"
exe "hi MoreMsg guifg=" . maroon . " gui=bold ctermfg=2 cterm=bold"

" Folding
exe "hi Folded guifg=" . gray . " guibg=NONE gui=italic ctermfg=8 ctermbg=NONE cterm=italic"
exe "hi FoldColumn guifg=" . gray . " guibg=NONE ctermfg=8 ctermbg=NONE"

" Spelling
exe "hi SpellBad guisp=" . coral . " gui=undercurl ctermfg=1 cterm=underline"
exe "hi SpellCap guisp=" . coral . " gui=undercurl ctermfg=4 cterm=underline"
exe "hi SpellLocal guisp=" . parchment . " gui=undercurl ctermfg=6 cterm=underline"
exe "hi SpellRare guisp=" . peach . " gui=undercurl ctermfg=5 cterm=underline"

" File explorer and tree colors
exe "hi Directory guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi NvimTreeFolderName guifg=" . coral . " ctermfg=1"
exe "hi NvimTreeFolderIcon guifg=" . coral . " ctermfg=1"
exe "hi NvimTreeOpenedFolderName guifg=" . light_coral . " gui=bold ctermfg=9 cterm=bold"
exe "hi NvimTreeFileName guifg=" . parchment . " ctermfg=7"
exe "hi NvimTreeExecFile guifg=" . maroon . " gui=bold ctermfg=2 cterm=bold"
exe "hi NvimTreeSpecialFile guifg=" . peach . " gui=bold ctermfg=5 cterm=bold"
exe "hi NvimTreeImageFile guifg=" . parchment . " ctermfg=6"
exe "hi NvimTreeMarkdownFile guifg=" . coral . " ctermfg=1"
exe "hi NvimTreeIndentMarker guifg=" . gray . " ctermfg=8"

" Neo-tree colors
exe "hi NeoTreeDirectoryName guifg=" . coral . " ctermfg=1"
exe "hi NeoTreeDirectoryIcon guifg=" . coral . " ctermfg=1"
exe "hi NeoTreeFileName guifg=" . parchment . " ctermfg=7"
exe "hi NeoTreeFileIcon guifg=" . parchment . " ctermfg=6"
exe "hi NeoTreeModified guifg=" . taupe . " ctermfg=3"
exe "hi NeoTreeGitAdded guifg=" . maroon . " ctermfg=2"
exe "hi NeoTreeGitDeleted guifg=" . coral . " ctermfg=1"
exe "hi NeoTreeGitModified guifg=" . taupe . " ctermfg=3"
exe "hi NeoTreeGitUntracked guifg=" . gray . " ctermfg=8"

" Telescope colors
exe "hi TelescopeSelection guifg=" . parchment . " guibg=" . gray . " gui=bold ctermfg=7 ctermbg=8 cterm=bold"
exe "hi TelescopeSelectionCaret guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi TelescopeMultiSelection guifg=" . maroon . " gui=bold ctermfg=2 cterm=bold"
exe "hi TelescopeNormal guifg=" . parchment . " ctermfg=7"
exe "hi TelescopeBorder guifg=" . gray . " ctermfg=8"
exe "hi TelescopePromptBorder guifg=" . coral . " ctermfg=4"
exe "hi TelescopeResultsBorder guifg=" . gray . " ctermfg=8"
exe "hi TelescopePreviewBorder guifg=" . gray . " ctermfg=8"
exe "hi TelescopeTitle guifg=" . parchment . " gui=bold ctermfg=7 cterm=bold"
exe "hi TelescopePromptTitle guifg=" . coral . " gui=bold ctermfg=4 cterm=bold"
exe "hi TelescopeResultsTitle guifg=" . maroon . " gui=bold ctermfg=2 cterm=bold"
exe "hi TelescopePreviewTitle guifg=" . parchment . " gui=bold ctermfg=6 cterm=bold"

" LSP and diagnostic colors
exe "hi DiagnosticError guifg=" . coral . " ctermfg=1"
exe "hi DiagnosticWarn guifg=" . taupe . " ctermfg=3"
exe "hi DiagnosticInfo guifg=" . coral . " ctermfg=4"
exe "hi DiagnosticHint guifg=" . gray . " ctermfg=8"
exe "hi DiagnosticUnderlineError gui=undercurl guisp=" . coral . " cterm=underline"
exe "hi DiagnosticUnderlineWarn gui=undercurl guisp=" . taupe . " cterm=underline"
exe "hi DiagnosticUnderlineInfo gui=undercurl guisp=" . coral . " cterm=underline"
exe "hi DiagnosticUnderlineHint gui=undercurl guisp=" . gray . " cterm=underline"

" LSP semantic highlighting
exe "hi @variable guifg=" . parchment . " ctermfg=7"
exe "hi @variable.builtin guifg=" . peach . " gui=italic ctermfg=5 cterm=italic"
exe "hi @variable.parameter guifg=" . parchment . " gui=italic ctermfg=7 cterm=italic"
exe "hi @constant guifg=" . peach . " gui=bold ctermfg=5 cterm=bold"
exe "hi @constant.builtin guifg=" . peach . " gui=bold,italic ctermfg=5 cterm=bold,italic"
exe "hi @constant.macro guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @string guifg=" . maroon . " ctermfg=2"
exe "hi @string.escape guifg=" . brick . " gui=bold ctermfg=10 cterm=bold"
exe "hi @string.special guifg=" . parchment . " ctermfg=6"
exe "hi @character guifg=" . brick . " ctermfg=10"
exe "hi @number guifg=" . parchment . " ctermfg=6"
exe "hi @boolean guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi @float guifg=" . parchment . " ctermfg=6"
exe "hi @function guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi @function.builtin guifg=" . coral . " gui=bold,italic ctermfg=1 cterm=bold,italic"
exe "hi @function.macro guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi @function.call guifg=" . coral . " ctermfg=1"
exe "hi @method guifg=" . coral . " ctermfg=1"
exe "hi @method.call guifg=" . coral . " ctermfg=1"
exe "hi @constructor guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @parameter guifg=" . parchment . " gui=italic ctermfg=7 cterm=italic"
exe "hi @keyword guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi @keyword.function guifg=" . coral . " gui=italic ctermfg=1 cterm=italic"
exe "hi @keyword.operator guifg=" . coral . " ctermfg=1"
exe "hi @keyword.return guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi @conditional guifg=" . coral . " ctermfg=1"
exe "hi @repeat guifg=" . coral . " ctermfg=1"
exe "hi @label guifg=" . coral . " ctermfg=1"
exe "hi @operator guifg=" . parchment . " ctermfg=7"
exe "hi @exception guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi @type guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @type.builtin guifg=" . taupe . " gui=bold,italic ctermfg=3 cterm=bold,italic"
exe "hi @type.definition guifg=" . taupe . " ctermfg=3"
exe "hi @storageclass guifg=" . taupe . " ctermfg=3"
exe "hi @structure guifg=" . taupe . " ctermfg=3"
exe "hi @namespace guifg=" . taupe . " gui=italic ctermfg=3 cterm=italic"
exe "hi @include guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @preproc guifg=" . salmon . " ctermfg=13"
exe "hi @debug guifg=" . light_coral . " ctermfg=9"
exe "hi @tag guifg=" . coral . " ctermfg=1"
exe "hi @tag.attribute guifg=" . parchment . " ctermfg=6"
exe "hi @tag.delimiter guifg=" . parchment . " ctermfg=7"
exe "hi @comment guifg=" . sand . " gui=italic ctermfg=11 cterm=italic"
exe "hi @comment.documentation guifg=" . sand . " gui=italic ctermfg=11 cterm=italic"

" Treesitter context
exe "hi TreesitterContext guibg=" . peach . " ctermbg=8"
exe "hi TreesitterContextLineNumber guifg=" . parchment . " gui=bold ctermfg=7 cterm=bold"

" Rust-specific highlighting for better import clarity
" Enhanced Rust import highlighting for better legibility
exe "hi rustModPath guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi rustModPathSep guifg=" . sand . " ctermfg=11"
exe "hi rustUseKeyword guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi rustImportBrace guifg=" . parchment . " gui=bold ctermfg=6 cterm=bold"
exe "hi rustImportFunction guifg=" . coral . " ctermfg=1"
exe "hi rustImportType guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"

exe "hi rustSelf guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi rustSuper guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi rustLifetime guifg=" . peach . " gui=italic ctermfg=5 cterm=italic"
exe "hi rustDerive guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi rustAttribute guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi rustMacro guifg=" . salmon . " gui=bold ctermfg=6 cterm=bold"
exe "hi rustQuestionMark guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"

" Ensure LSP semantic tokens link to our Treesitter groups (prevents color flip on attach)
exe "hi! link @lsp.type.namespace @namespace"
exe "hi! link @lsp.type.module @namespace"
exe "hi! link @lsp.type.type @type"
exe "hi! link @lsp.type.class @type"
exe "hi! link @lsp.type.struct @type"
exe "hi! link @lsp.type.enum @type"
exe "hi! link @lsp.type.typeAlias @type"
exe "hi! link @lsp.type.typeParameter @type"
exe "hi! link @lsp.type.function @function"
exe "hi! link @lsp.type.method @function"
exe "hi! link @lsp.type.macro @function.macro"
exe "hi! link @lsp.type.property @property"
exe "hi! link @lsp.type.variable @variable"
exe "hi! link @lsp.type.parameter @parameter"
exe "hi! link @lsp.type.enumMember @constant"

" Rust-specific LSP links for extra safety
exe "hi! link @lsp.type.namespace.rust @namespace.rust"
exe "hi! link @lsp.type.function.rust @function.rust"
exe "hi! link @lsp.type.method.rust @function.rust"
exe "hi! link @lsp.type.macro.rust @function.macro.rust"
exe "hi! link @lsp.type.enumMember.rust @constant.rust"
exe "hi! link @lsp.type.type.rust @type.rust"

" TS module groups (some parsers use @module instead of @namespace)
exe "hi @module guifg=" . parchment . " ctermfg=7"
exe "hi @module.rust guifg=" . parchment . " ctermfg=7"

" Common LSP typemods -> base groups (prevents gray after attach)
exe "hi! link @lsp.typemod.namespace.crateRoot @namespace"
exe "hi! link @lsp.typemod.namespace.definition @namespace"
exe "hi! link @lsp.typemod.namespace.declaration @namespace"
exe "hi! link @lsp.typemod.namespace.defaultLibrary @namespace"
exe "hi! link @lsp.typemod.module.crateRoot @namespace"
exe "hi! link @lsp.typemod.module.definition @namespace"
exe "hi! link @lsp.typemod.module.declaration @namespace"
exe "hi! link @lsp.typemod.module.defaultLibrary @namespace"
exe "hi! link @lsp.typemod.type.defaultLibrary @type"
exe "hi! link @lsp.typemod.type.definition @type"
exe "hi! link @lsp.typemod.type.declaration @type"
exe "hi! link @lsp.typemod.enumMember.defaultLibrary @constant"
exe "hi! link @lsp.typemod.enumMember.declaration @constant"
exe "hi! link @lsp.typemod.enumMember.definition @constant"
exe "hi! link @lsp.typemod.function.declaration @function"
exe "hi! link @lsp.typemod.method.declaration @function"
exe "hi! link @lsp.typemod.macro.declaration @function.macro"

" Rust-specific typemods
exe "hi! link @lsp.typemod.namespace.crateRoot.rust @namespace.rust"
exe "hi! link @lsp.typemod.namespace.defaultLibrary.rust @namespace.rust"
exe "hi! link @lsp.typemod.type.defaultLibrary.rust @type.rust"
exe "hi! link @lsp.typemod.enumMember.defaultLibrary.rust @constant.rust"

" Rust-specific Treesitter overrides for better legibility in imports
exe "hi @namespace.rust guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @module.rust guifg=" . parchment . " ctermfg=7"
exe "hi @punctuation.bracket.rust guifg=" . parchment . " gui=bold ctermfg=6 cterm=bold"
exe "hi @punctuation.delimiter.rust guifg=" . sand . " ctermfg=11"
" Enhanced import highlighting using Treesitter
exe "hi @include.rust guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi @function.call.rust guifg=" . coral . " ctermfg=1"
exe "hi @type.identifier.rust guifg=" . parchment . " gui=bold ctermfg=6 cterm=bold"
" Differentiated highlighting for imported items in use statements
exe "hi @identifier.rust guifg=" . peach . " ctermfg=5"
exe "hi @variable.rust guifg=" . parchment . " ctermfg=7"

" Enhanced Treesitter captures for import differentiation
exe "hi @constructor.rust guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @attribute.rust guifg=" . salmon . " ctermfg=13"
exe "hi @field.rust guifg=" . parchment . " ctermfg=7"
exe "hi @property.rust guifg=" . parchment . " ctermfg=7"
exe "hi @type.rust guifg=" . salmon . " ctermfg=6"
exe "hi @constant.rust guifg=" . peach . " ctermfg=2"
exe "hi @function.rust guifg=" . peach . " ctermfg=2"
exe "hi @function.macro.rust guifg=" . salmon . " ctermfg=6"
exe "hi @constant.enum.rust guifg=" . peach . " ctermfg=2"
exe "hi @constant.builtin.rust guifg=" . peach . " ctermfg=2"

" Language-specific semantic highlighting to match Rust style
" =======================================================

" JavaScript/TypeScript/JSX/TSX highlighting
exe "hi @namespace.javascript guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @namespace.typescript guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @include.javascript guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi @include.typescript guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi @string.special.path.javascript guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @string.special.path.typescript guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @function.call.javascript guifg=" . coral . " ctermfg=1"
exe "hi @function.call.typescript guifg=" . coral . " ctermfg=1"
exe "hi @method.call.javascript guifg=" . coral . " ctermfg=1"
exe "hi @method.call.typescript guifg=" . coral . " ctermfg=1"
exe "hi @type.identifier.javascript guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @type.identifier.typescript guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @constructor.javascript guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @constructor.typescript guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @attribute.javascript guifg=" . salmon . " ctermfg=13"
exe "hi @attribute.typescript guifg=" . salmon . " ctermfg=13"
exe "hi @field.javascript guifg=" . parchment . " ctermfg=7"
exe "hi @field.typescript guifg=" . parchment . " ctermfg=7"
exe "hi @property.javascript guifg=" . parchment . " ctermfg=7"
exe "hi @property.typescript guifg=" . parchment . " ctermfg=7"
exe "hi @type.javascript guifg=" . salmon . " ctermfg=13"
exe "hi @type.typescript guifg=" . salmon . " ctermfg=13"
exe "hi @constant.javascript guifg=" . peach . " ctermfg=5"
exe "hi @constant.typescript guifg=" . peach . " ctermfg=5"
exe "hi @function.javascript guifg=" . peach . " ctermfg=5"
exe "hi @function.typescript guifg=" . peach . " ctermfg=5"
exe "hi @function.macro.javascript guifg=" . salmon . " ctermfg=13"
exe "hi @function.macro.typescript guifg=" . salmon . " ctermfg=13"
exe "hi @constant.enum.javascript guifg=" . peach . " ctermfg=5"
exe "hi @constant.enum.typescript guifg=" . peach . " ctermfg=5"
exe "hi @constant.builtin.javascript guifg=" . peach . " ctermfg=5"
exe "hi @constant.builtin.typescript guifg=" . peach . " ctermfg=5"
exe "hi @variable.javascript guifg=" . parchment . " ctermfg=7"
exe "hi @variable.typescript guifg=" . parchment . " ctermfg=7"
exe "hi @variable.builtin.javascript guifg=" . peach . " gui=italic ctermfg=5 cterm=italic"
exe "hi @variable.builtin.typescript guifg=" . peach . " gui=italic ctermfg=5 cterm=italic"
exe "hi @punctuation.bracket.javascript guifg=" . parchment . " gui=bold ctermfg=6 cterm=bold"
exe "hi @punctuation.bracket.typescript guifg=" . parchment . " gui=bold ctermfg=6 cterm=bold"
exe "hi @punctuation.delimiter.javascript guifg=" . sand . " ctermfg=11"
exe "hi @punctuation.delimiter.typescript guifg=" . sand . " ctermfg=11"

" JSX/TSX specific highlighting
exe "hi @tag.javascript guifg=" . coral . " ctermfg=1"
exe "hi @tag.typescript guifg=" . coral . " ctermfg=1"
exe "hi @tag.attribute.javascript guifg=" . parchment . " ctermfg=6"
exe "hi @tag.attribute.typescript guifg=" . parchment . " ctermfg=6"
exe "hi @tag.delimiter.javascript guifg=" . parchment . " ctermfg=7"
exe "hi @tag.delimiter.typescript guifg=" . parchment . " ctermfg=7"

" C/C++ highlighting
exe "hi @namespace.c guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @namespace.cpp guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @include.c guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi @include.cpp guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi @string.special.path.c guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @string.special.path.cpp guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @function.call.c guifg=" . coral . " ctermfg=1"
exe "hi @function.call.cpp guifg=" . coral . " ctermfg=1"
exe "hi @type.identifier.c guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @type.identifier.cpp guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @constructor.c guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @constructor.cpp guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @attribute.c guifg=" . salmon . " ctermfg=13"
exe "hi @attribute.cpp guifg=" . salmon . " ctermfg=13"
exe "hi @field.c guifg=" . parchment . " ctermfg=7"
exe "hi @field.cpp guifg=" . parchment . " ctermfg=7"
exe "hi @property.c guifg=" . parchment . " ctermfg=7"
exe "hi @property.cpp guifg=" . parchment . " ctermfg=7"
exe "hi @type.c guifg=" . salmon . " ctermfg=13"
exe "hi @type.cpp guifg=" . salmon . " ctermfg=13"
exe "hi @constant.c guifg=" . peach . " ctermfg=5"
exe "hi @constant.cpp guifg=" . peach . " ctermfg=5"
exe "hi @function.c guifg=" . peach . " ctermfg=5"
exe "hi @function.cpp guifg=" . peach . " ctermfg=5"
exe "hi @function.macro.c guifg=" . salmon . " ctermfg=13"
exe "hi @function.macro.cpp guifg=" . salmon . " ctermfg=13"
exe "hi @constant.enum.c guifg=" . peach . " ctermfg=5"
exe "hi @constant.enum.cpp guifg=" . peach . " ctermfg=5"
exe "hi @constant.builtin.c guifg=" . peach . " ctermfg=5"
exe "hi @constant.builtin.cpp guifg=" . peach . " ctermfg=5"
exe "hi @variable.c guifg=" . parchment . " ctermfg=7"
exe "hi @variable.cpp guifg=" . parchment . " ctermfg=7"
exe "hi @variable.builtin.c guifg=" . peach . " gui=italic ctermfg=5 cterm=italic"
exe "hi @variable.builtin.cpp guifg=" . peach . " gui=italic ctermfg=5 cterm=italic"
exe "hi @punctuation.bracket.c guifg=" . parchment . " gui=bold ctermfg=6 cterm=bold"
exe "hi @punctuation.bracket.cpp guifg=" . parchment . " gui=bold ctermfg=6 cterm=bold"
exe "hi @punctuation.delimiter.c guifg=" . sand . " ctermfg=11"
exe "hi @punctuation.delimiter.cpp guifg=" . sand . " ctermfg=11"

" Python highlighting
exe "hi @namespace.python guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @include.python guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi @string.special.path.python guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @function.call.python guifg=" . coral . " ctermfg=1"
exe "hi @method.call.python guifg=" . coral . " ctermfg=1"
exe "hi @type.identifier.python guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @constructor.python guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @attribute.python guifg=" . salmon . " ctermfg=13"
exe "hi @field.python guifg=" . parchment . " ctermfg=7"
exe "hi @property.python guifg=" . parchment . " ctermfg=7"
exe "hi @type.python guifg=" . salmon . " ctermfg=13"
exe "hi @constant.python guifg=" . peach . " ctermfg=5"
exe "hi @function.python guifg=" . peach . " ctermfg=5"
exe "hi @function.macro.python guifg=" . salmon . " ctermfg=13"
exe "hi @constant.enum.python guifg=" . peach . " ctermfg=5"
exe "hi @constant.builtin.python guifg=" . peach . " ctermfg=5"
exe "hi @variable.python guifg=" . parchment . " ctermfg=7"
exe "hi @variable.builtin.python guifg=" . peach . " gui=italic ctermfg=5 cterm=italic"
exe "hi @punctuation.bracket.python guifg=" . parchment . " gui=bold ctermfg=6 cterm=bold"
exe "hi @punctuation.delimiter.python guifg=" . sand . " ctermfg=11"

" Lua highlighting
exe "hi @namespace.lua guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @include.lua guifg=" . coral . " gui=bold ctermfg=1 cterm=bold"
exe "hi @string.special.path.lua guifg=" . taupe . " gui=bold ctermfg=3 cterm=bold"
exe "hi @function.call.lua guifg=" . coral . " ctermfg=1"
exe "hi @method.call.lua guifg=" . coral . " ctermfg=1"
exe "hi @type.identifier.lua guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @constructor.lua guifg=" . salmon . " gui=bold ctermfg=13 cterm=bold"
exe "hi @attribute.lua guifg=" . salmon . " ctermfg=13"
exe "hi @field.lua guifg=" . parchment . " ctermfg=7"
exe "hi @property.lua guifg=" . parchment . " ctermfg=7"
exe "hi @type.lua guifg=" . salmon . " ctermfg=13"
exe "hi @constant.lua guifg=" . peach . " ctermfg=5"
exe "hi @function.lua guifg=" . peach . " ctermfg=5"
exe "hi @function.macro.lua guifg=" . salmon . " ctermfg=13"
exe "hi @constant.enum.lua guifg=" . peach . " ctermfg=5"
exe "hi @constant.builtin.lua guifg=" . peach . " ctermfg=5"
exe "hi @variable.lua guifg=" . parchment . " ctermfg=7"
exe "hi @variable.builtin.lua guifg=" . peach . " gui=italic ctermfg=5 cterm=italic"
exe "hi @punctuation.bracket.lua guifg=" . parchment . " gui=bold ctermfg=6 cterm=bold"
exe "hi @punctuation.delimiter.lua guifg=" . sand . " ctermfg=11"

" Scope indicator (vertical bar) colors
" mini.indentscope
" snacks.nvim indent scope (current scope vertical bar)
exe "hi SnacksIndentScope guifg=" . parchment . " ctermfg=6"

