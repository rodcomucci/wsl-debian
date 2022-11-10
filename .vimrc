" HACK PARA TECLA ALT
"execute "set <M-0>=\e0"
"execute "set <M-j>=\ej"
"execute "set <M-k>=\ek"
"execute "set <M-c>=\ec"
"execute "set <M-u>=\eu"



" PLUGINS
call plug#begin()
Plug 'itchyny/lightline.vim' "Highlights lines
Plug 'morhetz/gruvbox' "GruvBox Theme
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' "Fuzzy find plugin
Plug 'mbbill/undotree' "Creates an undo tree
Plug 'preservim/nerdtree' "File browser inside vim
Plug 'godlygeek/tabular' "Auto formatting
Plug 'ryanoasis/vim-devicons' "Cool icons for nerd tree
Plug 'Xuyuanp/nerdtree-git-plugin' "nerd tree customization
Plug '907th/vim-auto-save' "auto saves files as you edit
Plug 'jdhao/better-escape.vim' "remaps esc key to jj
Plug 'pangloss/vim-javascript' "highlight for JS
Plug 'crusoexia/vim-javascript-lib' "highlight for JS lib
Plug 'StanAngeloff/php.vim' "highlight for PHP
Plug 'sudar/comments.vim' "shorcut to comment and uncomment
Plug 'jiangmiao/auto-pairs' "complete or delete brackets, parents, quotes, ...
Plug 'mattn/emmet-vim' "html tags shorcuts
call plug#end()



" STARTUP SETTINGS
syntax on
let mapleader="\\" " map leader key to \
let NERDTreeShowHidden = 1
    "let NERDTreeMinimalUI = 1
    "let NERDTreeDirArrows = 1
    "let NERDTreeIgnore = []
    "let NERDTreeStatusline = ''
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
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]
let $FZF_DEFAULT_COMMAND = 'fdfind --type f --hidden --follow --exclude .git'
set mouse=a " allows mouse usage inside vim
set clipboard=unnamedplus " remaps default copy paste to system clipboard
set cursorline
highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b
    set noerrorbells visualbell " highlight screen when a error
set splitbelow splitright
    set tabstop=4 softtabstop=4
    set shiftwidth=4
    set expandtab
    set autoindent
    set smartindent
    set showtabline=2
    retab
set nofoldenable
    set wrap " nowrap
    set smartcase
    set noswapfile
    set nobackup
    set incsearch
    set history=5000
    set nocompatible
set number relativenumber
colorscheme gruvbox
    set background=dark
set termguicolors
    filetype plugin indent on
    set encoding=utf-8
    set wildmenu
    set wildmode=longest,list,full
    set laststatus=2
    if !has('gui_running')
        set t_Co=256
    endif
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    "set spell spelllang=pt_br
 set hlsearch
    set ignorecase
    set incsearch
    set smartcase
set autoread                    " automatically re-read files if unmodified inside vim
set backspace=indent,eol,start  " allow backspacing over indentation, line breaks and insertion start
set backupdir=~/.cache/vim      " store backup files
set dir=~/.cache/vim            " store swap files
set formatoptions+=j            " delete comment characters when joining lines
"let g:comments_map_keys = 0     " desabilitar o plugin de comentário

" PLUGINS SHORTCUTS
     map <silent> <leader>t :NERDTreeToggle<CR>
     map <silent> <leader>f :NERDTreeFocus<CR>
nnoremap <silent> <leader>z :UndotreeToggle<CR> :UndotreeFocus<CR>
nnoremap <F1> :help<SPACE>
nnoremap <F4> :qa!<CR>
nnoremap <silent> <F3> :Files!<CR>
nnoremap <silent> <leader>l :Tabularize /
let g:better_escape_shortcut = 'jj'
let g:better_escape_interval = 250
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''", '<':'>', '<%':'%>', '<!--':'-->'}
let g:AutoPairsShortcutBackInsert = ''

