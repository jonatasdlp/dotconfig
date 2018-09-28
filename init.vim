call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Add plugins to &runtimepath
Plug 'tpope/vim-rails'
Plug 'kien/ctrlp.vim'
Plug 'ddollar/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'vim-scripts/bufkill.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/EasyGrep'
Plug 'vim-ruby/vim-ruby'
Plug 'mattn/emmet-vim/'
Plug 'othree/html5.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'jgdavey/tslime.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'ap/vim-css-color'
Plug 'itspriddle/vim-jquery'
Plug 'tpope/vim-endwise'
Plug 'dag/vim-fish'
Plug 'maksimr/vim-jsbeautify'
Plug 'einars/js-beautify'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'othree/es.next.syntax.vim'
Plug 'carakan/new-railscasts-theme'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tomasr/molokai'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'sbdchd/neoformat'
Plug 'flowtype/vim-flow'
Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'ternjs/tern_for_vim', { 'dir': '~/.vim/plugged/tern_for_vim', 'do': 'npm install' } 
Plug 'Galooshi/vim-import-js', { 'do': 'npm install -g import-js' }

call plug#end()

syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set nowrap
set background=dark
set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands
set t_Co=256
set number
set shell=/bin/zsh
colorscheme molokai

let g:NERDTreeWinPos = "left"
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
let g:user_emmet_mode='a' "enable all function in all mode.
let NERDTreeIgnore=['\www', '\~$']
let b:ale_linters = {
\   'javascript': ['eslint', 'flow'],
\}
let g:ale_lint_on_text_changed = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"

let g:molokai_original = 1
let g:rehash256 = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

" airline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" eslint
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:ale_emit_conflict_warnings = 0
let g:neoformat_enabled_javascript = ['prettier', 'eslint']
let g:flow#autoclose = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Autocomplete

" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0

" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly

" Vimbrant configs
highlight ColorColumn ctermbg=7
highlight ColorColumn guibg=Gray

" Cursor
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=white
set guicursor=n-v-c:block-Cursor
set guicursor+=i-ci:ver25-iCursor 
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" Required:
filetype plugin indent on

" Key maps
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :split<CR>
nmap <F4> :tabnew<CR>
nmap <F6> :/\
nmap <F12> :retab<CR>
nmap <F8> :TagbarToggle<CR>
nmap <Leader>f :call Fixmyjs()<CR>
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" JS Beutify
map <c-f> :call JsBeautify()<cr>

" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" backup to ~/.tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
