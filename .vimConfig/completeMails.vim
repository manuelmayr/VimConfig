function! CompleteEmails(findstart, base)
  if a:findstart
    " locate the start of the word
    let line = getline('.')
    let start = col('.')
    while start > 0 && line[start - 1] =~ '\a'
      let start -= 1
    endwhile

    return start
  else
    " find contact name beginning with a:base
    let res = []
    " we read contact file and sort the result
    for m in sort(readfile('/Users/mayr/.vim/contacts.txt'))
      if m =~ '^' . a:base
        let contactinfo = split(m, '|')
        " show names in list
        call add(res, { 'word' : contactinfo[1], 'abbr' : contactinfo[0] . '<' . contactinfo[1] . '>', 'icase': 1 })
      endif
    endfor
    return res
  endif
endfunction
