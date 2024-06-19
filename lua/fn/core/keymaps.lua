vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap -- for conciseness

vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit Insert mode" })
vim.keymap.set("i", "JK", "<Esc>", { desc = "Exit Insert mode" })
vim.keymap.set("i", "Jk", "<Esc>", { desc = "Exit Insert mode" })
vim.keymap.set("i", "jK", "<Esc>", { desc = "Exit Insert mode" })

vim.keymap.set("v", "jk", "<Esc>", { desc = "Exit Insert mode" })
vim.keymap.set("v", "JK", "<Esc>", { desc = "Exit Insert mode" })
vim.keymap.set("v", "Jk", "<Esc>", { desc = "Exit Insert mode" })
vim.keymap.set("v", "jK", "<Esc>", { desc = "Exit Insert mode" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- file operations
keymap.set("n", "<leader>ww", ":w<CR>", { desc = "[W]rite file" })
keymap.set("n", "<leader>wq", ":wq<CR>") -- save and quit

-- Quickfix keymaps
keymap.set("n", "<leader>qo", ":copen<CR>") -- open quickfix list
keymap.set("n", "<leader>qf", ":cfirst<CR>") -- jump to first quickfix list item
keymap.set("n", "<leader>qn", ":cnext<CR>") -- jump to next quickfix list item
keymap.set("n", "<leader>qp", ":cprev<CR>") -- jump to prev quickfix list item
keymap.set("n", "<leader>ql", ":clast<CR>") -- jump to last quickfix list item
keymap.set("n", "<leader>qc", ":cclose<CR>") -- close quickfix list

--auto-session
keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "[S]plit [V]ertical" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "[S]plit [H]orizontal" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "[S]plit [E]qual" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "[S]plit close" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "[T]ab [O]pen" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "[T]ab close" }) -- close current tab
keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "[T]ab [N]ext" }) --  go to next tab
keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Prev tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "[T]ab [P]rev" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
-- vim.keymap.set('n', '<leader>X', ':BufferLineCloseRight<CR>')
-- vim.keymap.set('n', '<leader>s', ':BufferLineSortByTabs<CR>')

-- Create newlines without entering insert mode
vim.keymap.set("n", "go", "o<Esc>k", { desc = "New line below, stay N" })
vim.keymap.set("n", "gO", "O<Esc>j", { desc = "New line above, stay N" })

-- Scroll larger amounts
vim.keymap.set("n", "gj", "15gjzz", { desc = "Scroll more" })
vim.keymap.set("n", "gk", "15gkzz", { desc = "Scroll more" })
vim.keymap.set("v", "gj", "15gjzz", { desc = "Scroll more" })
vim.keymap.set("v", "gk", "15gkzz", { desc = "Scroll more" })

-- Faster scrolling
vim.keymap.set("n", "J", "15j", { desc = "Faster scrolling" })
vim.keymap.set("n", "K", "15k", { desc = "Faster scrolling" })
vim.keymap.set("v", "J", "15j", { desc = "Faster scrolling" })
vim.keymap.set("v", "K", "15k", { desc = "Faster scrolling" })

-- Navigation
vim.keymap.set("n", "<a-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<a-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<a-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<a-l>", ":wincmd l<CR>")
-- vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>")

-- Vim REST Console
keymap.set("n", "<leader>xr", ":call VrcQuery()<CR>") -- Run REST query

-- Harpoon
-- keymap.set("n", "<leader>ha", require("fn.plugins.harpoon.mark").add_file)
-- keymap.set("n", "<leader>hh", require("fn.plugins.harpoon.ui").toggle_quick_menu)
-- keymap.set("n", "<leader>h1", function()
--   require("harpoon.ui").nav_file(1)
-- end)
-- keymap.set("n", "<leader>h2", function()
--   require("harpoon.ui").nav_file(2)
-- end)
-- keymap.set("n", "<leader>h3", function()
--   require("harpoon.ui").nav_file(3)
-- end)
-- keymap.set("n", "<leader>h4", function()
--   require("harpoon.ui").nav_file(4)
-- end)
-- keymap.set("n", "<leader>h5", function()
--   require("harpoon.ui").nav_file(5)
-- end)
-- keymap.set("n", "<leader>h6", function()
--   require("harpoon.ui").nav_file(6)
-- end)
-- keymap.set("n", "<leader>h7", function()
--   require("harpoon.ui").nav_file(7)
-- end)
-- keymap.set("n", "<leader>h8", function()
--   require("harpoon.ui").nav_file(8)
-- end)
-- keymap.set("n", "<leader>h9", function()
--   require("harpoon.ui").nav_file(9)
-- end)

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set("i", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("i", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("i", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("i", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- vim.keymap.set("n", "<c-k>", function()
--   local word = vim.fn.expand("<cword>")
--   vim.cmd("help " .. word)
-- end, { desc = "help for current word" })

-- local map = require("core.utils").map
-- local mapfile = " "
-- map("n", "<c-k>", function()
--   local word = vim.fn.expand("<cword>")
--   vim.cmd("help " .. word)
-- end, {
--   desc = mapfile .. "help for current word",
-- })

-- Map H to move to the beginning of the line
vim.keymap.set("n", "H", "^", { desc = "Beginning of line (^)" })

-- Map L to move to the end of the line
vim.keymap.set("n", "L", "$", { desc = "EoL ($)" })

-- Map Y to yank until the end of the line
vim.keymap.set("n", "Y", "y$", { desc = "Yank until EoL" })

-- Map p in visual mode to paste over the selected text without affecting the default register
vim.keymap.set("v", "p", "_dP", { desc = 'Paste in V without changing the reg ("_dP)' })

vim.keymap.set("n", "<leader>j", "J", { desc = "Join lines" })
