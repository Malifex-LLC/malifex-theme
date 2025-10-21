-- Malifex Theme for Neovim
-- A dark, earthy color scheme with warm tones

vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.o.background = 'dark'
vim.g.colors_name = 'malifex'

-- Color Palette
local colors = {
  bg = '#000000',
  fg = '#baa997',
  black = '#000000',
  red = '#ff6b6b',
  green = '#8b2635',
  yellow = '#baa997',
  blue = '#537a5a',
  magenta = '#f2e5bc',
  cyan = '#ff6b6b',
  white = '#f2e5bc',
  
  -- Additional shades
  bg_light = '#1a1a1a',
  bg_lighter = '#2a2a2a',
  gray = '#4d4d4d',
  gray_light = '#6a6a6a',
}

-- Helper function to set highlights
local function hi(group, opts)
  local cmd = 'highlight ' .. group
  if opts.fg then cmd = cmd .. ' guifg=' .. opts.fg end
  if opts.bg then cmd = cmd .. ' guibg=' .. opts.bg end
  if opts.style then cmd = cmd .. ' gui=' .. opts.style end
  if opts.sp then cmd = cmd .. ' guisp=' .. opts.sp end
  vim.cmd(cmd)
end

-- Editor highlights
hi('Normal', { fg = colors.fg, bg = colors.bg })
hi('NormalFloat', { fg = colors.fg, bg = colors.bg_light })
hi('FloatBorder', { fg = colors.gray, bg = colors.bg_light })
hi('ColorColumn', { bg = colors.bg_light })
hi('Cursor', { fg = colors.bg, bg = colors.fg })
hi('CursorLine', { bg = colors.bg_light })
hi('CursorColumn', { bg = colors.bg_light })
hi('LineNr', { fg = colors.gray })
hi('CursorLineNr', { fg = colors.yellow, style = 'bold' })
hi('SignColumn', { bg = colors.bg })
hi('StatusLine', { fg = colors.fg, bg = colors.bg_light })
hi('StatusLineNC', { fg = colors.gray, bg = colors.bg_light })
hi('VertSplit', { fg = colors.gray })
hi('Visual', { bg = colors.bg_lighter })
hi('Search', { fg = colors.bg, bg = colors.yellow })
hi('IncSearch', { fg = colors.bg, bg = colors.red })
hi('Pmenu', { fg = colors.fg, bg = colors.bg_light })
hi('PmenuSel', { fg = colors.bg, bg = colors.blue })
hi('PmenuSbar', { bg = colors.bg_lighter })
hi('PmenuThumb', { bg = colors.gray })
hi('Folded', { fg = colors.gray_light, bg = colors.bg_light })
hi('FoldColumn', { fg = colors.gray })

-- Syntax highlighting
hi('Comment', { fg = colors.gray_light, style = 'italic' })
hi('Constant', { fg = colors.magenta })
hi('String', { fg = colors.green })
hi('Character', { fg = colors.green })
hi('Number', { fg = colors.magenta })
hi('Boolean', { fg = colors.magenta })
hi('Float', { fg = colors.magenta })
hi('Identifier', { fg = colors.blue })
hi('Function', { fg = colors.blue })
hi('Statement', { fg = colors.red })
hi('Conditional', { fg = colors.red })
hi('Repeat', { fg = colors.red })
hi('Label', { fg = colors.red })
hi('Operator', { fg = colors.fg })
hi('Keyword', { fg = colors.red })
hi('Exception', { fg = colors.red })
hi('PreProc', { fg = colors.cyan })
hi('Include', { fg = colors.cyan })
hi('Define', { fg = colors.cyan })
hi('Macro', { fg = colors.cyan })
hi('PreCondit', { fg = colors.cyan })
hi('Type', { fg = colors.yellow })
hi('StorageClass', { fg = colors.yellow })
hi('Structure', { fg = colors.yellow })
hi('Typedef', { fg = colors.yellow })
hi('Special', { fg = colors.magenta })
hi('SpecialChar', { fg = colors.magenta })
hi('Tag', { fg = colors.blue })
hi('Delimiter', { fg = colors.fg })
hi('SpecialComment', { fg = colors.gray_light, style = 'italic' })
hi('Debug', { fg = colors.red })
hi('Underlined', { style = 'underline' })
hi('Error', { fg = colors.red, bg = colors.bg_light })
hi('Todo', { fg = colors.magenta, bg = colors.bg_light, style = 'bold' })

