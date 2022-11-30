---@diagnostic disable: undefined-global
--在没有安装packer的电脑上，自动安装packer插件
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})	--默认地址
	-- fn.system({'git', 'clone', '--depth', '1', 'https://codechina.csdn.net/mirrors/wbthomason/packer.nvim.git', install_path})	--csdn加速镜像
	vim.cmd 'packadd packer.nvim'
end
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup({
	function()
		use 'wbthomason/packer.nvim'-- Packer can manage itself
		--新状态栏插件
		use {
			"nvim-lualine/lualine.nvim",
			requires = {"kyazdani42/nvim-web-devicons", opt = true}
		}
		-- bufferline 显示标签页,与lualine配合使用
		use "akinsho/bufferline.nvim"

		-- 主题
		use "sainnhe/gruvbox-material"
        use 'folke/tokyonight.nvim'
        use 'Mofiqul/vscode.nvim'
        use 'shaunsingh/nord.nvim'
        use 'glepnir/zephyr-nvim'
		-- ranger
		use "kevinhwang91/rnvimr"
		-- 文件管理插件，类似与ranger。
		use {
			"Shougo/defx.nvim",
			requires = {
				"kristijanhusak/defx-icons", -- dexf文件管理图标支持
				"t9md/vim-choosewin" -- 窗口选择器,可以让defx使用i打开文件
			}
		}
		--markdown预览插件
        use({
            "iamcco/markdown-preview.nvim",
            run = function() vim.fn["mkdp#util#install"]() end,
        })
		--lsp
		use {
			'neovim/nvim-lspconfig',
			'williamboman/nvim-lsp-installer',
		}
		--Nvim LSP 客户端的快速入门配置
		use {
			"hrsh7th/nvim-cmp",
			requires = {
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
		}
		-- 代码段提示
		use {
			"L3MON4D3/LuaSnip",
			requires = {
				"saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
				"rafamadriz/friendly-snippets" --代码段合集
			}
		}
		--lspUI美化
		-- 自动为尚不支持 Neovim 0.5 内置 lsp 客户端的配色方案创建缺少的 LSP 诊断突出显示组。
		use "folke/lsp-colors.nvim"
		-- 基于neovim 内置lsp 的轻量级lsp 插件，具有高性能UI。非常酷, 后面换成了glepnir的插件
        use { "glepnir/lspsaga.nvim", branch = "main"}
		--符号自动找对象
		-- 显示css的颜色代码的颜色
		use "ap/vim-css-color"
		-- 符号自动匹配，比如：输入(自动闭合）
		use "windwp/nvim-autopairs"
		--模糊搜索
		use {
			"nvim-telescope/telescope.nvim",
			requires = {
				"nvim-lua/plenary.nvim",
				"kyazdani42/nvim-web-devicons"
			}
		}
		-- 加速文件搜索速度,如果安装失败需要到插件目录执行make命令手动编译
		-- 用了这个插件以后，貌似更快了(感觉输入更跟手了，可能是心理作用)。但是对于我的小项目感受不是很明显
		use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
        -- file browser
        use {"nvim-telescope/telescope-file-browser.nvim" }
		--语法高亮
		use {
			'nvim-treesitter/nvim-treesitter',
			run = ':TSUpdate'
		}
		--彩虹括号
		use 'luochen1990/rainbow'
		--注释插件
		use "b3nj5m1n/kommentary"
		--悬浮终端
		use 'voldikss/vim-floaterm'

		--快速运行
		use 'thinca/vim-quickrun'
		-- 代码注释
		use {
			"danymat/neogen",
			config = function()
				require('neogen').setup {}
			end,
			requires = "nvim-treesitter/nvim-treesitter",
			-- Uncomment next line if you want to follow only stable versions
			-- tag = "*"
		}
		-- leedcode
		use 'ianding1/leetcode.vim'
		-- 启动页面
        use 'glepnir/dashboard-nvim'
		-- 对齐页面
		use 'Yggdroot/indentLine'
		-- 打标签
		use 'MattesGroeger/vim-bookmarks'
		-- telescope查询标签支持
		use "tom-anders/telescope-vim-bookmarks.nvim"
		-- 文件大纲	
	    use	'simrat39/symbols-outline.nvim'
		-- 翻译
		use 'voldikss/vim-translator'
        -- latex
        use 'lervag/vimtex'
        -- 调试工具
        use 'mfussenegger/nvim-dap'
        use 'mfussenegger/nvim-dap-python'
        use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
        use 'theHamsta/nvim-dap-virtual-text'
	end,
	config = {
		max_jobs = 16,
		git = {
			default_url_format = 'https://github.91chi.fun/https://github.com/%s'
		},
		display = {
			open_fn = function()
				return require('packer.util').float({ border = 'single' })
			end
		}
	}
})

