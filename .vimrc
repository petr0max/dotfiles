set t_Co=256
set number
filetype plugin indent on
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

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Plugin for flake8 for check PEP8
Plug 'nvie/vim-flake8'

" Plugin auto completion fix using vim-autopep8
Plug 'tell-k/vim-autopep8'

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

" Syntax highlighting for .jsx (js files for react js)
Plug 'mxw/vim-jsx'

" Highlights
Plug 'gregsexton/MatchTag'

" Add support css3 property
Plug 'hail2u/vim-css3-syntax'

" Smart indent for javascript
Plug 'lukaszb/vim-web-indent'

" Nice statusline/ruler for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax highlighting
Plug 'jelera/vim-javascript-syntax'
test dpamg
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

" Initialize plugin system
call plug#end()

"------------------
" NERDTree
" Tell NERDTree to display hidden files on startup
let NERDTreShowHidden=1

" Disable bookmarks label, and hint about '?'
let NERDTreeMinimalUI=1

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

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Setting for autopep8
autocmd FileType python set equalprg=autopep8\ -
autocmd FileType python noremap <buffer> <F6> :call Autopep8()<CR>
