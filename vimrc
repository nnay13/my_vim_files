call pathogen#infect()
colorscheme tir_black
set term=gnome-256color 
syntax on
set guifont=Monospace\ 15
set background=dark
set number
set nocompatible
set backspace=2
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
let mapleader=","
"Les recherches sont en inversion vidéo
set hlsearch
"Met un $  à la fin des change word
set cpoptions+=$
"Virtual edit see help virtual.txt
set virtualedit=all

filetype plugin indent on " Enable filetype-specific indenting and plugins

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

augroup myfiletypes
" Clear old autocmds in group
autocmd!
" autoindent with two spaces, always expand tabs
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
autocmd BufNewFile,BufRead *.html.erb set filetype=eruby.html 
augroup END
"lance NERDtree avec ,p
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
