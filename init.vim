if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/config/nvim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PLUGINS:
call plug#begin('~/.config/nvim/plugged')
	Plug('rakr/vim-one') 			" Atom one colorscheme
	Plug('tpope/vim-surround')		" surround modifier
	Plug('tpope/vim-commentary')		" comment modifier
	Plug('christoomey/vim-system-copy')	" copy/paste to/from system clipboard
	Plug('mbbill/undotree')			" Treeview of the undo history
call plug#end()

" COMMON SETTINGS:
filetype plugin on
filetype indent on

syntax on
set hidden
set number
set relativenumber
set expandtab
set shiftwidth=2 tabstop=2 softtabstop=2
set foldmethod=syntax
set nofoldenable
set directory^=~/.config/nvim/tmp/
set autochdir
set noerrorbells
set undodir=~/.config/nvim/undodir
set undofile
set nowrap
set colorcolumn=80
set encoding=utf-8
set fileencoding=utf-8
highlight ColorColumn ctermbg=0 guibg=lightgrey
" COLORSCHEME:
set background=dark
colorscheme one
let g:one_allow_italics=1

" SHORTCUTS:
nnoremap <C-F> <ESC>:40vs .<CR>	" open the file browser with ctrl+f
autocmd FileType plantuml nnoremap <F5> <esc>:make<cr><esc>:!inkview %:r.svg&<cr><cr>
autocmd FileType python nnoremap <F5> <esc>:!python %<CR>
autocmd FileType javascript nnoremap <F5> <esc>:!npm start<cr>
autocmd FileType javascript nnoremap <F6> <esc>:!npm test<cr>

"  TEMPLATES:
nnoremap ,testjs :-1read $XDG_CONFIG_HOME/nvim/templates/.skeleton.test.js<CR>	" js test template
nnoremap ,js : -1read $XDG_CONFIG_HOME/nvim/templates/.skeleton.js<CR>          " js template
nnoremap ,testpy :-1read $XDG_CONFIG_HOME/nvim/templates/.skeleton.test.py<CR>  " py test template
nnoremap ,py  : -1read $XDG_CONFIG_HOME/nvim/templates/.skeleton.py<CR>         " py template

" FILE BROWSING:
let g:netrw_banner=0		" disable annoying banner
let g:netrw_browse_split=4 	" open in prior window
let g:netrw_altv=1		" open splits to the right
let g:netrw_liststyle=3		" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" FINDING FILES:
set path+=** 			" searching in subfolders
set wildmenu			" show all options for completion with <tab>
