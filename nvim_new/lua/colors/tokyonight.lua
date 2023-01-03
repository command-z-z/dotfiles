-- 配置主题颜色模式为 storm
vim.g.tokyonight_style = "storm"
-- 允许neovim中的终端使用该主题配色
vim.g.tokyonight_terminal_colors = true
-- 注释使用斜体
vim.g.tokyonight_italic_comments = true

-- Example config in Lua
-- vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]

