" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Intellisense engine for Vim8 & Neovim, full language server protocol support as VSCode https://salt.bountysource.com/teams/c…
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" A plugin of NERDTree showing git status
Plug 'scrooloose/nerdtree'

" Extra syntax and highlight for nerdtree files
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more
Plug 'ryanoasis/vim-devicons'

" A Vim plugin which shows git diff markers in the sign column and stages/previews/undoes hunks and partial hunks.
Plug 'airblade/vim-gitgutter'

" Fuzzy file, buffer, mru, tag, etc finder. http://kien.github.com/ctrlp.vim
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files

" Vim plugin for intensely nerdy commenting powers
Plug 'scrooloose/nerdcommenter'

" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" EditorConfig plugin for Vim http://editorconfig.org
Plug 'editorconfig/editorconfig-vim'

" fugitive.vim: A Git wrapper so awesome, it should be illegal https://www.vim.org/scripts/script.ph…
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='powerlineish'

let g:molokai_original = 1
let g:rehash256 = 1

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=white
colorscheme molokai

set guifont=Hack\ Regular\ Nerd\ Font\ Complete\ Font:h13
set encoding=UTF-8
set number
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set shortmess+=c
set background=dark
set shell=/bin/zsh

set guicursor=n-v-c:block-Cursor
set guicursor+=i-ci:ver25-iCursor 
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
