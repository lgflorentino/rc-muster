-- @lgflorentino config for Neovim Packer plugin manager --

return require('packer').startup(function(use)

    use {'wbthomason/packer.nvim', branch = 'master'}

    use 'folke/tokyonight.nvim'

    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    use {'https://github.com/preservim/nerdtree', as = 'nerdtree'}

    use 'neovim/nvim-lspconfig'

    use 'ziglang/zig.vim'

    use 'peterhoeg/vim-qml'

    use 'posva/vim-vue'

    use 'https://github.com/sbdchd/neoformat'

    use { 'JuliaEditorSupport/julia-vim', setup = [[vim.g.latex_to_unicode_tab = 'off']], opt = true }

    -- nvim-telescope + deps
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'nvim-tree/nvim-web-devicons'}
        }
    }

end)
