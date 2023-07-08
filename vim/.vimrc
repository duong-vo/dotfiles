set number
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2

set list
set listchars+=trail:·
set listchars-=eol:$
highlight SpecialKey ctermfg=darkgray guifg=darkgray

filetype plugin on
syntax on
colorscheme onedark
set autoindent

call plug#begin()
  Plug 'sheerun/vim-polyglot'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'vim-ruby/vim-ruby'
  " Plug 'tpope/vim-rails'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

let &t_SI = "\e[6 q"
let &t_EI = "\e[6 q"

nnoremap <C-P> :Files<CR>
nnoremap <C-S> <C-W>

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
