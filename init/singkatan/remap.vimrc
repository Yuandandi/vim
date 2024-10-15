"{{{ Shell Combos

nn <F12> :!systemctl suspend<cr>
nn <leader>le :!less %<cr>

"}}}
"{{{ Open Image Inside ("")

nn <silent> <buffer> <leader>i filetype html <leader>i yi":!feh <c-r>"<cr>
nn <silent> <leader>oi yiW:!feh <c-r>"<cr>
nn <silent> <leader>mi :!ln $image/ .<left><left>

" open image './' required
" nn <leader>i 0/\.\/<cr>yiW:!feh <c-r>"
"}}}
"{{{ substitute

nn <leader>si :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
vn <leader>si :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nn <leader>sc :%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left><c-w>
vn <leader>sc :%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left><c-w>
nn <leader>sl :s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left><c-w>

"}}}
"{{{ Faster comment paragraph

nn <leader>x <cmd>!chmod +x %<CR>
nn <leader>fo :r !~/script/fuzzy_find.sh<CR>

"}}}
"{{{ Finding Files

nn <leader>fo :FZF ~<CR>
nn <leader>ff :FZF<CR>
nn <leader>fl :FZF ~/repos/github.com/yuandandi/learn/<cr>
nn <leader>fv :FZF ~/.vim/<CR>
nn <leader>fn :FZF ~/repos/github.com/yuandandi/notes/<CR>
nn <leader>e :Vifm<CR>

" You Can Live Without Fzf Buddy
nn <leader>cn :cd ~/repos/github.com/yuandandi/notes/<cr>:fin 
nn <leader>cd :cd ~/repos/github.com/yuandandi/dotfiles/<cr>:fin 
nn <leader>cl :cd ~/repos/github.com/yuandandi/learn/<cr>:fin 
nn <leader>cv :cd ~/.vim/<cr>:fin 
nn <leader>cc :cd ~/.vim/init/dict-tags/<cr>:fin 
nn <leader>ck :cd ~/konfig/<cr>:fin 
nn <leader>co :cd ~<cr>:fin 

"}}}
"{{{ Grep File, Grep Buffer, Open All the Files the Current and Under Directory

nn grf :vimgrep // --max-depth 3 **/*<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nn grb :vimgrep // --max-depth 3 ##<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

