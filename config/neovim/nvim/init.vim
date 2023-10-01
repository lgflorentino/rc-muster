" comment comment
set nocompatible
set smartindent "autoindentation

lua require('plugins')
lua require('init')

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

set backspace=indent,eol,start "backspace over indent end of line start of line

set laststatus=2 "dislay the status line


set showmatch "showmatching braces

set scrolloff=5 "scrolloff

set cindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType vue setlocal shiftwidth=2 tabstop=2
autocmd FileType html       setlocal shiftwidth=2 tabstop=2
autocmd FileType python     setlocal shiftwidth=4 softtabstop=4 expandtab


"Neoformat settings

let g:neoformat_try_node_exe = 1

"augroup fmt
"    autocmd!
"    autocmd BufWritePre * undojoin | Neoformat
"augroup END



set wildmenu " command line completion in nvim


set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175



