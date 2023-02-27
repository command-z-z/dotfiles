-- leader设置成空格
vim.g.mapleader = " "

local opts = { silent = true, noremap = true}
-----------------------------------------------------------------------------
-- window
-------------------------------------------------------------------------------
-- Split window
vim.api.nvim_set_keymap("n", "ss", ":split<Return><C-w>w", opts)
vim.api.nvim_set_keymap("n", "sv", ":vsplit<Return><C-w>w", opts)
-- Move window
vim.api.nvim_set_keymap("n", "sh", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "sk", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "sj", "<C-w>j", opts)
vim.api.nvim_set_keymap("n", "sl", "<C-w>l", opts)
-- Resize window
-- 在mac/linux中使用Alt键(Meta)
vim.api.nvim_set_keymap("n", "<M-left>", "<C-w><", opts)
vim.api.nvim_set_keymap("n", "<M-right>", "<C-w>>", opts)
vim.api.nvim_set_keymap("n", "<M-up>", "<C-w>+", opts)
vim.api.nvim_set_keymap("n", "<M-down>", "<C-w>-", opts)
-- 插入模式移动光标
vim.api.nvim_set_keymap("i", "<C-h>", "<Left>", opts)
vim.api.nvim_set_keymap("i", "<C-j>", "<Down>", opts)
vim.api.nvim_set_keymap("i", "<C-k>", "<Up>", opts)
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", opts)
vim.api.nvim_set_keymap("i", "<C-d>", "<Delete>", opts)
-- jk <Esc>
vim.api.nvim_set_keymap("i", "jk", "<Esc>", opts)
-- 快速跳转行首与行尾  
vim.api.nvim_set_keymap("n", "L", "$", opts)
vim.api.nvim_set_keymap("n", "H", "^", opts)
vim.api.nvim_set_keymap("v", "L", "$", opts)
vim.api.nvim_set_keymap("v", "H", "^", opts)
-- 向下5行
vim.api.nvim_set_keymap("", "<C-j>", "5j", opts)
vim.api.nvim_set_keymap("", "<C-k>", "5k", opts)
vim.api.nvim_set_keymap("", "<C-h>", "5h", opts)
vim.api.nvim_set_keymap("", "<C-l>", "5l", opts)
-- 保 存
vim.api.nvim_set_keymap("n", "s", ":w<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", opts)
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc> :w<CR>", opts)
-- 强制退出
vim.api.nvim_set_keymap("n", "Q", ":q<CR>", opts)
-- 全选
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", opts)
-------------------------------------------------------------------------------
-- Buffers
-------------------------------------------------------------------------------
-- Open current directory
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprev<Return>", opts)
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<Return>", opts)
vim.api.nvim_set_keymap("n", "<leader>b", ":bd<Return>", opts)
-- 窗口管理器
-- invoke with '-'
vim.api.nvim_set_keymap("n", "-", "<Plug>(choosewin)", opts)
-- 系统剪贴板
vim.api.nvim_set_keymap("n", "<leader>y", "\"+y", opts)
vim.api.nvim_set_keymap("n", "<leader>p", "\"+p", opts)
-- open personal dotfile
vim.api.nvim_set_keymap("n", "<leader>ee", ":edit $MYVIMRC<CR>", opts)









