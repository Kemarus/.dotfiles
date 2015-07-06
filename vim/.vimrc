"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/kevin/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/kevin/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'chriskempson/base16-vim'
"NeoBundle 'morhetz/gruvbox'
"NeoBundle 'klen/python-mode'
NeoBundle 'pangloss/vim-javascript'
"NeoBundle 'kien/ctrlp.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdcommenter'
"NeoBundle 'scrooloose/nerdtree'
NeoBundle 'LaTeX-Box-Team/LaTeX-Box'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'maksimr/vim-jsbeautify'
"NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'suan/vim-instant-markdown'
"NeoBundle 'lukerandall/haskellmode-vim'
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


" Active la coloration syntaxique
syntax enable

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"


" Annule la compatibilite avec l’ancetre Vi : totalement indispensable
set nocompatible

" Utilisation du thème Solarized
set t_Co=256
"let g:solarized_termtrans=0
"let g:solarized_degrade=1
set background=dark
colorscheme solarized
"let g:solarized_termcolors=256
"let g:solarized_termtrans = 1
"colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1
"colorscheme gruvbox
"set background=dark


" gVim specific
if has("gui_running")
  set guioptions-=T "Hide toolbar
  set guioptions-=r "Hide right-hand scroll bar
  set guioptions-=L "Hide left-hand scroll bar
  set guioptions-=m "Hide menu bar
  "set guifont=Anonymous\ Pro\ for\ Powerline\ 11
  set guifont=Source\ Code\ Pro\ for\ Powerline\ Semi-Bold\ 11
  set background=dark
  colorscheme solarized
endif


" -- Affichage
set title 			" Met à jour le titre de la fenetre ou du terminal
set number 			" Affiche le numéro des lignes
set ruler 			" Affiche la position actuelle du curseur
set wrap 			" Affiche les lignes trop longues sur plusieurs lignes

set scrolloff=3 	" Affiche un minimum de 3 lignes autour du curseur (pour le scroll)


" -- Recherche
set ignorecase 		" Ignore la casse lors d’une recherche
set smartcase 		" Si une recherche contient une majuscule,
					" re-active la sensibilite a la casse
set incsearch 		" Surligne les resultats de recherche pendant la
					" saisie
set hlsearch 		" Surligne les resultats de recherche


" -- Beep
" set visualbell 					" Empeche Vim de beeper
" set noerrorbells 					" Empeche Vim de beeper
set noerrorbells visualbell t_vb= 	" Empêche Vim de beeper
autocmd GUIEnter * set visualbell t_vb=

" Active le comportement ’habituel’ de la touche retour en arriere
set backspace=indent,eol,start

" Cache les fichiers lors de l’ouverture d’autres fichiers
set hidden

" Active les comportements specifiques aux types de fichiers comme
" la syntaxe et l’indentation

"filetype on
"filetype plugin on
"filetype indent on

" Show tab and trailing spaces
set list listchars=tab:→\ ,trail:·

" Utilisation de deux virgules pour changer de mode
:imap ,, <Esc>

" always uses spaces instead of tab characters
set expandtab

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

set encoding=utf-8  	" The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

" Change le raccourci d'emmet (suivit d'une virgule)
let g:user_emmet_leader_key='<C-I>'

" Chemin du fichier nécessaire au plugin LanguageTool
let g:languagetool_jar='~/.vim/bundle/LanguageTool/LanguageTool-2.8/languagetool-commandline.jar'

" Chemin du fichier ctags.exe (nécessaire pour le plugin Tagbar)
" let g:tagbar_ctags_bin = 'C:\Instal\Vim\vimfiles\bundle\tagbar\ctags58\ctags.exe'

" Changer de fenêtre avec F6
:map <F6> <C-W>w

" Ajoute un saut de ligne après un appui sur la touche Entrée
let delimitMate_expand_cr = 1

" Active Omni Completion
" set omnifunc=syntaxcomplete#Complete

" Afficher le plugin Gundo avec F5
nnoremap <F5> :GundoToggle<CR>

" Désactive le plugin Syntastic pour les fichiers .py
let g:syntastic_ignore_files = ['\.py$']

" Active les swap files et les centralise dans un dossier
set swapfile
set dir=~/.cache/vim

source ~/.vimrc.bepo


"map <Leader>e :MBEOpen<cr>
"map <Leader>c :MBEClose<cr>
"map <Leader>t :MBEToggle<cr>

let mapleader = "\<Space>" "Map leader key to the space key

nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>

" Window manipulations
nnoremap <Leader>u <C-W>s
nnoremap <Leader>. <C-W>v

nnoremap <Leader>é <C-W>w
nnoremap <Leader>c <C-W>h
nnoremap <Leader>t <C-W>j
nnoremap <Leader>s <C-W>k
nnoremap <Leader>r <C-W>l

nnoremap <Leader>x <C-W>c
nnoremap <Leader>l <C-W>o

nnoremap <Leader>% <C-W>=
nnoremap <Leader>= <C-W>_
nnoremap <Leader>ç :vertical res<CR>

"let g:pymode_python = "python3"
let g:pymode_options_colorcolumn = 0 "Hide the 80 characters limit bar

set showcmd

" Haskell related
"au BufEnter *.hs compiler ghc
"let g:haddock_browser="/usr/bin/firefox"
"let g:haddock_docdir="/usr/share/doc/ghc/html/"

" NeoComplete
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
