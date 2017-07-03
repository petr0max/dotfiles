"	                  ___      __    __                          
"	                 /\_ \   /'__`\ /\ \                         
"	  ___ ___      __\//\ \ /\_\L\ \\ \ \___     ___   __  __    
"	/' __` __`\  /'__`\\ \ \\/_/_\_<_\ \  _ `\  / __`\/\ \/\ \   
"	/\ \/\ \/\ \/\  __/ \_\ \_/\ \L\ \\ \ \ \ \/\ \L\ \ \ \_\ \  
"	\ \_\ \_\ \_\ \____\/\____\ \____/ \ \_\ \_\ \____/\/`____ \ 
"	 \/_/\/_/\/_/\/____/\/____/\/___/   \/_/\/_/\/___/  `/___/> \
"	                                                       /\___/
" 	                                                       \/__/ 

set t_Co=256
set number
set laststatus=2
set encoding=utf-8
set completeopt-=preview
filetype plugin indent on
"filetype plugin on
"set nocompatible
syntax on

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Plugin auto completion fix using vim-autopep8
Plug 'tell-k/vim-autopep8'
Plug 'davidhalter/jedi-vim'

" Plugin tagbar
Plug 'majutsushi/tagbar'

" Plugin ctrlp
Plug 'kien/ctrlp.vim'

" Plugin GitGutter
Plug 'airblade/vim-gitgutter'

" Allow autclose paired characters like [,] or (,)
" and add smart cursor positioning inside it,
Plug 'Raimondi/delimitMate'

" HTML5 + inline SVG omnicomplete function, indent and syntax for vim
Plug 'othree/html5.vim'

" Javascript
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }

" Syntax highlighting for .jsx (js files for react js)
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }

" Highlights
Plug 'gregsexton/MatchTag'

" Add support css3 property
Plug 'hail2u/vim-css3-syntax'

" Nice statusline/ruler for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax highlighting
Plug 'jelera/vim-javascript-syntax'

" Code completion for jquer, lodash e.t.c
Plug 'othree/javascript-libraries-syntax.vim'

" Improved json syntax highliting
Plug 'elzr/vim-json'

"Autocomplete php
Plug 'stanangeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'

" Plugin for emmet
Plug 'mattn/emmet-vim'

" Syntax file for scss
Plug 'cakebaker/scss-syntax.vim'

" Plugin Syntax checking
Plug 'vim-syntastic/syntastic'

" Plugin color scheme
Plug 'ayu-theme/ayu-vim'

" Plugin for support R language
Plug 'jalvesaq/Nvim-R'

" Initialize plugin system
call plug#end()

"------------------
" NERDTree
" Tell NERDTree to display hidden files on startup
let NERDTreShowHidden=0

" Disable bookmarks label, and hint about '?'
let NERDTreeMinimalUI=1

let g:NERDTreeChDirMode = 2

" Display current file in the NERDTree on the left
nmap <silent> <leader>f :NERDTreeFind<CR>

map <C-n> :NERDTreeToggle<CR>

"------------------
" Tagbar
nmap <F8> :TagbarToggle<CR>

"-----------------
" ultisnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
autocmd FileType js UltiSnipsAddFiletypes javascript-node
"----------------
" Airline Themes
"----------------
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_detect_crypt = 1
let g:airline_detect_spell = 1
let g:airline_detect_iminsert = 0
let g:airline_inactive_collapse = 1
let g:airline_theme = 'aurora'
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
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ======================================================================
" Setting javascript
" Enables syntax highlighting for JSDocs.
let g:javascript_plugin_jsdoc = 1

" Enables some additional syntax highlighting for NGDocs. Requires JSDoc
" plugin to be enabled as well.
let g:javascript_plugin_ngdoc = 1

" Enables syntax highlighting for Flow.
let g:javascript_plugin_flow = 1

" Enables code folding based on our syntax file.
"set foldmethod=syntax

"============================
" Jedi vim
"let g:jedi#force_py_version = 3

" ======================================================================
" Setting for autopep8
autocmd FileType python set equalprg=autopep8\ -
autocmd FileType python noremap <buffer> <F6> :call Autopep8()<CR>
"--------------------------------------------------
"" Edit

" Allow backspace to remove indents, newlines and old text
"" set backspace=indent,eol,start
"
" " toggle paste mode on \p
 set pastetoggle=<leader>p
"
" " Add '-' as recognized word symbol. e.g dw delete all 'foo-bar' instead
" just 'foo'
 set iskeyword+=-
"
" " Disable backups file
 set nobackup
"
" " Disable vim common sequense for saving.
" " By defalut vim write buffer to a new file, then delete original file
" " then rename the new file.
 set nowritebackup
"
" " Disable swp files
 set noswapfile
"
" " Do not add eol at the end of file.
"" set noeol
"

" To create a new tab
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>

"...
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
