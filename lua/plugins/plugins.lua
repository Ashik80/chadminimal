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
    {
        'rose-pine/neovim', name = 'rose-pine',
        config = function()
            vim.cmd.colorscheme "rose-pine"
        end
    },
    -- {
    --     'junegunn/fzf.vim',
    --     dependencies = {
    --         'junegunn/fzf'
    --     }
    -- },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
