set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-ragtag'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-markdown'
Plugin 'AutoComplPop'
Plugin 'railscasts'
Plugin 'The-NERD-tree'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kchmck/vim-coffee-script'
Plugin 'majutsushi/tagbar'
" Vim plugin that displays tags in a window, ordered by scope
Plugin 'tpope/vim-eunuch'
Plugin 'oplatek/Conque-Shell'
" Conque is a Vim plugin allowing users to execute and interact with program
Plugin 'Lokaltog/vim-powerline'
" The ultimate vim statusline utility
Plugin 'taglist.vim'
" Source Code Browser
Plugin 'honza/vim-snippets'
" vim-snipmate default snippets
Plugin 'scrooloose/syntastic'
" Syntax checking hacks for vim
Plugin 'thoughtbot/vim-rspec'
" Run Rspec specs from Vim

" All of your Plugins must be added before the following line
call vundle#end()            " required

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set history=50
set nobackup
set nowritebackup
set noswapfile
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands

nmap <F5> :Tlist<CR>
nmap <F6> :NERDTree<CR>
nmap <F7> :ConqueTermSplit bash<CR>

set incsearch     " do incremental searching
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set ts=2
set hlsearch    " search highlight
set paste               " Off -> set nopaste

" vim colorscheme setting
colorscheme railscasts

" ConqueTerm setting
let g:ConqueTerm_PyVersion = 2
let g:ConqueTerm_FastMode = 0
let g:ConqueTerm_Color = 1
let g:ConqueTerm_SessionSupport = 0
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_InsertOnEnter = 0
let g:ConqueTerm_CloseOnEnd = 1
let g:ConqueTerm_EscKey = '<Esc>'
let g:ConqueTerm_ToggleKey = '<F9>'

" syntastic Recommended setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_ruby= 1
"
" taglist setting
let Tlist_Use_Right_Window = 1
"
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
"
" syntastic ruby setting
let g:syntastic_ruby_checkers = ['rubocop']

" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
