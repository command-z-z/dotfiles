-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- luasnip setup
local luasnip = require("luasnip")
local lspkind = require("lspkind")

local cmp = require("cmp")

local cmpFormat = function(entry, vim_item)
    vim_item.kind = lspkind.presets.default[vim_item.kind] .. " " .. vim_item.kind
    vim_item.menu =
    ({
        buffe = "[Buffer]",
        nvim_lsp = "[LSP]",
        luasnip = "[Snip]",
        nvim_lua = "[Lua]",
        cmp_tabnine = "[TabNine]",
        look = "[Look]",
        path = "[Path]",
        spell = "[Spell]",
        calc = "[Calc]",
        emoji = "[Emoji]"
    })[entry.source.name]
    return vim_item
end

cmp.setup {
    window = {
        completion = {
            border = "rounded",
            side_padding = 1,
            winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None",
            zindex = 1001,
        },
        documentation = {
            border = "rounded",
            side_padding = 1,
            winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None",
            zindex = 1001,
        }
    },
    formatting = {
        format = cmpFormat
        -- format = require 'lspkind'.cmp_format( { mode = "symbol_text" } ),
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = false
        },
        ['<Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
            else
                fallback()
            end
        end,
        ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
            else
                fallback()
            end
        end

    },
    sources = {
        {name = "nvim_lsp"},
        {name = "luasnip"},
        {name = "nvim_lua"},
        {name = "buffer"},
        {name = "path"},
        {name = "look"},
        {name = "spell"},
        {name = "emoji"},
        {name = "calc"},
        {name = "cmp_tabnine"},
    }
}

