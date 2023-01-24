" comment comment
set nocompatible
set smartindent "autoindentation

lua require('plugins')

colorscheme tokyonight
autocmd vimenter * NERDTree
autocmd vimenter * vertical resize 37
let NERDTreeShowHidden=1
autocmd vimenter * wincmd p

syntax on " Turn On Syntax Highlighting
filetype indent plugin on "load filetype plugin indent settings

set number " Set Line Numbering

set background=dark "Dark Background


set mouse=a "use mouse everywhere

set ruler "Bottom Positions

set backspace=indent,eol,start "baclspace over indent end of line start of line

set laststatus=2 "dislay the status line

set expandtab "noreal tabs

set showmatch "showmatching braces

set scrolloff=5 "scrolloff

set cindent
set shiftwidth=4
set softtabstop=4

set tabstop=8 " real tabs

let g:neoformat_try_node_exe = 1

set wildmenu " command line completion in nvim

autocmd FileType html,javascript,jsx,vue setlocal shiftwidth=2 tabstop=2





