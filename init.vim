let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
  Plug 'natebosch/vim-lsc'
  Plug 'romainl/vim-cool'
  Plug 'romainl/vim-qf'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-vinegar'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'dyng/ctrlsf.vim'
  Plug 'mjlbach/onedark.nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
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

colorscheme onedark

hi ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+\%#\@<!$/

map <space> <leader>

nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>gf :diffget //2<CR>

let g:lsc_auto_map = {'defaults': v:true, 'PreviousReference': ''}
let g:lsc_server_commands = {
  \ "go": {
  \   "command": "gopls serve",
  \   "log_level": -1,
  \   "suppress_stderr": v:true
  \},
  \ "javascript": "typescript-language-server --stdio",
  \ "typescript": "typescript-language-server --stdio",
  \ "python": "pyls",
 \}

autocmd QuickFixCmdPost [^l]* cwindow


lua << EOF
  require('nvim-treesitter.configs').setup {
    highlight = { enable = true },
    indent = { enable = true },
  }
EOF