-- Treesitter highlights
hi('@variable', { fg = colors.fg })
hi('@variable.builtin', { fg = colors.red })
hi('@constant', { fg = colors.magenta })
hi('@constant.builtin', { fg = colors.magenta })
hi('@string', { fg = colors.green })
hi('@number', { fg = colors.magenta })
hi('@boolean', { fg = colors.magenta })
hi('@function', { fg = colors.blue })
hi('@function.builtin', { fg = colors.blue })
hi('@function.macro', { fg = colors.cyan })
hi('@keyword', { fg = colors.red })
hi('@keyword.function', { fg = colors.red })
hi('@keyword.operator', { fg = colors.red })
hi('@operator', { fg = colors.fg })
hi('@type', { fg = colors.yellow })
hi('@type.builtin', { fg = colors.yellow })
hi('@property', { fg = colors.fg })
hi('@field', { fg = colors.fg })
hi('@parameter', { fg = colors.fg })
hi('@comment', { fg = colors.gray_light, style = 'italic' })
hi('@punctuation.delimiter', { fg = colors.fg })
hi('@punctuation.bracket', { fg = colors.fg })
hi('@tag', { fg = colors.red })
hi('@tag.attribute', { fg = colors.yellow })
hi('@tag.delimiter', { fg = colors.fg })

-- LSP highlights
hi('DiagnosticError', { fg = colors.red })
hi('DiagnosticWarn', { fg = colors.yellow })
hi('DiagnosticInfo', { fg = colors.blue })
hi('DiagnosticHint', { fg = colors.gray_light })
hi('DiagnosticUnderlineError', { style = 'underline', sp = colors.red })
hi('DiagnosticUnderlineWarn', { style = 'underline', sp = colors.yellow })
hi('DiagnosticUnderlineInfo', { style = 'underline', sp = colors.blue })
hi('DiagnosticUnderlineHint', { style = 'underline', sp = colors.gray_light })

-- Git signs
hi('GitSignsAdd', { fg = colors.green })
hi('GitSignsChange', { fg = colors.yellow })
hi('GitSignsDelete', { fg = colors.red })

-- Telescope
hi('TelescopeBorder', { fg = colors.gray, bg = colors.bg })
hi('TelescopePromptBorder', { fg = colors.gray, bg = colors.bg })
hi('TelescopeResultsBorder', { fg = colors.gray, bg = colors.bg })
hi('TelescopePreviewBorder', { fg = colors.gray, bg = colors.bg })
hi('TelescopeSelection', { fg = colors.fg, bg = colors.bg_lighter })
hi('TelescopeSelectionCaret', { fg = colors.red })
hi('TelescopeMatching', { fg = colors.yellow, style = 'bold' })

-- NeoTree
hi('NeoTreeNormal', { fg = colors.fg, bg = colors.bg })
hi('NeoTreeDirectoryIcon', { fg = colors.blue })
hi('NeoTreeDirectoryName', { fg = colors.blue })
hi('NeoTreeFileName', { fg = colors.fg })
hi('NeoTreeGitModified', { fg = colors.yellow })
hi('NeoTreeGitAdded', { fg = colors.green })
hi('NeoTreeGitDeleted', { fg = colors.red })

-- Which-key
hi('WhichKey', { fg = colors.red })
hi('WhichKeyGroup', { fg = colors.blue })
hi('WhichKeyDesc', { fg = colors.fg })
hi('WhichKeySeparator', { fg = colors.gray })

