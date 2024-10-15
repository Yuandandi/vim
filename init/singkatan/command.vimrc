ca n norm
ca fzf FZF
ca wq wq!
ca qa qa!
ca qq q!
ca q qa!
ca wqm wq!
ca wqa wqa!
ca hg helpgrep
ca qw wq
ca qm q!
ca w w!
ca qw wq!
ca ex Ex
ca qam qa
ca wqm wq
ca qw wq
ca ew wq
ca ifn fin
ca bdm bd!
ca bd bd!
ca waq wqa!
ca rex Rexplore
ca bahs bash
ca sex Sexplore
ca ewq wq

filetype plugin on

au FileType go,python,lua,fish,rust,md ino <buffer> <M-s> <C-o>S
" autocmd FileType css,go,python,fish,javascript,cpp,lua,html,javascript.jsx nn <C-m> yypk
au Bufread,BufNewFile .vimrc set tw=999 


" " Configure ALE fixers for multiple file types
" let g:ale_fixers = {
" \   'javascript': ['eslint', 'prettier'],
" \   'python': ['black', 'isort'],
" \   'html': ['prettier'],
" \   'css': ['prettier'],
" \   'json': ['prettier'],
" \   'typescript': ['eslint', 'prettier'],
" \}

" Run ALEFix automatically on save
" let g:ale_fix_on_save = 1

