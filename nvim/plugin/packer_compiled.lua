-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/apple/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/apple/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/apple/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/apple/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/apple/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.91chi.fun/https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.91chi.fun/https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.91chi.fun/https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.91chi.fun/https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.91chi.fun/https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/cmp-look",
    url = "https://github.91chi.fun/https://github.com/octaltree/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.91chi.fun/https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.91chi.fun/https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.91chi.fun/https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.91chi.fun/https://github.com/f3fora/cmp-spell"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.91chi.fun/https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.91chi.fun/https://github.com/glepnir/dashboard-nvim"
  },
  ["defx-icons"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/defx-icons",
    url = "https://github.91chi.fun/https://github.com/kristijanhusak/defx-icons"
  },
  ["defx.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/defx.nvim",
    url = "https://github.91chi.fun/https://github.com/Shougo/defx.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.91chi.fun/https://github.com/rafamadriz/friendly-snippets"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.91chi.fun/https://github.com/sainnhe/gruvbox-material"
  },
  indentLine = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/indentLine",
    url = "https://github.91chi.fun/https://github.com/Yggdroot/indentLine"
  },
  kommentary = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/kommentary",
    url = "https://github.91chi.fun/https://github.com/b3nj5m1n/kommentary"
  },
  ["leetcode.vim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/leetcode.vim",
    url = "https://github.91chi.fun/https://github.com/ianding1/leetcode.vim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.91chi.fun/https://github.com/folke/lsp-colors.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.91chi.fun/https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.91chi.fun/https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.91chi.fun/https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.91chi.fun/https://github.com/iamcco/markdown-preview.nvim"
  },
  neogen = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vneogen\frequire\0" },
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/neogen",
    url = "https://github.91chi.fun/https://github.com/danymat/neogen"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.91chi.fun/https://github.com/shaunsingh/nord.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.91chi.fun/https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.91chi.fun/https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.91chi.fun/https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.91chi.fun/https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.91chi.fun/https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.91chi.fun/https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.91chi.fun/https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.91chi.fun/https://github.com/nvim-lua/plenary.nvim"
  },
  rainbow = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://github.91chi.fun/https://github.com/luochen1990/rainbow"
  },
  rnvimr = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/rnvimr",
    url = "https://github.91chi.fun/https://github.com/kevinhwang91/rnvimr"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.91chi.fun/https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.91chi.fun/https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-vim-bookmarks.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/telescope-vim-bookmarks.nvim",
    url = "https://github.91chi.fun/https://github.com/tom-anders/telescope-vim-bookmarks.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.91chi.fun/https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.91chi.fun/https://github.com/folke/tokyonight.nvim"
  },
  ["vim-bookmarks"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/vim-bookmarks",
    url = "https://github.91chi.fun/https://github.com/MattesGroeger/vim-bookmarks"
  },
  ["vim-choosewin"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/vim-choosewin",
    url = "https://github.91chi.fun/https://github.com/t9md/vim-choosewin"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/vim-css-color",
    url = "https://github.91chi.fun/https://github.com/ap/vim-css-color"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.91chi.fun/https://github.com/voldikss/vim-floaterm"
  },
  ["vim-quickrun"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/vim-quickrun",
    url = "https://github.91chi.fun/https://github.com/thinca/vim-quickrun"
  },
  ["vim-translator"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/vim-translator",
    url = "https://github.91chi.fun/https://github.com/voldikss/vim-translator"
  },
  vimtex = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.91chi.fun/https://github.com/lervag/vimtex"
  },
  ["vscode.nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/vscode.nvim",
    url = "https://github.91chi.fun/https://github.com/Mofiqul/vscode.nvim"
  },
  ["zephyr-nvim"] = {
    loaded = true,
    path = "/Users/apple/.local/share/nvim/site/pack/packer/start/zephyr-nvim",
    url = "https://github.91chi.fun/https://github.com/glepnir/zephyr-nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neogen
time([[Config for neogen]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vneogen\frequire\0", "config", "neogen")
time([[Config for neogen]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
