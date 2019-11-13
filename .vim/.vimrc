" Vim plug section
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'myusuf3/numbers.vim'
Plug 'easymotion/vim-easymotion'
Plug 'altercation/vim-colors-solarized'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'mileszs/ack.vim'
if has('mvim')
    Plug 'Valloric/YouCompleteMe'
endif
Plug 'gko/vim-coloresque'
Plug 'ap/vim-buftabline'
Plug 'lifepillar/vim-solarized8'
Plug 'mustache/vim-mustache-handlebars'
call plug#end()

" -----------------------------------------------------------------------
" General

let mapleader = ","
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set directory=$HOME/.vim/swapfiles//
set number
set hlsearch
set ignorecase
set smartcase
syntax enable
set background=light
colorscheme solarized
set termguicolors

" Color for .axi files
au BufRead,BufNewFile,BufReadPost *.axi set filetype=javascript

" -----------------------------------------------------------------------
" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" -----------------------------------------------------------------------
" netrw
"map <C-e> :Vex<CR>
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25

" -----------------------------------------------------------------------
" NERDTree
map <C-e> :NERDTreeFocus<CR>
map <Leader>e :NERDTreeFind<CR>
let NERDTreeWinSize=70

" -----------------------------------------------------------------------
" Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
xnoremap <Leader>a :<C-U>Ack!<Space> '<C-R><C-W>' -G ''<left>

" -----------------------------------------------------------------------
" ctrlp
"let g:ctrlp_max_files = 0
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*,*node_modules,*.class

" Ctrl O F opens current buffer's folder in Finder, selecting the current file
" if it exists. Works for both directories and files.
map <C-o><C-f> :silent execute '![ -f "%:p"  ] && open -R "%:p" \|\| open "%:p:h"'<CR>

" -----------------------------------------------------------------------
"  Buffer related
set hidden
" Alt + <Right>, next buffer
nnoremap <A-Right> :bnext<CR>
" Alt + <Left>, previous buffer
nnoremap <A-Left> :bprev<CR>

nmap <leader>w :bd<CR>
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(10)
let g:buftabline_numbers = 2
let g:buftabline_indicators = 1
let g:buftabline_separators = 1
