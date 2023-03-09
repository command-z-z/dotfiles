local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup(
{
    'nvim-tree/nvim-web-devicons',
    --statueline 
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons", opt = true}
    },
    -- bufferline 
    {'akinsho/bufferline.nvim', version = "v3.*", dependencies = 'nvim-tree/nvim-web-devicons'},
    -- notify
    {
        "folke/noice.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
    },
    -- theme
    'shaunsingh/nord.nvim',
    { "catppuccin/nvim", name = "catppuccin" },
    "folke/tokyonight.nvim",
    -- ranger
    "kevinhwang91/rnvimr",
    -- file management
    {
        "Shougo/defx.nvim",
        dependencies = {
            "kristijanhusak/defx-icons", -- dexf文件管理图标支持
            "t9md/vim-choosewin" -- 窗口选择器,可以让defx使用i打开文件
        }
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        version = 'nightly' -- optional, updated every week. (see issue #1193)
    },
    --markdown preview
    {
        "iamcco/markdown-preview.nvim",
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    --lsp
    {
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    --Nvim LSP client
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp", --neovim 内置 LSP 客户端的 nvim-cmp 源
            --以下插件可选，可以根据个人喜好删减
            "onsails/lspkind-nvim", --美化自动完成提示信息
            "hrsh7th/cmp-buffer", --从buffer中智能提示
            "hrsh7th/cmp-nvim-lua", --nvim-cmp source for neovim Lua API.
            "octaltree/cmp-look", --用于完成英语单词
            "hrsh7th/cmp-path", --自动提示硬盘上的文件
            "hrsh7th/cmp-calc", --输入数学算式（如1+1=）自动计算
            "f3fora/cmp-spell", --nvim-cmp 的拼写源基于 vim 的拼写建议
            "hrsh7th/cmp-emoji", --输入: 可以显示表情
        }
    },
    -- code snippets
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
            "rafamadriz/friendly-snippets" --代码段合集
        },
        event = 'InsertCharPre'
    },
    -- lsp improve 
    { "glepnir/lspsaga.nvim", branch = "main", event = 'LspAttach'},
    -- symbols autopairs
    {"windwp/nvim-autopairs", event = 'InsertEnter'},
    -- fuzzy search
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons"
        }
    },
    -- search faster 
    {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
    -- file browser
    {"nvim-telescope/telescope-file-browser.nvim" },
    --grammar highlight
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        event = "BufRead"
    },
    {
        'nvim-treesitter/playground',
    },
    -- comment 
    {"b3nj5m1n/kommentary"},
    -- quickrun
    'thinca/vim-quickrun',
    -- docstrings
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
    },
    -- start page
    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = {'nvim-tree/nvim-web-devicons'}
    },
    -- indent
    'lukas-reineke/indent-blankline.nvim',
    -- bookmark
    'MattesGroeger/vim-bookmarks',
    -- telescope to search mark
    "tom-anders/telescope-vim-bookmarks.nvim",
    -- git 
    {
        'lewis6991/gitsigns.nvim'
    },
    -- todo and trouble tool
    {
        "folke/trouble.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
    },
    {
        "folke/todo-comments.nvim",
        dependencies = "nvim-lua/plenary.nvim",
    },
    -- dap 
    "mfussenegger/nvim-dap",
    "mfussenegger/nvim-dap-python",
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    -- ui
    "MunifTanjim/nui.nvim"
})
