imap <C-s> <ESC>:call Save()<CR>i
map <F2> :so ~/.vimrc<CR>
map <F3> : call CompileGcc()<CR>
func! CompileGcc()
  exec "w"
  exec "!g++ % -o %<"
endfunc
imap<F4> <ESC>:call CompileRunGcc()<CR>i
map <F4> :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  exec "!g++ % -o %<"
  exec "!%<"
endfunc
func! Save()
  exec "w"
endfunc
filetype indent on
set autoindent
set smartindent
set expandtab
set textwidth=80
set tabstop=2
set shiftwidth=2
if has("gui_running")
  colorscheme evening
  set gfn=Monospace
endif
