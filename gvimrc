" use gui tabs
  set guioptions+=e

" kill the menubar
  set guioptions-=T

" kill the scrollbars
  set guioptions-=r
  set guioptions-=L

" go full screen like you mean it
  if has('win32')
    au GUIEnter * simalt ~x
  elseif has('mac')
    set fuoptions=maxvert,maxhorz
  endif

" set a valid swap file location
  if has('win32')
    set directory=%TEMP%
  endif

" turn off beeping and prevent screen lighting flash
  if has('win32')
    set noerrorbells visualbell t_vb=
    autocmd GUIEnter * set visualbell t_vb=
  endif

" use a big, pretty font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 8
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" initial window size
  set lines=45 columns=120

" pretty but not terminal-compatible color scheme
  set background=dark
  colors molokai

map <silent> <F11> :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>
