-- @lgflorentino config for Neovim Packer plugin manager --

return {

    'folke/tokyonight.nvim',

    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    { 'https://github.com/preservim/nerdtree', name = 'nerdtree'},

    'neovim/nvim-lspconfig',

    'ziglang/zig.vim',
    'peterhoeg/vim-qml',
    'posva/vim-vue',
    'https://github.com/sbdchd/neoformat',

    {
        'JuliaEditorSupport/julia-vim',
        init = function()
            vim.g.latex_to_unicode_tab = 'off'
        end,
        lazy = true
    },
    { 'nvim-telescope/telescope.nvim', version = '0.1.2',
        dependencies = {
            {'nvim-lua/plenary.nvim'},
            {'nvim-tree/nvim-web-devicons'}
        }
    }
}
