local ls = require("luasnip")

-- Every unspecified option will be set to the default.
ls.config.set_config({
	history = true,
	updateevents = "TextChanged,TextChangedI",
})

require("luasnip/loaders/from_vscode").lazy_load()
-- require("luasnip/loaders/from_vscode").load() -- You can pass { paths = "./my-snippets/"} as well
--[[ require('luasnip/loaders/from_vscode').lazy_load({
    paths = { './snippets/' },
  }) ]]

