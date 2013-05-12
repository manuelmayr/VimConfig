""""""""""""""""""""""""""""""""""
" Theme/Colors                   "
""""""""""""""""""""""""""""""""""
syntax on           " syntax highlighter
" set colorscheme that I prefer
if has("gui_running")
  colorscheme desert
else
  colorscheme Tomorrow-Night-Bright
endif

source $HOME/.vimConfig/general.vim
source $HOME/.vimConfig/ui.vim
source $HOME/.vimConfig/programming.vim
source $HOME/.vimConfig/latex.vim
source $HOME/.vimConfig/haskell.vim
source $HOME/.vimConfig/ruby.vim
source $HOME/.vimConfig/javascript.vim
source $HOME/.vimConfig/signs.vim
source $HOME/.vimConfig/completeMails.vim
source $HOME/.vimConfig/formatting.vim

highlight LineNr guibg=lightblue ctermbg=lightgrey

""""""""""""""""""""""""""""""""""
" Files/Backup                   "
""""""""""""""""""""""""""""""""""

"set backup  "make backup file
"set backupdir=/home/mayr/.vim/vimfiles/backup
"set directory=/home/mayr/.vim/vimfiles/temp
"set makeef=error.err

" create a text highlighting style that always stands out
highlight STANDOUT term=bold cterm=bold ctermfg=red gui=bold guifg=red

" list of troublesome words ...
let s:words = [
  \ "it's", "its",
  \ "your", "you're",
  \ "were", "we're", "where",
  \ "their", "they're", "there",
  \ "to", "too", "two"
  \ ]

" Build a Vim command to match troublesome words
let s:words_matcher
\ = 'match STANDOUT /\c\<\(' . join(s:words, '\|') . '\)\>/'

" Toggle words checking on or off
function! WordCheck()
  let w:check_words = exists('w:check_words') ? !w:check_words :1

  if w:check_words
    exec s:words_matcher
  else
    match none
  end
endfunction

nmap <silent> ;p :call WordCheck()<CR>

imap <silent> <C-C> <C-R>=string(eval(input("Calculate: ")))<CR>

function SaveBackup()
  let b:backup_count = exists('b:backup_count') ? b:backup_count +  1 : 0
  return writefile(getline(1,'$'), bufname('%') . '_' . b:backup_count)
endfunction

imap <silent> <C-B> :call SaveBackup()<CR>
