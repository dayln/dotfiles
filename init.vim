syntax on
set number

set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

call plug#begin()

Plug 'scrooloose/nerdtree', {'on': 'NERDTreetoggle' }
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'

Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'rust-lang/rust.vim', { 'for' : 'rust' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

map <C-n> :NERDTreeToggle<CR>

colorscheme onedark
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
