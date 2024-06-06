vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Define the langmap mappings: https://github.com/Wansmer/langmapper.nvim
local function escape(str)
  -- You need to escape these characters to work correctly
  local escape_chars = [[;,."|\]]
  return vim.fn.escape(str, escape_chars)
end

-- Recommended to use lua template string
-- local en = [[`qwertyuiop[]asdfghjkl;'zxcvbnm]]
-- local ru = [[ёйцукенгшщзхъфывапролджэячсмить]]
-- local en_shift = [[~QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>]]
-- local ru_shift = [[ËЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ]]
--
-- vim.opt.langmap = vim.fn.join({
--   -- | `to` should be first     | `from` should be second
--   escape(ru_shift)
--     .. ";"
--     .. escape(en_shift),
--   escape(ru) .. ";" .. escape(en),
-- }, ",")

opt.relativenumber = true
opt.number = true
vim.wo.number = true
vim.wo.relativenumber = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.softtabstop = 2
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
-- Show which line your cursor is on
opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

vim.opt.smartindent = true
vim.opt.breakindent = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
--
-- -- Fillchars
-- vim.opt.fillchars = {
--   vert = '│',
--   fold = '⠀',
--   eob = ' ', -- suppress ~ at EndOfBuffer
--   -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
--   msgsep = '‾',
--   foldopen = '▾',
--   foldsep = '│',
--   foldclose = '▸',
-- }
