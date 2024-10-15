autocmd BufRead,BufNewFile,BufWritePost * call matchadd('Todo', 'TODO')

au filetype markdown,conf nn <buffer> e :w<cr>
" au filetype ino zfl /* {{{ */<cr><cr><cr>/* }}} */<esc>kO
au filetype sh ino <buffer> zf # {{{<cr>}}}<esc>O<c-u><esc>kA
au filetype vim ino <buffer> zf " {{{<cr>}}}<esc>kA
au filetype vim setlocal dict=~/completion/vim
