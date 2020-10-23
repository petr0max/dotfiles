" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'airblade/vim-gitgutter'

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Plugin auto completion fix using autopep8
Plug 'tell-k/vim-autopep8'
Plug 'nvie/vim-flake8'
"Plug 'davidhalter/jedi-vim'
Plug 'vim-syntastic/syntastic'

" polyglot
Plug 'sheerun/vim-polyglot'

" Plugin tagbar
Plug 'majutsushi/tagbar'

" Plugin tabular
Plug 'godlygeek/tabular'

" Plugin javascript
Plug 'pangloss/vim-javascript'

" Plugin html5
Plug 'othree/html5.vim'

" Plugin Bootstrap 4 snippet
Plug 'jvanja/vim-bootstrap4-snippets'

" Nice statusline mode for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" editor config
Plug 'editorconfig/editorconfig-vim'

" Plugin emmet
Plug 'mattn/emmet-vim'

" Plugin for support latex
Plug 'lervag/vimtex'
Plug 'altercation/vim-colors-solarized'

" Plugin git
" Initialize plugin system
call plug#end()

set number
set backupdir=~/.vim/backup/
set directory=~/.vim/swp/
set undodir=~/.vim/undo/

"----------------------
" Tagbar remap
nmap <F8> :TagbarToggle<CR>

"set background=dark
"colorscheme solarized
" ---------------------
" Airline Themes
" ---------------------
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_detect_crypt = 1
let g:airline_detect_spell = 1
let g:airline_detect_iminsert = 0
let g:airline_inactive_collapse = 1
let g:airline_theme = 'dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#bufferline#enabled = 0
let g:airline#extensions#bufferline#overwrite_variables = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#branch#vcs_priority = "git"
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#ctrlp#sho_adjacent_modes = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#promptline#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#show_buffers = 1

" ---------------------
" Vimtex
" ---------------------
let g:vimtex_compiler_latexmk = {'callback' : 0}

" ---------------------
" Setting for autopep8
autocmd FileType python set equalprg=autopep8\ -
autocmd FileType python noremap <buffer> <F6> :call Autopep8()<CR>

" Emmet config
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" JS config
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
	au!
	au FileType javascript setlocal foldmethod=syntax
augroup END

set statusline+=%#warningmsg#                                   "syntastic
set statusline+=%{SyntasticStatuslineFlag()}                    "syntastic
set statusline+=%*                                              "syntastic

let g:syntastic_always_populate_loc_list = 1                    "syntastic
let g:syntastic_auto_loc_list = 1                               "syntastic
let g:syntastic_check_on_open = 1                               "syntastic
let g:syntastic_check_on_wq = 0                                 "syntastic
" let g:syntastic_javascript_checkers = ['eslint']                "syntastic

vnoremap <silent> <Leader>cee    :Tabularize /=<CR>              
"tabular
vnoremap <silent> <Leader>cet    :Tabularize /#<CR>              
"tabular
vnoremap <silent> <Leader>ce     :Tabularize /

" css 
autocmd filetype scss,sass,css setlocal expandtab shiftwidth=2 softtabstop=2

" html5
autocmd filetype html,jinja2.html setlocal expandtab shiftwidth=2 softtabstop=2

" Javascript
autocmd filetype javascript,jst,ezt setlocal expandtab shiftwidth=2 softtabstop=2
autocmd filetype javascript.jsx set syntax=javascript

" markdown
autocmd filetype markdown setlocal expandtab shiftwidth=2 softtabstop=2 colorcolumn=90 conceallevel=0

" php
autocmd filetype php setlocal expandtab shiftwidth=2 softtabstop=2

" python
autocmd filetype python setlocal expandtab shiftwidth=4 softtabstop=4 colorcolumn=80

" json
autocmd filetype json setlocal expandtab shiftwidth=2 softtabstop=2
autocmd filetype json syntax match comment +\/\/.\+$+

" gitcommit 
autocmd filetype gitcommit setlocal colorcolumn=80 textwidth=80 fo+=t fo-=1
