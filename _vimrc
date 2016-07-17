set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"*** Colors
"colorscheme base16-harmonic16
"colorscheme molokai
"colorscheme solarized
"colorscheme harlequin 
"colorscheme gruvbox 
"colorscheme kalisi
"colorscheme Tomorrow-Night
colorscheme badwolf

"*** Font
":set guifont=Monaco:h10
:set guifont=DejaVu\ Sans\ Mono:h10
":set guifont=PragmataPro:h10.5
":set guifont=Terminus:h12
":set guifont=M+\ 1p

"*** Key re-mappings
inoremap jk <ESC>

"*** Show line numbers
set number

"*** No swap file
set noswapfile
set backupdir=c:\temp
set directory=c:\temp

"*** Rainbow parentheses
let g:rainbow_active = 1

"*** Set tab to 4 spaces
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with > use 4 spaces width
set shiftwidth=4
" when pressing tab insert 4 spaces
set expandtab

"*** Set fold method to indent
set foldmethod=indent
set foldlevel=10



