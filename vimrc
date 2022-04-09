if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/bundle')
  Plug 'romainl/vim-cool'
  Plug 'romainl/vim-qf'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-vinegar'
  Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

set termguicolors
set noswapfile
set nobackup
set cursorline
set guicursor=
set smartcase ignorecase
set completeopt=menu,menuone,noinsert,noselect
set splitright splitbelow
set hidden
set undodir=~/undodir
set undofile
set nowrap
set wildignore+=*/tmp/*,*.so,*.swp,*.zi

abbrev W w

colorscheme default

hi ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+\%#\@<!$/

map <space> <leader>

nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>gf :diffget //2<CR>

autocmd QuickFixCmdPost [^l]* cwindow
