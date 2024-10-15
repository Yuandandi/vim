au FileType sh,bash ia <buffer> pf printf
au FileType sh,bash ia <buffer> p printf
au FileType sh,bash ia <buffer> e echo
au FileType sh,bash ia <buffer> f function() {<cr>}<esc>0kf(i
au FileType sh,bash ia <buffer> el elif
au FileType sh,bash,vimrc ia <buffer> ifi if [[]]; then<cr>fi<esc>?[<cr>a<space><space><left>
au FileType sh,bash ia <buffer> casin case "$" in<cr>esac<esc>?"<cr>i
au FileType sh,bash ia <buffer> wido while ; do<cr>done<esc>?;<cr>i