nn <F5> :args `find . -type f`<cr>
nn <F3> :wa<Bar>exe "mksession! " .. v:this_session<CR>:so ~/sessions/
nn goli :s/\(\S\)\s/\1\r/g<cr>=ip:w<cr>
nn <F2> :vimgrep /<c-r><c-w>/ --max-depth 3 **/*<cr>:cfdo s/<c-r><c-w>//g<left><left>

"}}}
"{{{ Surround Word or Your Visual Select

vn g[ A]<esc>gvo<esc>i[<esc>
vn g( A)<esc>gvo<esc>i(<esc>
vn g{ A}<esc>gvo<esc>i{<esc>
vn g' A'<esc>gvo<esc>i'<esc>
vn g" A"<esc>gvo<esc>i"<esc>

nn g[ viwA]<esc>gvo<esc>i[<esc>
nn g( viwA)<esc>gvo<esc>i(<esc>
nn g{ viwA}<esc>gvo<esc>i{<esc>
nn g" viwA"<esc>gvo<esc>i"<esc>
nn g' viwA'<esc>gvo<esc>i'<esc>

"}}}
"{{{ case remap

nn <silent> tu :s/\v<(.)(\w*)/\u\1\L\2/g<cr>
vn <silent> tu :s/\v<(.)(\w*)/\u\1\L\2/g<cr>
" ino <c-l>c <esc>:s/\v<(.)(\w*)/\u\1\L\2/g<cr>
" ino <c-l>u <esc>gUiwgi
" ino <c-l>U <esc>gUUgi

"}}}
"{{{ List of the month

inoremap <F5> <C-R>=ListMonths()<CR>
func ListMonths()
    call complete(col('.'), ['January', 'February', 'March',
                \ 'April', 'May', 'June', 'July', 'August', 'September',
                \ 'October', 'November', 'December'])
    return ''
endfunc

"}}}
"{{{ Custom keybindings for ALE navigation

nmap <silent> ]e <Plug>(ale_next_wrap)
nmap <silent> [e <Plug>(ale_previous_wrap)

"}}}
"{{{ visual moving block like in GUI

vn J :m '>+1<CR>gv=gv               
vn K :m '<-2<CR>gv=gv

"}}}
"{{{ to a file

nn to :e ~/.vim/init/singkatan/typos.vimrc<cr>g`"ciw
nn tr :e ~/repos/github.com/yuandandi/notes/translate<cr>

"}}}
"{{{ comfort bindings stays in the mid screen

nn J mzJ`z
nn <C-d> <C-d>zz
nn n nzzzv
nn N Nzzzv
nn E $
vn E $
nn co O<esc>j
nn e V<esc>=ip:w<cr>:!ctags %<cr>gv<esc>zz
au filetype javascript,typescript,Python nn <buffer> o :w<cr>:!ctags %<cr>o
" nn e V<esc>=ip:w<cr>gv<esc>zz
au filetype help nn <buffer> e <c-w>q
au filetype vim nn <buffer> e :w<cr>:bd<cr>
au filetype gitcommit nn <buffer> e :wq<cr>
au filetype fugitive nn <buffer> e :bd<cr>
xn Bd bd
nn gl :nohls<cr>

"}}}
"{{{ emmet.vim
let g:user_emmet_leader_key=','
"}}}
" {{{ fugitive

nn <leader>gl :G log<cr>
nn <leader>gs :G<cr>
nn <leader>gc :G commit --verbose<cr>
nn <leader>ga :G add %<cr>
nn <leader>gA :G add .<cr>
nn <leader>gd :Gdiffsplit<cr>
nn <leader>gD :GDelete<cr>
nn <leader>gx :GBrowse<cr>
nn <leader>gb :G blame<cr>
nn <leader>gw :Gwrite<cr>
nn <leader>gr :GRemove<cr>
au filetype fugitiveblame nn <buffer> e :bd<cr>
au filetype git nn <buffer> e :bd<cr>

" }}}

nn <buffer> du ggVG:norm _wgUl<cr>gv:norm f.wgUl<cr>
" on the currrent paragraph make number increment
nn <buffer> <silent> gomd :%norm _i1. <cr>ggVG:norm _wgUl<cr>gv:norm f.wgUl<cr>gvojg<c-a>    
nn ct :!ctags %<cr>h

nn <leader>so :w<cr>:source $MYVIMRC<CR>
nn <leader>su !ipsort -u<cr>

nn te :w<cr>:term<cr>
" Move between split

" ino <C-L>k <c-k>
ino <C-k> <c-x><c-k>
nn <c-l> yyp

" go down
" ino <c-m> <c-g>j

" Visual a single line
nn vv _v$d

" Play around in visual mode
xn v <Esc>

" Common change dk (delete kata)
nn dk daw
nn dK daW

" Faster selection
nn vp vip

" Common change dk (delete kata)
nn ck ciw
nn cK ciW
vn vK viW
vn vk viw
nn vk viw

" Faster quotes
nn cj <Right><Right>/"<CR>ci"
nn dj /"<CR>di"
nn vj /"<CR>vi"

" shell integration
nn d; !!sh<cr>
nn c; :!

" J for single quotes
nn cJ /'<CR>ci'
nn dJ /'<CR>ci'
nn vJ /'<CR>vi'

" faster yank
nn yj /"<cr>yi"
nn yJ /'<cr>yi'

" Faster brackets
nn cl /(<CR>ci(
nn dl /(<CR>di(
nn vl /(<CR>vi(

" Square brackets
nn vh /[<CR>vi[
nn dh /[<CR>di[
nn ch /[<CR>ci[

" Faster curly brackets
nn cL /}<CR>ci{
nn dL /(<CR>di{
nn vL /{<CR>vi{

" Faster quotes
nn c" /"<CR>ci"
nn c' /'<CR>ci'

" Delete the paragraph easier
" nn dp dap
nn cp cip

" Common change dk (delete kata)
nn yk yiw
nn yK yiW

" Common change dk (delete kata)
nn yl yi(
nn yL yi{

" Paste after yanking a paragraph
nn yp yap}
nn yP yap}p

" csv formatter second name to be the first name grupping with refference
nn <leader>ltf :%s/\(.*\), \(.*\)/\2,\1/<cr>:%s/,/ /<cr>

" delete whitespace and in vim ways and regex ways
nn dw ggVG:norm g_lD<CR>
nn dW :%s/\s*$//g<cr>

" Vim built-in formatting
" nn <C-f> gg=G''

" Select, delete, and visual in a faster way
nn vo ggVG
" nn do ggVGd

" Faster :wq and :q!
" nn Z :wq!<CR>
" nn Q ZQ

ino <M-z> <esc>:wq<cr>

" Typing `b` for `benarin` only
ino <C-b> <Esc>bz=1<CR>A
nn <C-b> <c-^>

" In the middle of the paragraph
nn cm O<cr>

" C-q for suggestions
nn <C-k> <cmd>cnext<CR>
nn <C-j> <cmd>cprev<CR>


nn <leader>se :mks ~/session/



" ino <c-l> <c-x><c-l>
ino <c-l> <c-x><c-]>
ino <c-o> <c-x><c-o>
ino <c-f> <c-x><c-f>
ino <c-s> <c-x><c-s>
ino <c-v> <esc>yypgi

" faster operator
ino zb ``<left>
ino zH [<cr>]<esc>O
ino zh []<left>
ino zj <space>=<space>
ino zJ <space>==<space>
ino zk <space>:=<space>
ino zK <space>!=<space>
ino z' ''<left>
ino z; ""<left>
ino zl ()<left>
ino z. ("")<left><left>
ino z0 ()
ino zL {  }<left><left>
ino zm <space>>=<space>
ino zr <space>=><space>
ino zM <space><=<space>
ino zn <space>&<space>
ino zN <space>&&<space>
ino zp {<cr>}<esc>O
ino zP (<cr>)<esc>O
ino z- <space>-=<space>
ino z= <space>+=<space>
" ino zz <esc>zza
ino zv <space>><space>
ino zV <space><<space>
ino zt <space>+<space>
ino zT <space>-<space>
ino z[ ${}<left>
ino z\ <space>\|\|<space>
ino zx <space>!==<space>

nn zl zL
nn zh zH
nn z, zMzvzz

nn <F4> "=strftime("%c")<CR>P
ino <F4> <C-R>=strftime("%c")<CR>
nn gs :se spell!<CR>

nn <Right> ]s
nn <Left> [s
nn <Up> yiw <Cmd>vs ~/.vim/init/singkatan/typos.vimrc<CR>}Oia <Esc>pA <Esc>pz=1<CR><CR>yiw<Cmd>wq!<CR>viwp
nn <Down> zg
ino <m-l> <right>
ino <M-o> <C-o>o
ino <M-O> <C-o>O

cno <m-l> <right>
cno <M-h> <left>
cno <M-i> <Home><right>

nn gosd :s/'/"/g<CR>
nn gods :s/"/'/g<CR>
nn god0 :s/"//g<CR>
nn gos0 :s/'//g<CR>

nn golk :s/(/("<CR>:s/)/")<CR>:s/, /", "/g<CR>
nn gokk :s/{/{"<CR>:s/}/"}<CR>:s/, /", "/g<CR>
nn gohk :s/\[/\["<CR>:s/]/"]<CR>:s/, /", "/g<CR>
nn goks :s/, / + " " + /g<cr> 
nn gojs :s/, /: "<esc>A",<esc>
nn goJs vi{:s/, /: "<cr>gv:norm A",<cr>
nn gop I"<esc>:s/,/":<cr>A,<esc>
nn god I"<esc>A"<esc>:s/, /": "<cr>A,<esc>
nn got :s/, / + /g<cr>

nn <leader>bd :w<CR>:bd<CR>

ino <C-g>p <Esc>yiwA = <Esc>p_yiwo<Esc>pA.

" open link under the cursor
nn X :!librewolf <c-r><c-f><cr>

" nn <F5> :UndotreeToggle<CR>

nn !% :%!

nn d> dt>
nn c> ct>

nn c; ct;

" nn gq q
" nn gb q

" globally capitalize after the double quote
nn ge :s/"\(\w\)/"\U\1/g<cr>:s/\. \s*\(\w\)/. \U\1/g<cr>
vn ge :s/"\(\w\)/"\U\1/g<cr>:s/\. \s*\(\w\)/. \U\1/g<cr>
nn gE :s/\<./\u&/g<cr>

" Map `]c` to go to the next comment
" nn ]c /\v^\s*#<CR>n

" yanking system clipboard and comfort yank
vn <silent> Y :w !xclip -selection clipboard<CR><CR>
nn <silent> Y :w !xclip -selection clipboard<CR><CR>
nn ye y$

nn <silent> <F7> :set filetype=html<cr>
ino <silent> <F7> <esc>:set filetype=html<cr>a


" get the full path of the current file
nn gotf :put =expand('%:p')<cr>

nn d= d+
nn gf :e <cfile><CR>

vmap sb "zdi<b><C-R>z</b><Esc> : wrap <b></b> around visually selected text

" grep recursive current and child Directory of the word under the cursor and open quickfix list directly
" nn gro :execute "vimgrep /" . expand("<cWORD>") . "/j **" <Bar> cw<CR>
nn gro :execute "noautocmd vimgrep /" . expand("<cWORD>") . "/j **" <Bar> cw<CR>
nn <c-s> <c-^>

nn g: :g/:$/p

syntax match Colons /\v:$/ containedin=ALL
hi Colons ctermbg=yellow guibg=yellow

nn ti :!trans :id <c-r><c-w><cr>

" map <C-\> :tab split<cr>:exec("tag ".expand("<cword>"))<cr>
" map <A-]> :vsp <cr>:exec("tag ".expand("<cword>"))<cr>

