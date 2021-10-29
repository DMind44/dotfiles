set nocompatible

" Enable syntax hilighting
filetype off
filetype plugin indent on

syntax on
syntax sync minlines=256
set synmaxcol=300
set autoindent

set encoding=UTF-8

" faster redrawing
set ttyfast

" make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Use system clipboard
set clipboard^=unnamed,unnamedplus

" show line numbers
set number

" Mouse and backspace
set mouse=a   " on OSX press ALT and click
set bs=2      " make backspace behave like normal again
set mousehide

" no beeping
set vb

" Plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/share/vim/vim80
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nerdtree and syntax highlighting
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vwxyutarooo/nerdtree-devicons-syntax'

" FZF
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Use Airline
Plugin 'vim-airline/vim-airline'

" Easier commenting
Plugin 'tpope/vim-commentary'

" TagBar
Plugin 'majutsushi/tagbar'

" VimWiki is a personal wiki for Vim
Plugin 'vimwiki/vimwiki'

" ColorSchemes
Plugin 'morhetz/gruvbox'
Plugin 'rakr/vim-one'
Plugin 'dracula/vim'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'colepeters/spacemacs-theme.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'jacoborus/tender.vim'
Plugin 'Rigellute/rigel'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'nanotech/jellybeans.vim'
Plugin 'sickill/vim-monokai'
Plugin 'romainl/Apprentice'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" We want a lot of history
set history=10000
set undolevels=10000

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
" Automatically convert tabs to spaces
set expandtab

" Make comments to be Italic
set t_ZH=[3m
set t_ZR=[23m

" Show Tab characters and trailing spaces
set listchars=tab:>-,trail:·

colorscheme apprentice
set background=dark
" use Ag with ack
"let g:ackprg = 'ag --nogroup --nocolor --column'
command! -bang -nargs=* Ag
  \ call fzf#vim#grep(
  \   'ag --column --numbers --noheading --color --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
nnoremap <c-p> :Ag
