local statue, mason = pcall(require, "mason")
if not statue then
	return
end

mason.setup({
  automatic_installation = true,

  ui = {
    icons = {
      package_installed = " ",
      package_pending = " ",
      package_uninstalled = " ﮊ",
    },
  },
})
