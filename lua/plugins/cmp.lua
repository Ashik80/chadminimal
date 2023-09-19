local cmp = require 'cmp'

cmp.setup {
    mapping = cmp.mapping.preset.insert({
        ['<C-n>'] = function(fallback)
            if not cmp.select_next_item() then
                if vim.bo.buftype ~= 'prompt' then
                    cmp.complete()
                else
                    fallback()
                end
            end
        end,
        ['<C-p>'] = function(fallback)
            if not cmp.select_prev_item() then
                if vim.bo.buftype ~= 'prompt' then
                    cmp.complete()
                else
                    fallback()
                end
            end
        end,
        ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = {
        { name = 'nvim_lsp' },
    },
}
