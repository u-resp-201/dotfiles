syntax on

set tabstop=4 softtabstop=4     "number of tabs in a file, no of tabs when you hit tabspace
set shiftwidth=4          		"gives an indent of 4 spaces
set smartindent
set nu                          "gives a numberline
set nowrap
set smartcase
set expandtab                   "convert tab character to spaces
set noswapfile                  "does not create .swp files
set incsearch
set bg=dark
set colorcolumn=100
set termguicolors
if &term == "screen"
  set t_Co=256
endif


"Plugin Manager- Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"ADD PLUGINS HERE
"colorschemes
Plugin 'morhetz/gruvbox'
Plugin 'sickill/vim-monokai'         
Plugin 'tomasr/molokai'
Plugin 'phanviet/vim-monokai-pro'
Plugin 'blueshirts/darcula'
Plugin 'jnurmine/Zenburn'
Plugin 'arcticicestudio/nord-vim'
Plugin 'ajmwagar/vim-deus'
Plugin 'sainnhe/sonokai'
Plugin 'severij/vadelma'
Plugin 'sainnhe/gruvbox-material'
Plugin 'srcery-colors/srcery-vim'

" Snippets
Plugin 'SirVer/ultisnips'

" Powerline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" AutoComplete Plugin
Plugin 'ycm-core/YouCompleteMe'

" Nerd Tree
Plugin 'preservim/nerdtree'

" Color Pigments
Plugin 'ObserverOfTime/coloresque.vim'

" emmet Plugin
Plugin 'mattn/emmet-vim'

"indentline
Plugin 'Yggdroot/indentLine'

call vundle#end()

nnoremap <C-t> :NERDTreeToggle<CR>

map <tab> :bnext<CR>
colorscheme sonokai

" Smarter tabline 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" ultisnips vim
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-f>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"
