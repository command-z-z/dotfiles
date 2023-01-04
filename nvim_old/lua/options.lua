-- vim 个人使用习惯配置start------
vim.opt.encoding = "utf-8"
-- 使用鼠标
vim.opt.mouse = "c"
-- 显示相对行号
vim.opt.relativenumber = true
-- 显示行号
vim.opt.number = true
-- tab=4个空格
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- 高度光标所在行
vim.opt.cursorline = true
-- 设置不换行
vim.opt.wrap = true
-- 显示按下的按键
vim.opt.showcmd = true
-- 按tab显示菜单
vim.opt.wildmenu = true
-- 不需要备份文件
vim.opt.backup = false
-- no highlight search
vim.opt.hlsearch = true
-- defx icon 
vim.g.defx_icons_column_length = 2

vim.opt.clipboard = "unnamedplus"
