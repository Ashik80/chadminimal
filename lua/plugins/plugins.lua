return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.lspconfig"
        end
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp'
        },
        config = function()
            require "plugins.cmp"
        end
    },
    -- {
    --     'metalelf0/jellybeans-nvim',
    --     lazy = false,
    --     dependencies = {
    --         'rktjmp/lush.nvim'
    --     },
    --     config = function()
    --         vim.cmd.colorscheme "jellybeans-nvim"
    --     end
    -- },
}
