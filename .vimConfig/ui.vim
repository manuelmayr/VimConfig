""""""""""""""""""""""""""""""""""
" Vim UI                         "
""""""""""""""""""""""""""""""""""
set lsp=0        " space it out a lil' bit
set wildmenu     " turn on wildmenu
set ruler        " always show current position
set cmdheight=2  " the command-bar is 2 high
set lz           " lazy redraw
set hid          " change the buffer without saving
set backspace=2
set noerrorbells

""""""""""""""""""""""""""""""""""
" Visual Cues                    "
""""""""""""""""""""""""""""""""""
set showmatch
set mat=5
set nohlsearch
set incsearch
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=(%04l,%04v)][%p%%]\ [LEN=%L]
set laststatus=2
set cursorline
set cursorcolumn
highlight CursorLine guibg=lightblue ctermbg=lightgrey
highlight CursorColumn guibg=lightblue ctermbg=lightgrey
