set number
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set hlsearch
set incsearch
set clipboard=unnamed

set list
set listchars+=trail:·
set listchars-=eol:$
highlight SpecialKey ctermfg=darkgray guifg=darkgray

filetype plugin on
syntax on
set background=dark
colorscheme hybrid_material
let g:airline_theme = "hybrid"
set autoindent

call plug#begin()
  Plug 'sheerun/vim-polyglot'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'vim-ruby/vim-ruby'
  " Plug 'tpope/vim-rails'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * silent !echo -ne "\e[6 q"
augroup END

nnoremap <C-P> :Files<CR>
nnoremap <C-S> <C-W>
" Remap split navigation to Control+h/j/k/l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
vnoremap <C-c> :w !pbcopy<CR><CR>

function! ClearSearchPattern()
    let @/ = ''
endfunction

autocmd InsertEnter * :call ClearSearchPattern()


" python3 from powerline.vim import setup as powerline_setup
" python3 powerline_setup()
" python3 del powerline_setup
set laststatus=2

if (has("termguicolors"))
  set termguicolors
endif

