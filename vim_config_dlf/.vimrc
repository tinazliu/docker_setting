let mapleader = ","
"=============bundle setting======================
if filereadable(expand("~/.vimrc.bundles"))
source ~/.vimrc.bundles
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 NERDTree                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Open NERDTree when Vim startsup and no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close Vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                nerdcommeter                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDSpaceDelims=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Configure YouCompleteMe                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_lmst_previous_completion = ['<C-p>']
let g:ycm_confirm_extra_conf = 0
let g:ycm_python_binary_path = 'python'
let g:ycm_autoclose_preview_window_after_insertion = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Configure easy-align                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 基本設置 
vmap <Leader>a <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)
if !exists('g:easy_align_delimiters')
  let g:easy_align_delimiters = {}
endif
let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Configure airline                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 顯示buffer
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline_theme='papercolor'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    snip                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Normal setting                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"============color scheme========================
set background=dark

"colorscheme molokai
colorscheme elflord
"colorscheme ron
"colorscheme industry

set t_Co=256  "支援256色

"=============HotKey=============================
inoremap <c-h> <Left>
inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-l> <Right>
inoremap <c-a> <esc>

nnoremap <Leader>m :bn<CR>
nnoremap <Leader>n :bp<CR>

set pastetoggle=<F11> "剪貼模式切換"
"F10 set mouse toggle 

"=========bundle hotkey==========================
" Open NERDTree with Ctrl-n 
map <F5> :NERDTreeToggle<CR>

" Goto definition with F3
map <F3> :YcmCompleter GoTo<CR>
map <F9> :YcmCompleter FixIt<CR>


"==============Basic Setting======================

"set tags=~/.ctags
"highlight Normal ctermfg=green ctermbg=black

filetype plugin on

syntax on

set nu

set relativenumber

set expandtab      " 空白取代tab

set tabstop=2      " tab為兩字元長度

set softtabstop=2	

set shiftwidth=2   " 以2字元縮排

set scrolloff=10

set cindent

set autoindent

set showmatch

set hlsearch

set showcmd

set noeb           " 關閉嗶嗶聲

set encoding=utf-8 " 顯示中文


""==============處理括號==================
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
"inoremap < <><LEFT>
function! RemovePairs()
    let s:line = getline(".")
    let s:previous_char = s:line[col(".")-1]

    if index(["(","[","{"],s:previous_char) != -1
        let l:original_pos = getpos(".")
        execute "normal %"
        let l:new_pos = getpos(".")
        " only right (
        if l:original_pos == l:new_pos
            execute "normal! a\<BS>"
            return
        end

        let l:line2 = getline(".")
        if len(l:line2) == col(".")
            execute "normal! v%xa"
        else
            execute "normal! v%xi"
        end
    else
        execute "inormal! \<BS>"
    end
endfunction

function! RemoveNextDoubleChar(char)
    let l:line = getline(".")
    let l:next_char = l:line[col(".")]

    if a:char == l:next_char
        execute "normal! l"
    else
        execute "normal! a" . a:char . ""
    end
endfunction

"inoremap <BS> <ESC>:call RemovePairs()<CR>a
"inoremap ) <ESC>:call RemoveNextDoubleChar(')')<CR>a
"inoremap ] <ESC>:call RemoveNextDoubleChar(']')<CR>a
"inoremap } <ESC>:call RemoveNextDoubleChar('}')<CR>a
"inoremap > <ESC>:call RemoveNextDoubleChar('>')<CR>a

"=============mouse toggle==========
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
