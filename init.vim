set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=2               " number of columns occupied by a tab character
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

call plug#begin('~/.vim/plugged')

" Dracula color scheme
Plug 'dracula/vim', { 'as': 'dracula' }

" Rainbow
Plug 'luochen1990/rainbow'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"?
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

Plug 'MaxMEllon/vim-jsx-pretty'

" Initialize plugin system
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" add this line to your .vimrc file
Plug 'mattn/emmet-vim'

call plug#end()

colorscheme dracula
