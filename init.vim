" PLUGINS:
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
	Plug('rakr/vim-one') 			" Atom one colorscheme
	Plug('tpope/vim-surround')		" surround modifier
	Plug('tpope/vim-commentary')		" comment modifier
	Plug('christoomey/vim-system-copy')	" copy/paste to/from system clipboard
call plug#end()

" COLORSCHEME:
set background=dark
colorscheme one
let g:one_allow_italics=1

" SHORTCUTS:
nnoremap <C-F> <ESC>:40vs .<CR>	" open the file browser with ctrl+f 

"  TEMPLATES:
nnoremap ,testjs :-1read $XDG_CONFIG_HOME/nvim/templates/.skeleton.test.js<CR>	" js test template

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

" COMMON SETTINGS:
set number			" show line numbers
set expandtab			" set spaces instead of tabs
set shiftwidth=2		" 2 spaces shift width
set softtabstop=2