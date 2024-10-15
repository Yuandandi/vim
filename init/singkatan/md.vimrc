au filetype markdown nn <buffer> gi bi*<esc>Ea*<esc>
au filetype markdown nn <buffer> gb bi**<esc>Ea**<esc>
au filetype markdown nn <buffer> gB bi***<esc>Ea***<esc>
au filetype markdown ia <buffer> sh; <cr>'''sh<cr>'''<cr><up><esc>>ipo
au filetype markdown,markdown,pandoc se nowrap
au FileType markdown,pandoc hi Title ctermfg=yellow ctermbg=NONE
au FileType markdown,pandoc hi Operator ctermfg=yellow ctermbg=NONE
au FileType markdown,pandoc set tw=150
au FileType markdown,pandoc noremap j gj
au FileType markdown,pandoc noremap k gk
au filetype markdown ia <buffer> ban # ----------------------- s ----------------------
au filetype markdown ino <buffer> <esc> <esc>:w<cr>
au filetype markdown nn <buffer> <leader>vs vip:sor u<cr>
au filetype markdown nn <buffer> ta bi`<esc>wwhha`<esc>
au filetype markdown nn <buffer> <leader>21 :%s/  */ /g<cr>
au filetype markdown ino <buffer> zfl <!-- {{{<cr>-->}}}<esc>
