
set nocompatible

""""""""""""""""""""""""""""
" 插件
""""""""""""""""""""""""""""
filetype off
set rtp+=~/.vim/bundle/Vundle.vim     " set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'gmarik/Vundle.vim'            " let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive'           " git
Plugin 'scrooloose/nerdtree'          " file browser
call vundle#end()

""""""""""""""""""""""""""""
" 基础配置
""""""""""""""""""""""""""""
filetype plugin indent on   " Automatically detect file types.
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
set syntax                  " Syntax highlighting
set autoread
set nowrap
set confirm
set nobackup
set spell
set hidden
set virtualedit=onemore

" 字符集设置
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,gbk,cp936,gb2312,gb18030

" tab缩进2个space(非制表符)
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

""""""""""""""""""""""""""""
" 显示配置
""""""""""""""""""""""""""""
set background=dark             " Assume a dark background
set showcmd
set showmode                    " Display the current mode
set cursorline                  " Highlight current line
set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
set number                      " Line numbers on
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

if has('cmdline_info')
  set ruler
  set showcmd
  set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
endif

if has('statusline')
  set laststatus=2

  set statusline=%<%f\                     " Filename
  set statusline+=%w%h%m%r                 " Options
  set statusline+=\ [%{&ff}/%Y]            " Filetype
  set statusline+=\ [%{getcwd()}]          " Current dir
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

endif

colorscheme desert
set guifont=Courier\ New:h12
