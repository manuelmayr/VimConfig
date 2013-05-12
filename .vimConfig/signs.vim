sign define information text=!> linehl=Warning texthl=Error
map <C-Y> :exe ":sign place 123 line=" . line(".") . "name=information file=" . expand("%:p")<CR>
