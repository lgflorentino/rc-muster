-- @lgflorentino config for Neovim Packer plugin manager --

return require('packer').startup(function() 

    use 'wbthomason/packer.nvim'

    use 'folke/tokyonight.nvim'

    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    use {'https://github.com/preservim/nerdtree', as = 'nerdtree'}

    use 'ziglang/zig.vim'

    use 'peterhoeg/vim-qml'
    
    use 'posva/vim-vue'

    use { 'JuliaEditorSupport/julia-vim', setup = [[vim.g.latex_to_unicode_tab = 'off']], opt = true }

end)
