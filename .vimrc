""" HACK PARA TECLA ALT
execute "set <M-0>=\e0"
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-c>=\ec"
execute "set <M-u>=\eu"



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" SEÇÃO DE PLUGINS
call plug#begin()
Plug 'crusoexia/vim-monokai'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'pangloss/vim-javascript'
Plug 'crusoexia/vim-javascript-lib'
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
Plug 'StanAngeloff/php.vim'
Plug 'sudar/comments.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pacha/vem-tabline'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'aserebryakov/vim-todo-lists'
Plug 'wfxr/minimap.vim'
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" SEÇÃO DE CONFIGURAÇÃO
set clipboard+=unnamedplus
set laststatus=2
" identantion 
set autoindent tabstop=4 shiftwidth=4 expandtab smarttab
retab
" search options
set hlsearch ignorecase incsearch smartcase
" text rendering
set display+=lastline encoding=utf-8 linebreak scrolloff=1 sidescrolloff=5 wrap
syntax enable
" interface
set laststatus=2 ruler wildmenu tabpagemax=50 cursorline number relativenumber nu rnu
colorscheme monokai
set noerrorbells visualbell mouse=a title background=dark
" code folding
set foldmethod=indent
" miscellaneous
set autoread                    " automatically re-read files if unmodified inside vim
set backspace=indent,eol,start  " allow backspacing over indentation, line breaks and insertion start
set backupdir=~/.cache/vim      " store backup files
set dir=~/.cache/vim            " store swap files
set formatoptions+=j            " delete comment characters when joining lines
set history=1000                " increase the undo limit
set wildignore+=.pyc,.swp       " ignore files matching these patterns when opening files based on a glob pattern

" monokai
set t_Co=256
let g:monokai_term_italic = 1

" nerdtree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = []
let NERDTreeStatusline = ''

" nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" Ag (Silver Search)
let g:ackprg = 'ag --vimgrep'

" desabilitar o plugin de comentário
let g:comments_map_keys = 0

" airline
let g:airline#extensions#tabline#enable = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'

" vem-tabline
set hidden
let g:vem_tabline_multiwindow_mode = 1
let g:vem_tabline_show = 2

" vim autopairs
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''", '<':'>', '<%':'%>', '<!--':'-->'}

" vim-todo-lists
let g:VimTodoListsDatesEnable = 1
let g:VimTodoListsDatesFormat = '%F'
let g:VimTodoListsCreateNewItem = '<C-i>'

" vim-minimap
let g:minimap_width = 10
let g:minimap_auto_start = 1
"let g:minimap_auto_start_win_enter = 1
let g:minimap_highlight_range = 1
let g:minimap_highlight_search = 1
let g:minimap_git_colors = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" ATALHO PARA FORÇAR AS MODIFICAÇÕES DO INI.VIM
let mapleader="\\"
nnoremap <silent> <leader>s :source ~/.vimrc<CR>
" Instala plugins listados na seção de plugins
nnoremap <silent> <leader>i :PlugInstall<CR>
" Remove os plugins e pastas (retirar o plugin da seção antes)
nnoremap <silent> <leader>c :PlugClean<CR>
" Atualiza todos os plugins
nnoremap <silent> <leader>u :PlugUpdate<CR>
" Atualiza o próprio VIM-PLUG
nnoremap <silent> <leader>g :PlugUpgrade<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" MAPPING
nnoremap <silent> <leader>t :NERDTreeToggle<CR>
nnoremap <silent> <leader>f :NERDTreeFocus<CR>
nnoremap <silent> <Space> i<Space><Esc>
nnoremap <silent> <CR> moO<ESC>`o
nnoremap <silent> <Backspace> dd== 
" nnoremap <leader>p :Files<CR>
" nnoremap <leader>a :Ag<CR>

" comentários
nnoremap <silent> <M-c> :call CommentLine()<CR>
vnoremap <silent> <M-c> :call RangeCommentLine()<CR>
nnoremap <silent> <M-u> :call UnCommentLine()<CR>
vnoremap <silent> <M-u> :call RangeUnCommentLine()<CR>

" buffers
" noremap <silent> <A-k> :bnext<CR>
" noremap <silent> <A-j> :bprevious<CR>
" noremap <silent> <A-l> :blast<CR>
" noremap <silent> <A-h> :bfirst<CR>
" noremap <silent> <A-b> :bd<CR>
" noremap <silent> <A-w> :bd

" tabs
" noremap <silent> <C-k> :tabnext<CR>
" noremap <silent> <C-j> :tabprevious<CR>
" noremap <silent> <C-b> :tabclose<CR>
" noremap <silent> <C-n> :tabnew 

" vem-tabline
nmap <silent> <leader>k <Plug>vem_next_buffer-
nmap <silent> <leader>j <Plug>vem_prev_buffer-
nmap <silent> <leader>h <Plug>vem_move_buffer_left-
nmap <silent> <leader>l <Plug>vem_move_buffer_right-
nmap <silent> <leader>b <Plug>vem_delete_buffer-
nnoremap <silent> <leader>1 :1tabnext<CR>
nnoremap <silent> <leader>2 :2tabnext<CR>
nnoremap <silent> <leader>3 :3tabnext<CR>
nnoremap <silent> <leader>4 :4tabnext<CR>
nnoremap <silent> <leader>5 :5tabnext<CR>
nnoremap <silent> <leader>6 :6tabnext<CR>
nnoremap <silent> <leader>7 :7tabnext<CR>
nnoremap <silent> <leader>8 :8tabnext<CR>
nnoremap <silent> <leader>9 :9tabnext<CR>

" move line
nnoremap <silent> <M-j> :m .+1<CR>==
nnoremap <silent> <M-k> :m .-2<CR>==
inoremap <silent> <M-j> <Esc>:m .+1<CR>==gi
inoremap <silent> <M-k> <Esc>:m .-2<CR>==gi
vnoremap <silent> <M-j> :m '>+1<CR>gv=gv
vnoremap <silent> <M-k> :m '<-2<CR>gv=gv

" folding
"nnoremap <silent> <leader>a :za
"nnoremap <silent> <leader>A :zA

" navigation
nnoremap <silent> <M-0> 0==
nnoremap <silent> <C-j> <C-e>
nnoremap <silent> <C-k> <C-y>

" diff
nnoremap <silent> dh :diffsplit<Space>
nnoremap <silent> dv :vert diffsplit<Space>
nnoremap <silent> dk [c
nnoremap <silent> dj ]c
nnoremap <silent> dp :diffput
nnoremap <silent> dg :diffget

