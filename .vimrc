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

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Plugin auto completion fix using autopep8
Plug 'tell-k/vim-autopep8'

" Plugin tagbar
Plug 'majutsushi/tagbar'

" Nice statusline mode for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plugin for support latex
Plug 'lervag/vimtex'
Plug 'vim-latex/vim-latex'

" Initialize plugin system
call plug#end()

set number
set nobackup

"----------------------
" Tagbar remap
nmap <F8> :TagbarToggle<CR>

" ---------------------
" Airline Themes
" ---------------------
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

" ---------------------
" Vimtex
" ---------------------
let g:vimtex_compiler_latexmk = {'callback' : 0}

" ---------------------
" Setting for autopep8
autocmd FileType python set equalprg=autopep8\ -
autocmd FileType python noremap <buffer> <F6> :call Autopep8()<CR>
