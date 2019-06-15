" Open splits below and right
set splitbelow
set splitright

" Don't blink cursor
set guicursor+=n-v-c:blinkon0

" hide scrollbars in MacVim
set guioptions=r

" Enable syntax highlighting
syntax on

" Color invisible characters
highlight NonText ctermfg=DarkGrey
highlight SpecialKey ctermfg=DarkGrey

" Show line numbers
set number
set relativenumber

" Highlight current line
set cursorline

" Search
set ignorecase

" Safety
set undofile
set noswapfile
set nobackup
set nowritebackup
set undodir=/tmp/.vim_undo

" Indentation
set wrap
set expandtab
set formatoptions=qrn1
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Show command
set showcmd

" STFU
set visualbell

" Color line numbers
highlight LineNr ctermfg=DarkGrey

" Highlight trailing whitespaces
" http://stackoverflow.com/questions/356126/how-can-you-automatically-remove-trailing-whitespace-in-vim
match Todo /\s\+$/

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" write file contents automatically when calling :make
set autowrite

""""""""""""""""""""""""""""""""""""""""
" Shortcuts, commands
""""""""""""""""""""""""""""""""""""""""

" Leader is space
let mapleader="\<Space>"

" Quickly pressing jj exits insert mode
imap jj <Esc>

" Navigate wrapped lines quickly
nmap j gj
nmap k gk

" Navigate between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remove trailing whitespaces
nnoremap <Leader>w :%s/\s\+$//e<CR>

" Live it.
noremap <Up> :resize +2<CR>
noremap <Down> :resize -2<CR>
noremap <Left> :vertical resize -2<CR>
noremap <Right> :vertical resize +2<CR>

" Quick vimrc edit and source
nnoremap <Leader>vi :tabnew $MYVIMRC<CR>
nnoremap <Leader>so :source $MYVIMRC<CR>

" Quickly quit help files
autocmd Filetype help nnoremap <buffer> q :q<CR>
autocmd Filetype godoc nnoremap <buffer> q :q<CR>

" Edit files in same directory as the current file
nnoremap <Leader>ew :e <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
nnoremap <Leader>es :sp <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
nnoremap <Leader>ev :vsp <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
nnoremap <Leader>et :tabe <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>

" Repeat last macro instead of going to ex mode
nnoremap Q @@

" Plugins

" fzf
nnoremap <C-P> :FZF<CR>
nnoremap <C-B> :Buffers<CR>

" Dispatch map
nnoremap <F9> :Dispatch<CR>

" vim-airline
let g:airline#extensions#tabline#enabled = 1
