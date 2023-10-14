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
        "catppuccin/nvim", name = "catppuccin", priority = 1000,
        config = function()
            vim.cmd.colorscheme "catppuccin"
        end
    },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
