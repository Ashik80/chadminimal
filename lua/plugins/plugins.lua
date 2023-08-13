return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.lspconfig"
        end
    },
    {
        'metalelf0/jellybeans-nvim',
        lazy = false,
        dependencies = {
            'rktjmp/lush.nvim'
        },
        config = function()
            vim.cmd.colorscheme "jellybeans-nvim"
        end
    },
}
