set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'vim-airline/vim-airline'
Plug 'rust-lang/rust.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Townk/vim-autoclose'
Plug 'jvirtanen/vim-octave'
Plug 'editorconfig/editorconfig-vim'
Plug 'Valloric/YouCompleteMe'
call plug#end()

set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set cindent
set cursorline
set number
set laststatus=2
let g:airline_powerline_fonts = 1
set t_Co=256
"Add highlighting for function definition in C++
function! EnhanceCppSyntax()
  syn match cppFuncDef "::\~\?\zs\h\w*\ze([^)]*\()\s*\(const\)\?\)\?$"
    hi def link cppFuncDef Special
endfunction
autocmd Syntax cpp call EnhanceCppSyntax()
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"let g:solarized_termcolors=256
"bal_:ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set background=dark
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

"let bas16colorspace=256
if 1
  autocmd BufEnter * colorscheme monokaii 
  set background=light
  hi IndentGuidesOdd  ctermbg=darkgrey
  hi IndentGuidesEven ctermbg=lightgrey
else
  autocmd BufEnter * colorscheme vividchalk
"  autocmd BufEnter * colorscheme cthulhian
endif

autocmd BufEnter *.md colorscheme candycode

set clipboard=unnamedplus

