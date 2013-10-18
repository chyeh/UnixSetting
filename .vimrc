"update something
set incsearch
set ai
"set paste
let mapleader = ","
set autoindent

"add by PYHSU
if has("autocmd")               "save the last current cursor position
	autocmd Filetype java setlocal omnifunc=javacomplete#Complete
  filetype plugin indent on
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

endif " has("autocmd")

"VIM UI
set laststatus=2    " always show the status line
set statusline=[%n]\ %<%f\ %((%1*%M%*%R%Y)%)\ %=%-19(\LINE\ [%3l/%3L]\ COL\ [%02c%03V]%)\ ascii['%02b']\ %P
set hlsearch        " highlight searched for phrases


"end 

filetype indent on
filetype on
filetype plugin on
set runtimepath+=~/.vim/textmateOnly
set runtimepath+=~/.vim/textmateOnly/after
set completeopt=longest,menu


"Tlist
"nnoremap <silent> <f12> :TlistToggle<cr>
"nnoremap <silent> <f9> :wincmd p<cr>
let Tlist_Auto_Open = 0 
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1                      
let php_sql_query=1
let php_htmlInStrings=1
set showmatch   " show matching brackets
hi MatchParen ctermbg=Yellow

hi SpellBad term=underline cterm=underline ctermfg=red

"WinManger
let g:winManagerWindowLayout = 'FileExplorer|TagList'
let g:persistentBehaviour = 0
nmap wm :WMToggle <CR>


"let g:miniBufExplMapCTabSwitchBufs = 1

"cscope"
set cscopequickfix=s-,c-,d-,i-,t-,e-
""


"256-color-support
set t_Co=256


"colorscheme yzlin256
"colorscheme vividchalk

"set mouse=a
set showmatch
set secure
set nocompatible
set cindent
syntax on
set background=dark
syn region myFold start="{" end="}" transparent fold
syn sync fromstart
set foldenable
set foldmethod=syntax
set foldlevel=10000
set backspace=2
set ruler 
set suffixes=.class,.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
"source ~/.vim/vdb-0.4.3/vdb.vim
"call VDBMapDefaults()
set shiftwidth=4
set tabstop=4
"set expandtab "replace tab with space

" note that you don't need double qoute outside any string literial
set backup 
set backupdir=~/backup/

set nu
set nocp
filetype plugin on
"for omnicppcomplete
map <F11> :!/usr/local/bin/exctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set tags+=~/stl.tags
let OmniCpp_DefaultNamespaces   = ["std", "_GLIBCXX_STD"]

map <F5> :set spell!<CR><BAR>:echo "Spell check" . strpart("OffOn",3*&spell,3) <CR>

set cursorline
highlight CursorLine cterm=NONE ctermbg=8
"highlight CursorLine cterm=none ctermbg=blue

" 單鍵 <F7> 控制 syntax on/off。倒斜線是 Vim script 的折行標誌
" 按一次 <F7> 是 on 的話，再按一次則是 off，再按一次又是 on。
" 原因是有時候顏色太多會妨礙閱讀。
map <F7> :if exists("syntax_on") <BAR>
\ syntax off <BAR><CR>
\ else <BAR>
\ syntax enable <BAR>
\ endif <CR>
" " 按 F8 會在 searching highlight 及非 highlight 間切換
map <F10> <ESC>:read !date<CR> " 插入日期
noremap <LEADER>b :e ++enc=big5<CR>:set tenc=big5<CR>:set fenc=big5<CR>

" map key "
map <F1> :set nonu !<BAR> set nu ?<CR>
map <F2> :set paste!<BAR> :set nopaste?<CR>
map <F3> :set hls!<BAR>set hls?<CR>
map <F4> :WMToggle<CR>
"map <F6> :set encodeing=big5<CR>:set fileencoding=utf-8<CR>:set fileencodings=utf-8<CR>:set termencoding=utf-8	!<BAR> :set encodeing=big5<CR>:set fileencoding=big5<CR>:set fileencodings=big5<CR>:set termencoding=big5 <CR>
"map <F6> :set fileencoding=big5 !<BAR> set fileencoding=utf-8 ?<CR>

map <C-u> :set fileencoding=utf-8 <CR>
map <C-b> :set fileencoding=big5 <CR>


nmap <C-T>c :tabnew<CR>
nmap <C-T>k :tabclose<CR>
nmap <C-H> :tabprev <CR>
nmap <C-L> :tabnext<CR>

nmap <C-]>n :tnext<CR>
nmap <C-]>N :tprev<CR>

" 啟動後是使用 utf-8 編碼
set encoding=utf-8
" 新開的檔案預設是 utf-8 編碼
set fileencoding=utf-8
" 所有可能的檔案編碼
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
" 設定輸出到 terminal 的編碼
set termencoding=utf-8
" 將 unicode 中不確定的字符表示成雙字符，在 unicode 下才有用
set ambiwidth=double

"abbr main int main(int argc,char**argv)<CR>{<CR>return 0;<CR>}
abbr cppmain #include<iostream><CR>using namespace std;<CR><CR>int main()<CR>{<CR><CR>return 0;<CR>}
