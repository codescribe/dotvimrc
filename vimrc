
" Disable compatibility with vi
set nocompatible

" Enable pathogen
call pathogen#infect()
filetype on
filetype plugin on
filetype plugin indent on

" Set colorscheme
"colorscheme desert_hein
"colorscheme desert
"colorscheme void
"colorscheme darkzen
"colorscheme IDLE
"colorscheme pw 
"colorscheme underwater 
colorscheme fu

" Enable syntax highlighting
syntax on

" Enable line numbers
set number 

" Set backslash l to show or hide hidden characters
nmap <Leader>l :set list!<CR>

" Hidden character colors
"highlight NonText guifg=#4a4a59
"highlight SpecialKey guifg=#4a4a59

" Set hidden characters to these
set listchars=tab:▸\ ,eol:¬

" Tab shift 
"tabstop softtabstop shiftwidth
set ts=4 sts=4 sw=4 noexpandtab

if has("autocmd")

	"Enable filetype detection
	filetype on

	" Auto reload vimrc when saving it
	autocmd bufwritepost .vimrc source $MYVIMRC
	" Set file specific indentations
	"autocmd FileType javascript setlocal ts=4 ts=4 sw=4 noexpand

	" Set filetype for unknown extensions
	"autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml

	autocmd FileType python set omnifunc=pythoncomplete#Complete
	autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
	autocmd FileType css set omnifunc=csscomplete#CompleteCSS

endif

" Show hidden characters
"set list


" From vimcasts.org

"Show hightlighting groups for current word"
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Set font to menlo
"set guifont=menlo:h16
set guifont=monaco:h16

" Set indent
set autoindent
"set cindent

" Wrap text at line 79
set textwidth=79 
set wrapmargin=79 

" Enable incremental search
set incsearch
set ignorecase " Case insensitive search

" Vim room plugin mapping
nnoremap <silent> <Leader>mz <Plug>VimroomToggle<CR>

" gundo mapping
nnoremap <F5> :GundoToggle<CR>

" Hide menubar / toolbar
set guioptions-=m
set guioptions-=T
"set guioptions-=r  "remove right-hand scroll bar



