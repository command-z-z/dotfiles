vim.o.background = 'dark' 
local c = require('vscode.colors') 
require('vscode').setup({ 
    -- ?????? 
    transparent = true, 
    -- ?????? 
    italic_comments = true, 
    -- ???? nvim-tree ??? 
    disable_nvimtree_bg = true, 
    -- ???????? 
    color_overrides = { 
        vscLineNumber = '#FFFFFF',
     },
})

