-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Define local variables
-- local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local user_cmd = vim.api.nvim_create_user_command

-- rewrite all augroups using tis function
local function augroup(name)
  return vim.api.nvim_create_augroup("sergio-lazyvim_" .. name, { clear = true })
end

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- augroup('formatonsave', { clear = true })
autocmd("BufWritePost", {
  group = augroup("formatonsave"),
  desc = "Trigger format on save",
  pattern = { "*.lua", "*.py", "*.rb", "*.rs", "*.ts", "*.tsx", "*.sh", "*.md" },
  callback = function()
    vim.lsp.buf.format()
    vim.cmd("normal zz")
  end,
})

autocmd("VimLeave", {
  pattern = "*",
  group = augroup("WriteShada"),
  command = "wshada",
  desc = "Save registers jumps marks and more",
})
