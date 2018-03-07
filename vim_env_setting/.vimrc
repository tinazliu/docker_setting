"----------------------------------"
" basic setting
"----------------------------------"
:set nu
:set ai
:set cursorline
:set bg=dark
:set tabstop=2
:set shiftwidth=2
:set incsearch
:set hlsearch
:set encoding=utf-8
:inoremap ( ()<Esc>i
:inoremap " ""<Esc>i

""':inoremap ' ''<Esc>i
:inoremap [ []<Esc>i
:inoremap {<CR> {<CR>}<Esc>ko
filetype indent on


syntax enable

let mapleader = ","
hi Comment ctermfg=lightred
" ---------------------------------- "
" Pathogen
" ---------------------------------- "

" Load plugins with pathogen
execute pathogen#infect()
execute pathogen#helptags()

" ---------------------------------- "
" Configure NERDTree
" ---------------------------------- "

" Open NERDTree when Vim startsup and no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree with Ctrl-n
map <F5> :NERDTreeToggle<CR>

" Close Vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ---------------------------------- "
" Configure Ultisnip and YouCompleteMe
" ---------------------------------- "

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" ---------------------------------- "
" Configure YouCompleteMe
" ---------------------------------- "


let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_lmst_previous_completion = ['<C-p>']
let g:ycm_confirm_extra_conf = 0

" Goto definition with F3
map <F3> :YcmCompleter GoTo<CR>
map <F9> :YcmCompleter FixIt<CR>

" ---------------------------------- "

"-------------------------------------------"
" powerline
set guifont=PowerlineSymbols\ for\ Powerline
 set nocompatible
 set t_Co=256
 let g:Powerline_symbols = 'fancy'
"--------------------------------------------"
" Configure Togglelist
" ---------------------------------- "

nnoremap <script> <silent> <leader>l :call ToggleLocationList()<CR>
nnoremap <script> <silent> <leader>q :call ToggleQuickfixList()<CR>

"=============HotKey=============================
inoremap <c-h> <Left>
inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-l> <Right>
inoremap <c-a> <esc>
"================================================"
"=============mouse toggle by dlf==========
function! ToggleMouse()
    " check if mouse is enabled
    if &mouse == 'a'
        " disable mouse
        set mouse=
    else
        " enable mouse everywhere
        set mouse=a
    endif
endfunc
map <F10> :call ToggleMouse()<CR> 
"================================================"
"=============colorscheme========================
let g:molokai_original = 1


set background=dark
set t_Co=256
 colorscheme molokai
""colorscheme desert
