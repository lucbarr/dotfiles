" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'w0rp/ale'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'Shougo/deoplete.nvim'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree'

" for this to work, install dependencies
" python3-setuptools python3-dev
" pynvim
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}

call plug#end()

set shiftwidth=2
set tabstop=2

au FileType go set noexpandtab
au FileType go set shiftwidth=2
au FileType go set softtabstop=2
au FileType go set tabstop=2

let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:go_fmt_command = 'goimports'
let g:go_def_mod_mode= 'gopls'
let g:go_def_mode = 'gopls'


" ctrlp
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode = 'ra'

" ale
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
let g:airline#extensions#ale#enabled = 1

" deoplete
if has('nvim')
    " Enable deoplete on startup
    let g:deoplete#enable_at_startup = 1
endif

let mapleader = ","

" fzf
map <c-p> :FZF<CR>
map <Leader>f :Ag<CR>

" inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
            " \ "\<lt>C-n>" :
            " \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            " \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            " \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
" imap <C-@> <C-Space>

map <Leader>n :NERDTreeToggle<CR>
map <c-n> :NERDTreeToggle<CR>
au FileType go nmap <c-f> <Plug>(go-def)
au FileType go nmap <c-k> <Plug>(go-def)
au FileType go nmap <c-j> <C-t>


set number
set relativenumber
