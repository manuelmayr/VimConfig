""""""""""""""""""""""""""""""""""
" Haskell Utilities              "
""""""""""""""""""""""""""""""""""
let g:haddock_browser = "open" "configure browser
let g:haddock_browser_callformat = "%s %s" " set the callformat

autocmd BufNewFile,BufRead *.hs source ~/.vim/ftplugin/haskell.vim
autocmd BufNewFile,BufRead *.hs source ~/.vim/ftplugin/haskell_doc.vim
autocmd BufNewFile,BufRead *.hs source ~/.vim/ftplugin/myhaskell.vim
autocmd BufNewFile,BufRead *.hs if getline(1) == "" | :call HaskellHeader() | endif

autocmd BufNewFile,BufRead *.hs compiler ghc