" GENERAL SHORTCUTS
nnoremap <silent> <leader>v :source ~/.vimrc<CR>
nnoremap <silent> <leader>i :PlugInstall<CR> " Instala plugins listados na seção de plugins
nnoremap <silent> <leader>c :PlugClean<CR> " Remove os plugins e pastas (retirar o plugin da seção antes)
nnoremap <silent> <leader>u :PlugUpdate<CR> " Atualiza todos os plugins
nnoremap <silent> <leader>g :PlugUpgrade<CR> " Atualiza o próprio VIM-PLUG
nnoremap <silent> <Space> i<Space><Esc>
nnoremap <silent> <CR> moO<ESC>`o
nnoremap <silent> <leader><BS> dd== 
nnoremap <silent> <Backspace> hx
nnoremap <silent> <leader>/ :call CommentLine()<CR>
vnoremap <silent> <leader>/ :call RangeCommentLine()<CR>
nnoremap <silent> <leader>\ :call UnCommentLine()<CR>
vnoremap <silent> <leader>\ :call RangeUnCommentLine()<CR>
nnoremap <silent> <C-j> :m .+1<CR>==
nnoremap <silent> <C-k> :m .-2<CR>==
inoremap <silent> <C-j> <Esc>:m .+1<CR>==gi
inoremap <silent> <C-k> <Esc>:m .-2<CR>==gi
vnoremap <silent> <C-j> :m '>+1<CR>gv=gv
vnoremap <silent> <C-k> :m '<-2<CR>gv=gv
nnoremap <silent> <leader>0 0==
nnoremap <silent> dh :diffsplit<Space>
nnoremap <silent> dv :vert diffsplit<Space>
nnoremap <silent> dk [c
nnoremap <silent> dj ]c
nnoremap <silent> dp :diffput
nnoremap <silent> dg :diffget
nnoremap <leader>s :%s//g<LEFT><LEFT>
nnoremap <silent> <leader>? :noh<CR> " erase search result highlight
nnoremap <silent> <F12> :digraph<CR> " text symbols (usage: C-k <symbol_code>)
inoremap <silent> <F12> <Esc>:digraph<CR>
     
" PERSISTENT_UNDO
    set undodir=~/.vim/undodir"
    set undofile
    let g:undotree_WindowLayout = 2

" TABEDIT KEYBINDS
nnoremap <silent> <leader>[ :tabfirst<CR>
nnoremap <silent> <leader>1 1gt<CR>
nnoremap <silent> <leader>2 2gt<CR>
nnoremap <silent> <leader>3 3gt<CR>
nnoremap <silent> <leader>4 4gt<CR>
nnoremap <silent> <leader>5 5gt<CR>
nnoremap <silent> <leader>6 6gt<CR>
nnoremap <silent> <leader>7 7gt<CR>
nnoremap <silent> <leader>8 8gt<CR>
nnoremap <silent> <leader>9 9gt<CR>
nnoremap <silent> <leader>] :tablast<CR>
nnoremap <silent> <leader>n :$tabnew <BAR> :NERDTreeToggle<CR>
nnoremap <silent> <leader>x :tabc<CR> " same as :tabclose
nnoremap <silent> <leader>. :tabn<CR> " same as :tabnext
nnoremap <silent> <leader>, :tabp<CR> " same as :tabprevious 
nnoremap <silent> <leader>> :tabm +<CR> " same as :+tabmove (move tab to the right)
nnoremap <silent> <leader>< :tabm -<CR> " same as :-tabmove (move tab to the left)

" WINDOW KEYBINDS
nnoremap <silent> <leader>h <C-w><LEFT>
nnoremap <silent> <leader>j <C-w><DOWN>
nnoremap <silent> <leader>k <C-w><UP>
nnoremap <silent> <leader>l <C-w><RIGHT>

" TEXT ALIGN
function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = srtlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
endfunction
