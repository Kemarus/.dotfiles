" vim:foldmethod=marker:foldlevel=0
" NeoBundle {{{
if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=/home/$USER/.vim/repos/github.com/Shougo/dein.vim
endif

call dein#begin(expand('/home/$USER/.vim'))

call dein#add('Shougo/dein.vim') " Let dein manage dein

" Colors
call dein#add('altercation/vim-colors-solarized')
" UI
call dein#add('bling/vim-airline')
" Elixir
call dein#add('elixir-lang/vim-elixir')
call dein#add('slashmili/alchemist.vim')
" Elm
call dein#add('ElmCast/elm-vim')
" LaTeX
call dein#add('lervag/vimtex')
" Git
call dein#add('tpope/vim-fugitive')
" Markdown
call dein#add('suan/vim-instant-markdown')
" Completion
call dein#add('Shougo/deoplete.nvim')
" Syntax checking
call dein#add('vim-syntastic/syntastic')
" Misc
call dein#add('Raimondi/delimitMate')
call dein#add('scrooloose/nerdtree')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('scrooloose/nerdcommenter')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('sjl/gundo.vim')
call dein#add('airblade/vim-gitgutter') " Display a git diff in the gutter
call dein#add('majutsushi/tagbar')
call dein#add('easymotion/vim-easymotion')

call dein#end()

filetype plugin indent on " Load filetype-specific indent files

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

" }}}
" Colors {{{
syntax enable " Enable syntax processing
set t_Co=256 " Number of colors
set background=dark
colorscheme solarized
" }}}
" Spaces & Tabs {{{
set tabstop=4 " Number of visual spaces per tab
set softtabstop=4 " Number of spaces in tab when editing
set expandtab " Always uses spaces instead of tab characters
set list listchars=tab:→\ ,trail:· " Show tab and trailing spaces
set shiftwidth=4 "Number of spaces for each step of indent
" }}}
" UI {{{
set number " Show line numbers
set showcmd " Show command in bottom bar
set cursorline " Highlight current line
set wildmenu " Visual autocomplete for command menu
"set lazyredraw " Redraw only when it's needed
set showmatch " Highligh matching [{()}]
" }}}
" Searching {{{
set incsearch " Search as character are entered
set hlsearch " Highlight matches
set ignorecase " Ignore case while searching
set smartcase " Override 'ignorecase' option if the search pattern contains upper case characters
" }}}
" Folding {{{
set foldenable " Enable folding
set foldlevelstart=10 "Open most folds by default
set foldnestmax=10 "10 nested fold max
set foldmethod=indent "Fold based on indent level
" }}}
" File encoding {{{
set encoding=utf-8 " The encoding displayed
set fileencoding=utf-8 " The encoding written to file
" }}}
" Backups {{{
set backup " Activate backups files
set backupdir=~/.cache/vim,/tmp " Backups files directory
set writebackup " Write backup file before overwriting a file
set swapfile " Activate swapfile
set directory=~/.cache/vim,/tmp " Swapfiles directory
" }}}
" gVim {{{
if has("gui_running")
  set guioptions-=T " Hide toolbar
  set guioptions-=r " Hide right-hand scroll bar
  set guioptions-=L " Hide left-hand scroll bar
  set guioptions-=m " Hide menu bar
  set guifont=Source\ Code\ Pro\ for\ Powerline\ Semi-Bold\ 10
  set background=dark
  colorscheme solarized
endif
autocmd GUIEnter * set visualbell t_vb= " Stop gVim from flashing
" }}}
" Mappings {{{
imap ,, <Esc>
" }}}
" Neovim {{{
if has('nvim')
    tnoremap ,, <C-\><C-n>
endif
" }}}
" Leader Shortcuts {{{
let mapleader = "\<Space>" "Map leader key to the space key

nnoremap <Leader>w :write<CR>

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
nnoremap <Leader>ç :vertical resize<CR>
" }}}
" Misc {{{
set nocompatible " Make sure Vim is not in compatible mode
set backspace=indent,eol,start " Normal backspace behavior
let $PATH = $PATH . ':' . expand('~/.cabal/bin') " Add cabal binaries directory to Vim PATH
source ~/.vimrc.bepo " Load bépo mappings
set updatetime=250
" }}}
" Airline {{{
set laststatus=2 " Always show the status line
let g:airline_powerline_fonts = 1 " Enable automatic population of powerline symbols
let g:airline#extensions#tabline#enabled = 1 " Add a line to the top for buffers

" Fix font symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
" }}}
" CtrlP {{{
let g:ctrlp_show_hidden = 1 " Show hidden files and dirs
" }}}
" delimitMate {{{
let delimitMate_expand_cr = 1 " Add a new line when Enter is pressed
" }}}
" Gundo {{{
" Show Gundo
nnoremap <Leader>v :GundoToggle<CR>
" Mappings for moving down/up
let g:gundo_map_move_older = "t"
let g:gundo_map_move_newer = "s"
" }}}
" NERD Commenter {{{
let g:NERDCreateDefaultMappings = 0 " Don't create default mappings
" Mappings
map <Leader>dc <plug>NERDCommenterComment
map <Leader>dn <plug>NERDCommenterNested
map <Leader>d<Space> <plug>NERDCommenterToggle
map <Leader>dm <plug>NERDCommenterMinimal
map <Leader>di <plug>NERDCommenterInvert
map <Leader>ds <plug>NERDCommenterSexy
map <Leader>dy <plug>NERDCommenterYank
map <Leader>d$ <plug>NERDCommenterToEOL
map <Leader>dA <plug>NERDCommenterAppend
map <Leader>da <plug>NERDCommenterAltDelims
map <Leader>dl <plug>NERDCommenterAlignLeft
map <Leader>db <plug>NERDCommenterAlignBoth
map <Leader>du <plug>NERDCommenterUncomment
" }}}
" Deoplete {{{
let g:deoplete#enable_at_startup = 1 " Enable deoplete at startup
let g:deoplete#enable_smart_case = 1 " Use smartcase
set omnifunc=syntaxcomplete#Complete
" }}}
" NERDTree {{{
nnoremap <Leader>n :NERDTreeToggle<CR>
" }}}
" Tagbar {{{
nnoremap <Leader>m :TagbarToggle<CR>
let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records'
    \ ]
\ }
" }}}
" Alchemist {{{
let g:alchemist#elixir_erlang_src = "/usr/local/share/src"
" }}}
" Elm {{{
let g:elm_setup_keybindings = 0 " Disable Elm default mappings
" }}}
" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_enable_elixir_checker = 1
let g:syntastic_elixir_checkers = ["elixir"]
let g:syntastic_elixir_elixir_exe = 'elixirc'

let g:syntastic_elm_checkers = ["elm_make"]
let g:elm_syntastic_show_warnings = 1
" }}}
