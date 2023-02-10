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
    --新状态栏插件
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons", opt = true}
    },
    -- bufferline 显示标签页,与lualine配合使用
    {'akinsho/bufferline.nvim', version = "v3.*", dependencies = 'nvim-tree/nvim-web-devicons'},

    -- 主题
    'shaunsingh/nord.nvim',
    { "catppuccin/nvim", name = "catppuccin" },
    -- ranger
    "kevinhwang91/rnvimr",
    -- 文件管理插件，类似与ranger。
    {
        "Shougo/defx.nvim",
        dependencies = {
            "kristijanhusak/defx-icons", -- dexf文件管理图标支持
            "t9md/vim-choosewin" -- 窗口选择器,可以让defx使用i打开文件
        }
    },
    --markdown预览插件
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
    --Nvim LSP 客户端的快速入门配置
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
    -- 代码段提示
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
            "rafamadriz/friendly-snippets" --代码段合集
        }
    },
    -- 基于neovim 内置lsp 的轻量级lsp 插件，具有高性能UI。非常酷, 后面换成了glepnir的插件
    { "glepnir/lspsaga.nvim", branch = "main"},
    -- 符号自动匹配，比如：输入(自动闭合）
    "windwp/nvim-autopairs",
    --模糊搜索
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons"
        }
    },
    -- 加速文件搜索速度,如果安装失败需要到插件目录执行make命令手动编译
    {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
    -- file browser
    {"nvim-telescope/telescope-file-browser.nvim" },
    --语法高亮
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    --注释插件
    "b3nj5m1n/kommentary",
    --快速运行
    'thinca/vim-quickrun',
    -- 代码write注释
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
    },
    -- 启动页面
    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = {{'nvim-tree/nvim-web-devicons'}}
    },
    -- 对齐页面
    'lukas-reineke/indent-blankline.nvim',
    -- 打标签
    'MattesGroeger/vim-bookmarks',
    -- telescope查询标签支持
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
})
