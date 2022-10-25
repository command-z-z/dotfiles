local status, actions = pcall(require, "telescope.actions")
if (not status) then
	return
end

--local actions = require('telescope.actions')
-- Global remapping
------------------------------
require("telescope").setup {
	defaults = {
		mappings = {
			n = {
				["q"] = actions.close,
				["l"] = actions.file_edit,
			}
		},
		file_ignore_patterns = {"./node_modules"}
	},
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case" -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
        file_browser = {
            theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                    -- your custom insert mode mappings
                },
                ["n"] = {
                    -- your custom normal mode mappings
                },
            },
        },
	},
	pickers = {
		find_files = {
			theme =  "dropdown", -- override the generic sorter
			previewer = false -- override the file sorter
		}
	}
}

-- To get fzf loaed and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("fzf")
require('telescope').load_extension('vim_bookmarks')
require("telescope").load_extension "file_browser"
-- require('telescope').load_extension('dap')

--按键设置
vim.api.nvim_set_keymap("n", "<leader>ff", [[<cmd>lua require('telescope.builtin').find_files()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>fg", [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], {})
-- vim.api.nvim_set_keymap("n", "<leader>fb", [[<cmd>lua require('telescope.builtin').buffers()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>fh", [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>ma", [[<cmd>Telescope vim_bookmarks current_file<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>mA", [[<cmd>Telescope vim_bookmarks all<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>fo", [[<cmd>Telescope oldfiles theme=dropdown previewer=false<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>fb", [[<cmd>Telescope file_browser<cr>]], {})
