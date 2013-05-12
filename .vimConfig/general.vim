""""""""""""""""""""""""""""""""""
" stuff i don't like             "
""""""""""""""""""""""""""""""""""

"set ignorecase
"autocmd GUIEnter * :simalt ~x
"autocmd BufEnter * :lcd %:p:h

""""""""""""""""""""""""""""""""""
" General                        "
""""""""""""""""""""""""""""""""""
set nocompatible     " get out of this horrible vi-compatible mode
filetype on          " detect the filetype
set history=1000     " how many lines of history vi should remember
set cf               " enable error files and error jumping
set nocp
filetype plugin on   " load specific filetype plugins
set isk+=_,$,@,%,#,- " none of these should be word dividers
set textwidth=80

set foldenable
set foldmethod=marker
set foldmarker=[[[[,]]]]
