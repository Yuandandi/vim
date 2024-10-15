let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <expr> <C-L>x "foo"
inoremap <C-L>c :s/\v<(.)(\w*)/\u\1\L\2/g
inoremap <F5> =ListMonths()
inoremap <silent> <F7> :set filetype=htmla
inoremap <C-G>p yiwA = p_yiwopA.
cnoremap <M-i> <Home><Right>
cnoremap <M-h> <Left>
cnoremap <M-l> <Right>
inoremap <M-O> O
inoremap <M-o> o
inoremap <M-l> <Right>
inoremap <F4> =strftime("%c")
inoremap <C-O> 
inoremap <C-]> 
inoremap <C-L> 
inoremap <C-B> bz=1A
inoremap <M-z> :wq
inoremap <C-L>u gUiwA 
nnoremap  :w
vnoremap  :wgv
nnoremap  
nnoremap  zz
nnoremap <NL> <Cmd>cprev
nnoremap  <Cmd>cnext
nnoremap  yyp
nnoremap  :w
vnoremap  :wgv
nnoremap !% :%!
cnoremap é <Home><Right>
cnoremap è <Left>
cnoremap ì <Right>
inoremap Ï O
inoremap ï o
inoremap ì <Right>
inoremap ú :wq
vnoremap E $
nnoremap E $
nnoremap J mzJ`z
vnoremap J :m '>+1gv=gv               
vnoremap K :m '<-2gv=gv
nnoremap N Nzzzv
nnoremap Y y$
nmap <silent> [e <Plug>(ale_previous_wrap)
nnoremap \bd :w:bd
nnoremap \co :cd ~:fin 
nnoremap \ck :cd ~/konfig/:fin 
nnoremap \cv :cd ~/.vim/:fin 
nnoremap \cl :cd ~/repos/github.com/yuandandi/learn/:fin 
nnoremap \cd :cd ~/repos/github.com/yuandandi/dotfiles/:fin 
nnoremap \cn :cd ~/repos/github.com/yuandandi/notes/:fin 
nnoremap \fn :FZF ~/repos/github.com/yuandandi/notes/
nnoremap \fv :FZF ~/.vim/
nnoremap \fl :FZF ~/repos/github.com/yuandandi/learn/
nnoremap \ff :FZF
nnoremap \fo :FZF ~
nnoremap \x <Cmd>!chmod +x %
nnoremap \se :mks ~/session/
nnoremap \sl :s/\<\>//gI<Left><Left><Left>
vnoremap \sc :%s/\<\>//gc<Left><Left><Left>
nnoremap \sc :%s/\<\>//gc<Left><Left><Left>
vnoremap \si :%s/\<\>//gI<Left><Left><Left>
nnoremap \si :%s/\<\>//gI<Left><Left><Left>
nnoremap \j <Cmd>lprevzz
nnoremap \k <Cmd>lnextzz
nnoremap \ltf :%s/\(.*\), \(.*\)/\2,\1/:%s/,/ /
nnoremap \dd :le:s/ /", "/gI"<End>"=ipg;
nnoremap \ss :le:s/ /', '/gI'<End>'=ipg;
nnoremap \dk :s/, /", "/gI"<End>"
nnoremap \sk :s/, /', '/gI'<End>'
nnoremap \gl :cd ~/repos/github.com/yuandandi/learn/:grep 
nnoremap \gn :cd ~/repos/github.com/yuandandi/notes/:grep 
nnoremap \su !ipsort -u
nnoremap \so :w:source $MYVIMRC
nnoremap \E :!/home/danzor/.config/vifm/scripts/vifmrun
nnoremap \e :Vifm
nnoremap <silent> \mi :!ln $image/ .<Left><Left>
nnoremap <silent> \oi yiW:!feh "
nnoremap \le :!less %
nmap <silent> ]e <Plug>(ale_next_wrap)
nnoremap c> ct>
nnoremap cm O
nnoremap cp cip
nnoremap c' /'ci'
nnoremap c" /"ci"
nnoremap cL /}ci{
nnoremap ch /[ci[
nnoremap cl /(ci(
nnoremap cJ /'ci'
nnoremap c; ct;
nnoremap cj <Right><Right>/"ci"
nnoremap cK ciW
nnoremap ck ciw
nnoremap co Oj
nnoremap ct :!ctags %h
nnoremap d= d+
nnoremap d> dt>
nnoremap dW :%s/\s*$//g
nnoremap dw ggVG:norm g_lD
nnoremap dL /(di{
nnoremap dh /[di[
nnoremap dl /(di(
nnoremap dJ /'ci'
nnoremap d; !!sh
nnoremap dj /"di"
nnoremap dK daW
nnoremap dk daw
nnoremap e V=ip:wgvzz
nmap gzz <Plug>TitlecaseLine
xmap gz <Plug>Titlecase
nmap gz <Plug>Titlecase
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
nnoremap g: :g/:$/p
nnoremap gro :execute "noautocmd vimgrep /" . expand("<cWORD>") . "/j **" | cw
nnoremap gf :e <cfile>
nnoremap gotf :put =expand('%:p')
nnoremap g' viwA'gvoi'
nnoremap g" viwA"gvoi"
nnoremap g{ viwA}gvoi{
nnoremap g( viwA)gvoi(
nnoremap g[ viwA]gvoi[
vnoremap g" A"gvoi"
vnoremap g' A'gvoi'
vnoremap g{ A}gvoi{
vnoremap g( A)gvoi(
vnoremap g[ A]gvoi[
nnoremap goli :s/\(\S\)\s/\1\r/g=ip:w
nnoremap grb :vimgrep // --max-depth 3 ##<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
nnoremap grf :vimgrep // --max-depth 3 **/*<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
nnoremap gE :s/\<./\u&/g
vnoremap ge :s/"\(\w\)/"\U\1/g:s/\. \s*\(\w\)/. \U\1/g
nnoremap ge :s/"\(\w\)/"\U\1/g:s/\. \s*\(\w\)/. \U\1/g
nnoremap gx :!librewolf 
nnoremap got :s/, / + /g
nnoremap god I"A":s/, /": "A,
nnoremap gop I":s/,/":A,
nnoremap goJs vi{:s/, /: "gv:norm A",
nnoremap gojs :s/, /: "A",
nnoremap goks :s/, / + " " + /g 
nnoremap gohk :s/\[/\[":s/]/"]:s/, /", "/g
nnoremap gokk :s/{/{":s/}/"}:s/, /", "/g
nnoremap golk :s/(/(":s/)/"):s/, /", "/g
nnoremap gos0 :s/'//g
nnoremap god0 :s/"//g
nnoremap gods :s/"/'/g
nnoremap gosd :s/'/"/g
nnoremap gs :se spell!
nnoremap n nzzzv
vmap sb "zdi<b>z</b> : wrap <b></b> around visually selected text
nnoremap td yiW:!echo <C-"> >> /home/danzor/.vim/init/singkatan/htmlcomp
vnoremap <silent> tu :s/\v<(.)(\w*)/\u\1\L\2/g
nnoremap <silent> tu :s/\v<(.)(\w*)/\u\1\L\2/g
nnoremap te :w:term
nnoremap tr :e ~/repos/github.com/yuandandi/notes/translate
nnoremap to :e ~/.vim/init/singkatan/typos.vimrcg`"ciw
nnoremap tq q
nnoremap vo ggVG
nnoremap vL /{vi{
nnoremap vh /[vi[
nnoremap vl /(vi(
nnoremap vJ /'vi'
nnoremap vj /"vi"
nnoremap vk viw
vnoremap vk viw
vnoremap vK viW
nnoremap vp vip
xnoremap v 
nnoremap vv _v$d
nnoremap yP yap}p
nnoremap yp yap}
nnoremap yL yi{
nnoremap yl yi(
nnoremap yK yiW
nnoremap yk yiw
nnoremap yJ /'yi'
nnoremap yj /"yi"
nnoremap z, zMzvzz
nnoremap zh zH
nnoremap zl zL
nnoremap <C-A> :w
vnoremap <C-A> :wgv
nnoremap <C-X> :w
vnoremap <C-X> :wgv
nnoremap <silent> <Plug>TitlecaseLine :set opfunc=titlecase#titlecase|exe 'normal! ' . v:count1 . 'g@_'
xnoremap <silent> <Plug>Titlecase : call titlecase#titlecase(visualmode(),visualmode() ==# 'V' ? 1 : 0)
nnoremap <silent> <Plug>Titlecase :set opfunc=titlecase#titlecaseg@
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
tnoremap <silent> <Plug>(fzf-normal) 
tnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <Plug>(fzf-normal) <Nop>
nnoremap <silent> <Plug>(fzf-insert) i
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
nnoremap <C-B> 
nnoremap <F2> :vimgrep // --max-depth 3 **/*:cfdo s///g<Left><Left>
nnoremap <F3> :wa|exe "mksession! " .. v:this_session:so ~/sessions/
nnoremap <F5> :args `find . -type f`
nnoremap <silent> <F7> :set filetype=html
nnoremap <silent> <F8> :w !xclip -selection clipboard
vnoremap <silent> <F8> :w !xclip -selection clipboard
nnoremap <Down> zg
nnoremap <Up> yiw <Cmd>vs ~/.vim/init/singkatan/typos.vimrc}Oia pA pz=1yiw<Cmd>wq!viwp
nnoremap <Left> [s
nnoremap <Right> ]s
nnoremap <F4> "=strftime("%c")P
nnoremap <C-J> <Cmd>cprev
nnoremap <C-K> <Cmd>cnext
nnoremap <C-L> yyp
nnoremap <F12> :!systemctl suspend
nnoremap <C-D> zz
inoremap  bz=1A
inoremap p yiwA = p_yiwopA.
inoremap <expr> x "foo"
inoremap c :s/\v<(.)(\w*)/\u\1\L\2/g
inoremap  
inoremap u gUiwA 
inoremap  
inoremap  
inoremap zx  !== 
inoremap z\  || 
inoremap z[ ${}<Left>
inoremap zT  - 
inoremap zt  + 
inoremap zV  < 
inoremap zv  > 
inoremap z=  += 
inoremap z-  -= 
inoremap zP ()O
inoremap zp {}O
inoremap zN  && 
inoremap zn  & 
inoremap zM  <= 
inoremap zr  => 
inoremap zm  >= 
inoremap zL {  }<Left><Left>
inoremap z0 ()
inoremap z. ("")<Left><Left>
inoremap zl ()<Left>
inoremap z; ""<Left>
inoremap z' ''<Left>
inoremap zK  != 
inoremap zk  := 
inoremap zJ  == 
inoremap zj  = 
inoremap zh []<Left>
inoremap zH []O
inoremap zb ``<Left>
iabbr wenak 😋
iabbr ttpmlt 🤐
iabbr spda 🚲
iabbr snmi 🌊
iabbr smgka 🍉
iabbr rckt 🚀
iabbr psyuk 🎮
iabbr plgi 🌈
iabbr pitza 🍪
iabbr osenmer 😊
iabbr osen 😃
iabbr operi 😇
iabbr ongak 🤣
iabbr onang 😢
iabbr omuach 😘
iabbr omik 🤔
iabbr omat 🙄
iabbr omalop 😍
iabbr omal 😳
iabbr olid 😜
iabbr okac 😎
iabbr odoa 🙏
iabbr ocap 😌
iabbr notbl 🎶
iabbr mwr 🌸
iabbr mic 🎤
iabbr mbil 🚗
iabbr loli 🍭
iabbr kuwe 🎂
iabbr kdo 🎁
iabbr jmur 🍦
iabbr huek 🤢
iabbr hore 🎊
iabbr cokl 🍫
iabbr brgr 🍔
iabbr bmi 🌍
iabbr blon 🎈
iabbr bku 📚
iabbr bga 🍀
iabbr angtang 🙌
iabbr zola Zola
iabbr xtra extra
iabbr deviceb devices
iabbr largerrh larger
iabbr verticcal vertical
iabbr textj text
iabbr nomatter no matter
iabbr shoed showed
iabbr responsife responsive
iabbr loggo logo
iabbr stylo style
iabbr elementts elements
iabbr documenet document
iabbr Deafault Default
iabbr Headding Heading
iabbr headinb heading
iabbr hw Hello World!
iabbr proeprteis properties
iabbr function Function
iabbr impoerfect imperfect
iabbr cassino casino
iabbr paris Paris
iabbr movei movie
iabbr indian Indian
iabbr moveis movies
iabbr american American
iabbr korena Korean
iabbr pyython python
iabbr reuqiremenet requirement
iabbr paning panning
iabbr wron wrong
iabbr normaal normal
iabbr suport support
iabbr descendatnts descendants
iabbr extraculicular extracurricular
iabbr desserter deserter
iabbr lvoe love
iabbr mariage marriage
iabbr affectino affection
iabbr sumer summer
iabbr citizends citizen's
iabbr rookei rookie
iabbr extraordinarry extraordinary
iabbr seasson season
iabbr umberela umbrella
iabbr uncany uncanny
iabbr theh the
iabbr grirl girl
iabbr Happines Happiness
iabbr Seasson Season
iabbr Watermellon Watermelon
iabbr Mariage Marriage
iabbr coockie cookie
iabbr wellcome welcome
iabbr missin missing
iabbr gangstre gangster
iabbr Familly Family
iabbr sweetch switch
iabbr filetpye filetype
iabbr optisons options
iabbr reccycle recycle
iabbr selectins selections
iabbr noremal normal
iabbr fuzy fuzzy
iabbr batttery battery
iabbr tieem time
iabbr chagnes changes
iabbr typs types
iabbr auoto auto
iabbr configureate configure ate
iabbr informateion information
iabbr beahviour behavior
iabbr shelll shell
iabbr applay apply
iabbr wraped wrapped
iabbr elmenet element
iabbr inheritanc inheritance
iabbr copyright Copyright
iabbr copyrihgt copyright
iabbr easilhy easily
iabbr band Band
iabbr singer Singer
iabbr finsish finish
iabbr defice device
iabbr manipulatign manipulating
iabbr zip ZIP
iabbr zealand Zealand
iabbr yu you
iabbr youve You've
iabbr youu you
iabbr Youur Your
iabbr youtube YouTube
iabbr yousing using
iabbr yourube YouTube
iabbr yours your's
iabbr youre You're
iabbr youll you'll
iabbr yoru your
iabbr yoou you
iabbr yhou you
iabbr yello yellow
iabbr yellobw yellow
iabbr yeellow yellow
iabbr yare year
iabbr yagn yang
iabbr xslt XSLT
iabbr xinjiang Xinjinag
iabbr xcreen screen
iabbr wy why
iabbr wysiwyg what you see is what you get
iabbr wya way
iabbr wsl WSL
iabbr wsl2 WSL2
iabbr wrold world
iabbr writting writing
iabbr writiing writing
iabbr wouldnt wouldn't
iabbr woulc would
iabbr woudl would
iabbr wor word
iabbr wordl world
iabbr wont won't
iabbr wonderyng wondering
iabbr wonce once
iabbr wolrd world
iabbr wokr work
iabbr wokrk work
iabbr wofk work
iabbr woerk work
iabbr wneh when
iabbr wiwth with
iabbr wiwtah with
iabbr wi whatis
iabbr witl will
iabbr withoiut without
iabbr witho9ut without
iabbr withing within
iabbr withe with
iabbr wirk work
iabbr wiritten written
iabbr wireplumber WirePlumber
iabbr windos windows
iabbr wil will
iabbr willl will
iabbr wikipedia Wikipedia
iabbr wiht with
iabbr wigthin within
iabbr widonws windows
iabbr widnows windows
iabbr widht width
iabbr wich which
iabbr wht what
iabbr whtn when
iabbr whtie white
iabbr whteher whether
iabbr whsy why
iabbr whre where
iabbr whree where
iabbr whos who's
iabbr whoch which
iabbr whn when
iabbr whne when
iabbr whitout whiteout
iabbr whith with
iabbr whild while
iabbr whidh which
iabbr whetehr whether
iabbr wher where
iabbr wheres where's
iabbr when When
iabbr whenn when
iabbr whenevder whenever
iabbr wheneever whenever
iabbr whdy why
iabbr whch which
iabbr whay why
iabbr wha what
iabbr what What
iabbr whats what's
iabbr whateer whatever
iabbr whar what
iabbr wetn went
iabbr wether whteher
iabbr wetern western
iabbr weteher weeder
iabbr were we're
iabbr wepage webpage
iabbr wel well
iabbr wehic which
iabbr weeki week
iabbr weay way
iabbr wcho echo
iabbr watterfall waterfall
iabbr watre water
iabbr watn want
iabbr watning wanting
iabbr watchin watching
iabbr watchign watching
iabbr wat3er water
iabbr wasnt wasn't
iabbr wasiting wasting
iabbr warnign warning
iabbr waithing withing
iabbr waht What
iabbr waas was
iabbr vuitlin builtin
iabbr vscode VSCode
iabbr voacab vocab
iabbr vlexible flexible
iabbr vlau value
iabbr vlaus values
iabbr vlaue value
iabbr vlaues values
iabbr vlaid valid
iabbr vitual virtula
iabbr visisted visited
iabbr visiblity visibility
iabbr vish fish
iabbr virtula virtual
iabbr virtulan virtual
iabbr conifg config
iabbr virtua virtual
iabbr vinal final
iabbr viles files
iabbr viedl field
iabbr vidoe video
iabbr vides videos
iabbr videous video's
iabbr viddeo video
iabbr viatal vital
iabbr vfertical vertical
iabbr version version
iabbr versionin version in
iabbr versin version
iabbr versino version
iabbr versiaon version
iabbr verison version
iabbr verifid verified
iabbr veiw view
iabbr veing being
iabbr vefrsion version
iabbr vavlue value
iabbr vaule value
iabbr varuable variable
iabbr varius various
iabbr varibale variable
iabbr varibales variables
iabbr varibalble variable
iabbr variaous various
iabbr varianle variable
iabbr varialbe variable
iabbr variabel variable
iabbr varaible variable
iabbr varaibles variables
iabbr varaiable variable
iabbr vanill vanilla
iabbr vanila vanilla
iabbr valu vale
iabbr valus values
iabbr valueable valuable
iabbr valsy falsy
iabbr valiues values
iabbr valirabel variable
iabbr vairbale variable
iabbr vairable variable
iabbr vairabel variable
iabbr vaibrale variable
iabbr utitlity utility
iabbr utitility utility
iabbr utilitye utility
iabbr utilitky utility
iabbr utf UTF
iabbr utc UTC
iabbr ususal ususal
iabbr ususally usually
iabbr usualy usually
iabbr ussuallly usually
iabbr usses uses
iabbr usptream upstream
iabbr usng using
iabbr usite suite
iabbr usin using
iabbr using Using
iabbr usign using
iabbr userd used
iabbr usenames usernames
iabbr useing using
iabbr usefull useful
iabbr usefoul useful
iabbr usb USB
iabbr usa USA
iabbr ursers users
iabbr url URL
iabbr urls URLs
iabbr upt up
iabbr uphil uphill
iabbr upercase uppercase
iabbr updateing updating
iabbr unwnted unwanted
iabbr unversally universally
iabbr unveilled unveiled
iabbr untul until
iabbr untill until
iabbr untik untuk
iabbr unsuccesfully unsuccessfully
iabbr unndouubtedly undoubtedly
iabbr unladden unladen
iabbr unix Unix
iabbr univesa unviersal
iabbr unitued united
iabbr united United
iabbr uniquie unique
iabbr unicode Unicode
iabbr unecessary unnecessary
iabbr undet under
iabbr Understatnd Understand
iabbr undershore underscore
iabbr underpinings underpinnings
iabbr underlien underline
iabbr underlaying underlying
iabbr underkline underline
iabbr undefien undefined
iabbr Uncerstatnd Understand
iabbr uncacceptable unacceptable
iabbr umverella umbrella
iabbr uitlity utility
iabbr uisngg using
iabbr udp UDP
iabbr udpate update
iabbr udnoubtedly undoubtedly
iabbr udner under
iabbr ubutnu Ubuntu
iabbr ubuntu Ubuntu
iabbr ubttons buttons
iabbr tyupes types
iabbr typicalyy typically
iabbr typescript TypeScript
iabbr typefiel type file
iabbr typeerror TypeError
iabbr tyep type
iabbr tyepes types
iabbr tu too
iabbr tursn turn
iabbr ture true
iabbr tupples tuples
iabbr tumeric turmeric
iabbr tui TUI
iabbr tty TTY
iabbr tstarting starting
iabbr tss TypeScript
iabbr tsk task
iabbr tshirt T-Shirt
iabbr trythy truthy
iabbr trutyhy truthy
iabbr treu true
iabbr treminal terminal
iabbr trea Tera
iabbr traversla traversal
iabbr travelt travel
iabbr trasdidiotnal traditional
iabbr transtitions transitions
iabbr transitino transition
iabbr transformatino transformation
iabbr trafic traffic
iabbr traditioally traditionally
iabbr tradision tradition
iabbr tracet traced
iabbr tpyyes types
iabbr tpye type
iabbr tpee type
iabbr tow two
iabbr toppoings toppings
iabbr tonw town
iabbr tommorow tomorrow
iabbr tomato 🍅
iabbr togle toggle
iabbr toggl toggle
iabbr togetheh together
iabbr todo TODO
iabbr todah today
iabbr tmplate template
iabbr tls TLS
iabbr tlah telah
iabbr tithub GitHub
iabbr tithle title
iabbr timwe time
iabbr timerstatues timerstatus
iabbr timere timer
iabbr tiktok TikTok
iabbr tierminal terminal
iabbr tiem time
iabbr tiems times
iabbr thwo two
iabbr tht that
iabbr th the
iabbr thte the
iabbr thsi this
iabbr throut through
iabbr throuth through
iabbr throurh through
iabbr throuhg through
iabbr throug through
iabbr throught thought
iabbr thpe type
iabbr thout thought
iabbr thoug though
iabbr thoruth through
iabbr thorugh through
iabbr thiws this
iabbr thit this
iabbr thi the
iabbr Thisng Things
iabbr thinnk think
iabbr thingk think
iabbr thingking thinking
iabbr thime time
iabbr thign thing
iabbr thigns things
iabbr thight tight
iabbr thie the
iabbr thies this
iabbr thier their
iabbr thiems times
iabbr thieeory theory
iabbr thidr third
iabbr thhrough through
iabbr thhe the
iabbr theyve they've
iabbr they They
iabbr theyre they're
iabbr thext text
iabbr tHe the
iabbr thes this
iabbr thesse these
iabbr thery there
iabbr ther their
iabbr therme there
iabbr theri their
iabbr theres there's
iabbr theree there
iabbr theoir their
iabbr theis this
iabbr thefaces the faces
iabbr theer there
iabbr theem them
iabbr theat that
iabbr thean than
iabbr thats that's
iabbr thatn than
iabbr thath that
iabbr tha that
iabbr tghe the
iabbr textnode textNode
iabbr tesla Tesla
iabbr ter TypeError
iabbr termnal terminal
iabbr terml terms
iabbr terminla terminal
iabbr termingal terminal
iabbr terminall terminal
iabbr termianl terminal
iabbr termianal terminal
iabbr teranary ternary
iabbr temporayr temporary
iabbr templeate template
iabbr teminal terminal
iabbr televisio television
iabbr teh the
iabbr tehe the
iabbr tediouis tedious
iabbr teahidng teaching
iabbr tcp TCP
iabbr tbale table
iabbr taype type
iabbr tath that
iabbr targetting targeting
iabbr talbe table
iabbr taks task
iabbr takign taking
iabbr taiwan Taiwan
iabbr taht that
iabbr sytyle style
iabbr sytnax syntax
iabbr sysstem system
iabbr syntaxerror SyntaxError
iabbr syntak syntax
iabbr syncchronous synchronous
iabbr symobl symbol
iabbr symbos symbol
iabbr symbolci symbols
iabbr sybsystem subsystem
iabbr sybmolic symbolic
iabbr swt SWT
iabbr switzerland Switzerland
iabbr swiss Swiss
iabbr swhitch switch
iabbr sustioner sustainer
iabbr suse use
iabbr surrouinding surrounding
iabbr surprigisng surprising
iabbr suroundign surrounding
iabbr surender surrender
iabbr suppresed suppressed
iabbr suppoerted supported
iabbr superflosu superfluous
iabbr sunday Sunday
iabbr sukarno Sukarno
iabbr sugestions suggestions
iabbr sufix suffix
iabbr sufficinet sufficient
iabbr suer user
iabbr sudha sudah
iabbr suc such
iabbr sucdh such
iabbr succes success
iabbr successs success
iabbr successed successes
iabbr succesor successor
iabbr succesfuly successfully
iabbr succesful successful
iabbr succesfully successfully
iabbr subystem subsystem
iabbr subtitution substitution
iabbr subtitutions substitutions
iabbr subbmitted submitted
iabbr suati suatu
iabbr styleing styling
iabbr styel style
iabbr styelsheet stylesheet
iabbr styeles styles
iabbr sttus status
iabbr struff stuff
iabbr stroe store
iabbr strint string
iabbr stringgs strings
iabbr strign string
iabbr strenth strength
iabbr storeage storage
iabbr storate storage
iabbr stora store
iabbr storaage storage
iabbr stonesa stones
iabbr stoer store
iabbr stirng sting
iabbr stirngs strings
iabbr stirings strings
iabbr stil still
iabbr sthe the
iabbr steve Steve
iabbr stetmeent statement
iabbr steatlh stealth
iabbr statr start
iabbr statred started
iabbr statment statement
iabbr statmenet statement
iabbr statmeent statement
iabbr staticc static
iabbr staticaly statically
iabbr states States
iabbr statemne statement
iabbr statemen statement
iabbr statemengg statement
iabbr statemenet statement
iabbr stateement statement
iabbr startitng starting
iabbr starndard standard
iabbr stareted started
iabbr starbucks Starbucks
iabbr standadr standard
iabbr stagging staging
iabbr stablished established
iabbr staack stack
iabbr sstem system
iabbr ssg SSG
iabbr squaer square
iabbr spotify Spotify
iabbr splititng splitting
iabbr spirirual spiritual
iabbr speraeat spread
iabbr speen spin
iabbr spedning spending
iabbr spedified specified
iabbr specivied specified
iabbr specivic specific
iabbr specififcation specification
iabbr specifieid specified
iabbr specifiec specific
iabbr specifidc specific
iabbr speciffically specifically
iabbr specifes specifies
iabbr specifeis specifies
iabbr specifeid specified
iabbr specifed specified
iabbr specidfic specific
iabbr speciall special
iabbr speciallity specialty
iabbr speccified specified
iabbr spearker speaker
iabbr sovereingty sovereignty
iabbr SOURCEs SOURCES
iabbr sourcd source
iabbr sourcde sourced
iabbr souncdard soundcard
iabbr sould should
iabbr soudns sounds
iabbr soources sources
iabbr somthing something
iabbr somtehing something
iabbr sometines sometimes
iabbr somethin something
iabbr somethimes sometimes
iabbr somethiing something
iabbr Somethig Something
iabbr somethign something
iabbr somehting something
iabbr Solugion Solution
iabbr sohuth south
iabbr softwrae software
iabbr softweare software
iabbr softerwere software
iabbr softare software
iabbr soem some
iabbr soekarno Sukarno
iabbr socicla social
iabbr socets sockets
iabbr sngle single
iabbr smoot smooth
iabbr smoooth smooth
iabbr smalleer smaller
iabbr slugggish sluggish
iabbr slightliy slightly
iabbr slectors selectors
iabbr skilstak skilstak
iabbr sixze size
iabbr siubmitted submitted
iabbr sinlge single
iabbr singel single
iabbr sindow window
iabbr sinc since
iabbr sinagaproe Singapore
iabbr simultaenously simultaneously
iabbr simpel simple
iabbr simillar similar
iabbr similay similar
iabbr siletn silent
iabbr sii see
iabbr si is
iabbr signinficantly significantly
iabbr signinficance significance
iabbr significat significant
iabbr signaturre signature
iabbr signatrue signature
iabbr siet site
iabbr sice since
iabbr shuch such
iabbr shpo shop
iabbr showr show
iabbr showereing showering
iabbr showd showed
iabbr shouled should
iabbr shouldnt shouldn't
iabbr shoulc should
iabbr shouild should
iabbr shoudl should
iabbr shorthadn shorthand
iabbr shor show
iabbr shorhand shorthand
iabbr shoppngl shopping
iabbr shoppign shopping
iabbr shoew show
iabbr shes she's
iabbr she She
iabbr sha SHA
iabbr shart start
iabbr shareing sharing
iabbr sfelist safelist
iabbr setptember september
iabbr sesua sesuai
iabbr sesson session
iabbr serviece service
iabbr serndir sendiri
iabbr sequentlly sequentially
iabbr sequentiallly sequentially
iabbr sequenncd sequenced
iabbr sequaentially sequentially
iabbr september September
iabbr sepecifiecally specifically
iabbr sepecies species
iabbr separatro separator
iabbr sepace space
iabbr seo SEO
iabbr sentury century
iabbr sensitibe sensitive
iabbr sensiteive sensitive
iabbr sencitive sensitive
iabbr semanics semantics
iabbr seleected selected
iabbr selecition selecition
iabbr sehll shell
iabbr seeseorang seseorang
iabbr seeral several
iabbr seee see
iabbr seeek seek
iabbr secur recur
iabbr secureity security
iabbr secrue secure
iabbr secondk seconds
iabbr secodns seconds
iabbr seccure secure
iabbr sebagh sabah
iabbr searhc search
iabbr searhch search
iabbr searchsploti searchsploit
iabbr scutlures cultures
iabbr scultpture sculptures
iabbr scrpt script
iabbr scrol scroll
iabbr scritp script
iabbr scrigpt script
iabbr scren screen
iabbr screeen screen
iabbr screan screen
iabbr scopb scope
iabbr scirpt script
iabbr scipt sci pt
iabbr scatered scattered
iabbr sbeds beds
iabbr savely safely
iabbr saveddd saved
iabbr Saussage Sausage
iabbr saty say
iabbr sarawak Sarawak
iabbr sape shape
iabbr sapace space
iabbr salvia saliva
iabbr saha saja
iabbr safetly safely
iabbr rwo row
iabbr ruude rude
iabbr runique unique
iabbr runing running
iabbr rss RSS
iabbr rpint print
iabbr rooot root
iabbr roman Roman
iabbr roder order
iabbr roatate rotate
iabbr rmy my
iabbr rmove remove
iabbr rmeove remove
iabbr rmany many
iabbr rithtful rightful
iabbr ritghts rights
iabbr rihgt right
iabbr righr right
iabbr revresh refresh
iabbr rever refer
iabbr reveald revealed
iabbr reuturn return
iabbr reutrn return
iabbr reutnr return
iabbr reutn return
iabbr reuslt result
iabbr reusalbe reusable
iabbr returh return
iabbr retunrs returns
iabbr retturn return
iabbr rets rest
iabbr retrun return
iabbr retirun return
iabbr retirn return
iabbr resutl result
iabbr resulf result
iabbr restroe restore
iabbr restorinign restoring
iabbr responss response
iabbr resons reasons
iabbr resemblence resemblance
iabbr resasons reasons
iabbr requriemetns requirements
iabbr requried required
iabbr reprexsenting representing
iabbr represetns represents
iabbr representaiton representation
iabbr repositroy repository
iabbr repl real
iabbr repetititve repetitive
iabbr reovme remove
iabbr renmae rename
iabbr renedrs renders
iabbr renedering rendering
iabbr rendre render
iabbr rendred rendered
iabbr renderign rendering
iabbr rendereing rendering
iabbr renadh rendah
iabbr renadah rendah
iabbr remvoe remove
iabbr remvoed removed
iabbr remve remove
iabbr removeing removing
iabbr remofe remove
iabbr remoev remove
iabbr remfove remove
iabbr reltaed related
iabbr religirons religions
iabbr religiouse religious
iabbr relfect reflect
iabbr relevatn relevant
iabbr relatibve relative
iabbr reidirect redirect
iabbr reguar regular
iabbr refference reference
iabbr referrs refers
iabbr referint refering
iabbr referes refers
iabbr referenct reference
iabbr reeset reset
iabbr reeally really
iabbr redundent redundant
iabbr redundatn redundant
iabbr redner render
iabbr redirectign redirecting
iabbr redhat Redhat
iabbr redb red
iabbr recurseive recursive
iabbr recurevel recuresively
iabbr recuresvely recursively
iabbr recuresively recursively
iabbr recongnize recognize
iabbr recomended recommended
iabbr recomendation recommendation
iabbr receifing receiving
iabbr reature feature
iabbr reassing reassign
iabbr reassingned reassigned
iabbr reassingde reassigned
iabbr reasd read
iabbr realy really
iabbr realtime mealtime
iabbr readlink read link
iabbr react React
iabbr rdf RDF
iabbr rathre rather
iabbr raspberry Raspberry
iabbr rarray array
iabbr rangkng rangking
iabbr randr RandR
iabbr randon random
iabbr randonm random
iabbr randomd random
iabbr radnom random
iabbr radion radio
iabbr quran Qur'an
iabbr quiotes quotes
iabbr quiestion question
iabbr quicjkley quickly
iabbr questin questing
iabbr questeion question
iabbr quesstion question
iabbr qr QR
iabbr python Python
iabbr purpos purpose
iabbr purpel purple
iabbr puropose purpose
iabbr purgint purging
iabbr publik public
iabbr ptorayed portrayed
iabbr ptogram program
iabbr psot post
iabbr psesific specific
iabbr pseed speed
iabbr pruposes purposes
iabbr prtray portray
iabbr proviate private
iabbr prots ports
iabbr prot port
iabbr protperty property
iabbr prototyep prototype
iabbr protectedn protected
iabbr prosp props
iabbr prormat format
iabbr propterties properties
iabbr proprietayr proprietary
iabbr propionents proponents
iabbr propietary proprietary
iabbr prophtets prophets
iabbr propetises properties
iabbr propeties properties
iabbr propery properly
iabbr propertties properties
iabbr propertise properties
iabbr properti property
iabbr propertie properties
iabbr propertieis properties
iabbr propertieas properties
iabbr properteis properties
iabbr properites properties
iabbr promtp prompt
iabbr promram program
iabbr prominetn prominent
iabbr programing programming
iabbr progaming programming
iabbr profirt profit
iabbr PROFIEL PROFILE
iabbr profide provide
iabbr prodocution production
iabbr proctechted protected
iabbr procject project
iabbr proceudure procedure
iabbr procesor processor
iabbr procedurla procedural
iabbr procedre procedure
iabbr proceded proceeded
iabbr priveous previous
iabbr privacey privacy
iabbr pritn print
iabbr priorithies priorities
iabbr prin preen
iabbr pring print
iabbr primititve primitive
iabbr primitieve primitive
iabbr prifat private
iabbr priciples principles
iabbr pribvate private
iabbr prhase phrase
iabbr prevneting preventing
iabbr previx prefix
iabbr previwous previous
iabbr previleged privileged
iabbr previewous previous
iabbr previeous previous
iabbr previdous previous
iabbr prevfer prefer
iabbr prever prefer
iabbr preverable preferable
iabbr prevenet prevent
iabbr preveer prefer
iabbr prespective prospective
iabbr presonal personal
iabbr presing pressing
iabbr presetn present
iabbr presentaiton presentation
iabbr prequisite perquisite
iabbr prepetrator perpetrator
iabbr preoceedure procedure
iabbr preocedures procedures
iabbr premissions permissions
iabbr premisions permissions
iabbr preivieous previous
iabbr preious previous
iabbr preinted printed
iabbr prefreneces preferences
iabbr prefious previous
iabbr preferrred preferred
iabbr prefereed preferred
iabbr prefent prevent
iabbr precisson precision
iabbr preciding preceding
iabbr precentage percentage
iabbr pracitices practices
iabbr powerfull powerful
iabbr powere powers
iabbr potrayed portrayed
iabbr postsripts postscripts
iabbr post Post
iabbr possitive positive
iabbr possinle possible
iabbr possibel possible
iabbr posix POSIX
iabbr positoin position
iabbr porperties properties
iabbr porne prone
iabbr porgrams programs
iabbr porgramming programming
iabbr porcesses processes
iabbr populationof population of
iabbr poman podman
iabbr poixels pixels
iabbr poin point
iabbr poeple people
iabbr ploting plotting
iabbr plititcal political
iabbr pleas please
iabbr playabel playable
iabbr platfrom platform
iabbr plaftrom platform
iabbr pitfals pitfalls
iabbr pirnt print
iabbr pipewire PipeWire
iabbr piosts posts
iabbr pid PID
iabbr pickeld pickled
iabbr physicall physical
iabbr php PHP
iabbr phouysical physical
iabbr phonegap PhoneGap
iabbr phaases phases
iabbr perviw preview
iabbr pervect perfect
iabbr perserving preserving
iabbr perserivn preserving
iabbr perosn person
iabbr peroperti property
iabbr perons person
iabbr perobagation propagation
iabbr pernickety persnickety
iabbr permorming performing
iabbr permisson permission
iabbr permisisons permissions
iabbr perl Perl
iabbr perku perlu
iabbr peritn print
iabbr performatn performant
iabbr performatnce performance
iabbr performang performing
iabbr performancd performance
iabbr perforamance performance
iabbr peresissting persisting
iabbr peower power
iabbr penuat penguat
iabbr peninsuallar peninsular
iabbr pembershian pembersihan
iabbr p_elemnet p_element
iabbr peacefullly peacefully
iabbr pdf PDF
iabbr pci PCI
iabbr pcakage package
iabbr pbuh PBUH
iabbr passsed passed
iabbr passowrd password
iabbr passin passing
iabbr pasisng passing
iabbr pasing passing
iabbr particualr particular
iabbr parrent parent
iabbr parnent parent
iabbr parisn parsing
iabbr parisng parsing
iabbr pari pair
iabbr paretn parent
iabbr parenet parent
iabbr paramters parameters
iabbr paramter parameter
iabbr parametesr parameters
iabbr parametes parameters
iabbr parametere parameters
iabbr paramaeter parameter
iabbr paraisin parsing
iabbr paragrpah paragraph
iabbr paragrahp paragraph
iabbr paragpah paragraph
iabbr papaer paper
iabbr paneds panes
iabbr pancakge pancake
iabbr palatine Palatine
iabbr pakistan Pakistan
iabbr pakcages packages
iabbr paht path
iabbr pahases phases
iabbr paernt parent
iabbr padnoc pandoc
iabbr padang Padang
iabbr pacnkage package
iabbr packges packages
iabbr packge package
iabbr packgae package
iabbr pacckage package
iabbr ownd own
iabbr ovverride override
iabbr ov of
iabbr overrrid override
iabbr overlaping overlapping
iabbr overlaped overlapped
iabbr overide override
iabbr outtermoset outermost
iabbr outsid outside
iabbr outpus output
iabbr outher other
iabbr ouptut output
iabbr otu out
iabbr ot to
iabbr otpions options
iabbr otomatisa otomatis
iabbr otherr other
iabbr othe other
iabbr otgher other
iabbr oter otter
iabbr otehr other
iabbr os OS
iabbr osi OSI
iabbr orriginal original
iabbr orignial original
iabbr origis origin
iabbr ordure order
iabbr orderes ordered
iabbr ordereed ordered
iabbr orbject object
iabbr oranges Oranges
iabbr oraganization organization
iabbr optoon option
iabbr optoins options
iabbr optiosn option
iabbr optionla optional
iabbr optioin option
iabbr optino option
iabbr optinal optional
iabbr opreateor operator
iabbr opperator operator
iabbr oposite opposite
iabbr opertor operator
iabbr opertoer operator
iabbr opertaor operator
iabbr oper open
iabbr opernsource ope resource
iabbr Opern Open
iabbr operatro operator
iabbr operatoar operator
iabbr operatin operation
iabbr operaotr operator
iabbr operaor operator
iabbr openssl OpenSSL
iabbr openssh OpenSSH
iabbr opengl OpenGL
iabbr openeing opening
iabbr opeenre opener
iabbr oone one
iabbr oom OOM
iabbr onwe one
iabbr ont on
iabbr ontly only
iabbr onlyu only
iabbr onlhy only
iabbr onet one
iabbr omittted omitted
iabbr omited omitted
iabbr omg OMG
iabbr ok OK
iabbr okey okay
iabbr ojbect object
iabbr oit It
iabbr ois is
iabbr oiptons options
iabbr ohw how
iabbr ohowever however
iabbr ogten often
iabbr ogher other
iabbr ofther other
iabbr ofthen often
iabbr ofter after
iabbr ofrmatting formatting
iabbr ofrmat format
iabbr ofr for
iabbr ofirgins origins
iabbr ofer over
iabbr oetstat netstat
iabbr oera era
iabbr oeprator operator
iabbr oepn open
iabbr oen one
iabbr odesnt doesn't
iabbr od do
iabbr ocur occur
iabbr ocunt count
iabbr ocpy copy
iabbr ocntiue continue
iabbr ocmmand command
iabbr ocme come
iabbr occurences occurrences
iabbr occurence occurrence
iabbr occureances occurrences
iabbr occurance occurrence
iabbr occuraces occur aces
iabbr occupide occupied
iabbr occuiped occupied
iabbr ocassionaly occasionally
iabbr obvsessed obsessed
iabbr obption option
iabbr obnly only
iabbr objedct object
iabbr object Object
iabbr objecte object
iabbr objecs object
iabbr objec object
iabbr obbsessed obsessed
iabbr nwme name
iabbr numver number
iabbr numverical numerical
iabbr numer number
iabbr numericc numeric
iabbr numbver number
iabbr numbmer number
iabbr numbe number
iabbr nuerous numerous
iabbr nuemerical numerical
iabbr nubmers numbers
iabbr nubmer number
iabbr nto not
iabbr ntetwork network
iabbr november November
iabbr nott not
iabbr notivication notification
iabbr notificatoin notification
iabbr noth north
iabbr nothig nothing
iabbr nothign nothing
iabbr notgherlands Netherlands
iabbr notationand notation and
iabbr notatino notation
iabbr notaiton notation
iabbr nost most
iabbr norway Norway
iabbr nolder older
iabbr nokias Nokia's
iabbr nokia Nokia
iabbr nokiaas Nokia's
iabbr noew new
iabbr noeds needs
iabbr nodieis bodies
iabbr nodelist NodeList
iabbr nodejs NodeJS
iabbr noah Noah
iabbr nmpa nmap
iabbr night Night
iabbr newwer newer
iabbr newlinen newline
iabbr nevariously nefariously
iabbr networkign networking
iabbr netwokr network
iabbr netive native
iabbr nethernlands Netherlands
iabbr netherlands Netherlands
iabbr netflix Netflix
iabbr netework network
iabbr neter enter
iabbr netehrelands Netherlands
iabbr nestsed nestled
iabbr neovim NeoVim
iabbr negitiaate negotiate
iabbr negatoive negative
iabbr negar negara
iabbr neer never
iabbr neeed need
iabbr ned need
iabbr nections sections
iabbr necessayr necessary
iabbr necesary necessary
iabbr nebara negara
iabbr ndoe node
iabbr ndoemon nodemon
iabbr navigat navigate
iabbr naviagation navigation
iabbr navbigate navigate
iabbr natrual natural
iabbr nat NAT
iabbr narronwing narrowing
iabbr nan NaN
iabbr nam name
iabbr namesa names
iabbr namems name's
iabbr nameing naming
iabbr namd named
iabbr naimation animation
iabbr nad and
iabbr na an
iabbr myaning meaning
iabbr mvoe move
iabbr mve move
iabbr mux tmux
iabbr muslims Muslims
iabbr muslim Muslim
iabbr musilim Muslim
iabbr muschles muscles
iabbr muroid muroid
iabbr multipel multiple
iabbr multinationa multinational
iabbr multidimensionall multidimensional
iabbr muhamma Muhammad
iabbr muhammads Muhammad's
iabbr muhamad Muhammad
iabbr mtatter matter
iabbr mroe more
iabbr mozilla Mozilla
iabbr movile mobile
iabbr movib moving
iabbr moveing moving
iabbr movbile mobile
iabbr motorcyle motorcycle
iabbr mosue mouse
iabbr moset most
iabbr moses Moses
iabbr mornign morning
iabbr mor more
iabbr morining morning
iabbr moringng morning
iabbr mony money
iabbr monitr monitor
iabbr moniotor monitor
iabbr mongodb MongoDB
iabbr moistoure moisture
iabbr moinitor monitor
iabbr moere more
iabbr moed mode
iabbr moduel module
iabbr modivy modify
iabbr moderyn modern
iabbr modeal modal
iabbr mnenu menu
iabbr misstype mistype
iabbr missgin missing
iabbr minght might
iabbr millisecons milliseconds
iabbr milisecons millisecond
iabbr miliseconsds milliseconds
iabbr miliseconds milliseconds
iabbr milions millions
iabbr milek milk
iabbr midle middle
iabbr midified modified
iabbr microsoft Microsoft
iabbr mgh https://github.com/Yuandandi
iabbr mexican Mexican
iabbr metod method
iabbr metirics metrics
iabbr methosd methods
iabbr methodb methods
iabbr messanger messenger
iabbr mescellaneous miscellaneous
iabbr mepty empty
iabbr mentri menteri
iabbr menssages messages
iabbr mengaktakan mengatakan
iabbr mengakiibatkan mengakibatkan
iabbr mengadapi menghadapi
iabbr meneempati menempati
iabbr menaing meaning
iabbr menaingful meaningful
iabbr memners members
iabbr memilikii memiliki
iabbr memgbers members
iabbr memerkosi memerkosa
iabbr memeorh memory
iabbr memeorabel memorable
iabbr memeofry memory
iabbr meke make
iabbr meiji Meiji
iabbr mehtod method
iabbr meggings muggings
iabbr meemory memory
iabbr mee Dandi Yuan Aridianto
iabbr meata meta
iabbr meassure measure
iabbr meanign meaning
iabbr mdouel module
iabbr mdoe mode
iabbr mdoal modal
iabbr mdns mDNS
iabbr md5 MD5
iabbr maximumm maximum
iabbr mattial martial
iabbr mathch match
iabbr materialzied materialized
iabbr matchies matches
iabbr masyarakay masyarakat
iabbr marsk marks
iabbr marksers markers
iabbr markdwon markdown
iabbr markdown Markdown
iabbr markdonw Markdown
iabbr march March
iabbr manuiualy manually
iabbr manke make
iabbr manipultation manipulation
iabbr manipulatyed manipulated
iabbr manger manager
iabbr mangager manager
iabbr manchines machines
iabbr manageement management
iabbr manaeger manager
iabbr manaage manage
iabbr malaysuia Malaysia
iabbr malaysia Malaysia
iabbr malayisia Malaysia
iabbr malaya Malaya
iabbr malasyia Malaysia
iabbr malacca Malacca
iabbr maket make
iabbr majosr majors
iabbr maintaint maintains
iabbr maintaenance maintenance
iabbr mainpulation manipulation
iabbr magter matter
iabbr maek make
iabbr machien machine
iabbr machhine machine
iabbr maanager manager
iabbr maanaged managed
iabbr maachine machine
iabbr lwas law
iabbr lvies lives
iabbr lup for i in {1..}; do echo item $i.; done?}i
iabbr lua Lua
iabbr lts LTS
iabbr lsit list
iabbr lsitens listens
iabbr lsiteners listeners
iabbr lsat last
iabbr lowset lowest
iabbr lowercas lowercase
iabbr lornum exec curl -sSL "http://metaphorpsum.com/paragraphs/"<Left>
iabbr Lorem Loren
iabbr loooping looping
iabbr loook look
iabbr loogkng looking
iabbr loocate locate
iabbr logn long
iabbr lognger longer
iabbr logica logic
iabbr logeical logical
iabbr locla local
iabbr locatae locate
iabbr loadeed loaded
iabbr loacal local
iabbr litteraly literally
iabbr litteral literal
iabbr littel little
iabbr litreasinya literasinnya
iabbr litlle little
iabbr literasin literasi
iabbr liteasi literasi
iabbr listneers listeners
iabbr listerners listeners
iabbr listerner listener
iabbr listerener listener
iabbr listenerf listeners
iabbr lisngint listing
iabbr lishcense license
iabbr liscences licenses
iabbr lirt3eral literal
iabbr linxu Linux
iabbr linux Linux
iabbr linst list
iabbr linsk links
iabbr linse lines
iabbr lin line
iabbr linkt link
iabbr linivng lining
iabbr ling link
iabbr lineked linked
iabbr linee line
iabbr lincoln Lincoln
iabbr likn link
iabbr lik link
iabbr likeyly likely
iabbr lightwieght lightweight
iabbr liete lite
iabbr liek like
iabbr liead lead
iabbr libreoffice LibreOffice
iabbr leverl level
iabbr levell level
iabbr levarage leverage
iabbr lettter letter
iabbr letterh letters
iabbr letetr letter
iabbr leter letter
iabbr lern learn
iabbr lentth length
iabbr lenth length
iabbr lengthh length
iabbr lenght length
iabbr lengeth length
iabbr lements elements
iabbr lement element
iabbr lelments elements
iabbr lein line
iabbr lefet left
iabbr leemnets elements
iabbr leement element
iabbr lcoaly locally
iabbr launchhed launched
iabbr latesst latest
iabbr lates latest
iabbr las last
iabbr largaer larger
iabbr laregest largest
iabbr laod load
iabbr lan LAN
iabbr lanjupt lanjut
iabbr languange language
iabbr languagne language
iabbr languae language
iabbr langeuage language
iabbr laik like
iabbr kwyowrd keyword
iabbr kutsi kursi
iabbr kusage usage
iabbr kuris kursi
iabbr koordinage coordinate
iabbr konw know
iabbr kong Kong
iabbr knwon known
iabbr knowledgte knowledge
iabbr kisd kids
iabbr king King
iabbr kindl kindle
iabbr keycod keycode
iabbr kerashya kerasnya
iabbr kebuuthan kebutuhan
iabbr kapitanya kapita nya
iabbr jungel jungle
iabbr july July
iabbr judaism Judaism
iabbr jsut just
iabbr jss JavaScript
iabbr json JSON
iabbr jquery JQuery
iabbr josn json
iabbr josb jobs
iabbr joingin joining
iabbr jkt Jakarta
iabbr jinja2 Jinja2
iabbr jesus Jesus
iabbr jekyll Jekyll
iabbr javascript JavaScript
iabbr javasciript JavaScript
iabbr japn japan
iabbr japan Japan
iabbr japanese Japanese
iabbr japanesee Japanese
iabbr japanaese Japanese
iabbr jaopanese Japanese
iabbr january January
iabbr jan Jan
iabbr jakarta Jakarta
iabbr iwth with
iabbr iwll will
iabbr iwdely widely
iabbr ivnoke invoke
iabbr its it's
iabbr itno into
iabbr itn in
iabbr itnerpereter interpreter
iabbr itnerface interface
iabbr itneractive interactive
iabbr itme time
iabbr itmes items
iabbr itmean it mean
iabbr itll it'll
iabbr it It
iabbr itesm items
iabbr iterm2 iTerm2
iabbr itereate iterate
iabbr iteratin iteration
iabbr itemm item
iabbr isze size
iabbr ist It's
iabbr istener listener
iabbr isnt isn't
iabbr isn in
iabbr isngel single
iabbr islam Islam
iabbr irc IRC
iabbr ipv6 IPv6
iabbr ipv4 IPv4
iabbr ipp IPP
iabbr ip IP
iabbr iphione iPhone
iabbr iot IoT
iabbr invormation information
iabbr involfe involve
iabbr invokd invoked
iabbr inventeory inventory
iabbr intu into
iabbr intsalation installation
iabbr introuduce introduce
iabbr introdueced introduced
iabbr introductiono introduction
iabbr intrduced introduced
iabbr intractive interactive
iabbr Intgers Integers
iabbr intet intent
iabbr intervace interface
iabbr intermpretation interpretation
iabbr intermpereter interpreter
iabbr intermitten intermittent
iabbr intergral integral
iabbr intergraition integration
iabbr interfal interval
iabbr interfacce interface
iabbr interfaace interface
iabbr interenet internet
iabbr interal internal
iabbr interactivfe interactive
iabbr interactivce interactive
iabbr interactie interactive
iabbr interacet interact
iabbr intepreter interpreter
iabbr insuficient insufficient
iabbr instlaled installed
iabbr institued instituted
iabbr instantiationg instantiating
iabbr instanes instances
iabbr instanctiation instantiating
iabbr installaiton installation
iabbr instalation installation
iabbr instagram Instagram
iabbr instaead instead
iabbr insonesia Indonesia
iabbr inslay inlay
iabbr insisde inside
iabbr insiede inside
iabbr inshell in shell
iabbr inser insert
iabbr inseatead instead
iabbr insatall install
iabbr insall install
iabbr inromation information
iabbr inovasinya inovasi nya
iabbr inot into
iabbr inoformation information
iabbr inoed inode
iabbr inodonesia Indonesia
iabbr inmutable immutable
iabbr injedctedd injected
iabbr inititate initiate
iabbr initilaizer initializer
iabbr inidonesians Indonesians
iabbr inheritabel inheritable
iabbr ingridients ingredients
iabbr ingormation information
iabbr ingnore ignore
iabbr ingle single
iabbr ingformation information
iabbr ingetger integer
iabbr infuential influential
iabbr informatino information
iabbr informatinfor information for
iabbr infomation information
iabbr infoekd invoked
iabbr infiite infinite
iabbr infentory inventory
iabbr ineteesting interesting
iabbr indtation indentation
iabbr indonesias Indonesia
iabbr indonesians Indonesians
iabbr indonesian Indonesian
iabbr indonesia Indonesia
iabbr indo Indonesia
iabbr indoesias Indonesia's
iabbr indoensians Indonesians
iabbr indoensia Indonesia
iabbr indoenesian Indonesian
iabbr indoeneasia Indonesia
iabbr indnx index
iabbr indifidual individual
iabbr indidcte indicate
iabbr indexign indexing
iabbr indesks indeks
iabbr inderictly indirectly
iabbr independendt independent
iabbr independece independence
iabbr independdecne independence
iabbr indentatino indentation
iabbr inddex index
iabbr incrmenets increments
iabbr increaste increase
iabbr incoporation incorporation
iabbr inclueded included
iabbr includin including
iabbr includde include
iabbr incex index
iabbr incetpion inception
iabbr incerement increment
iabbr inboun inbound
iabbr inavetebly inevitably
iabbr inadvertnet inadvertent
iabbr imune immune
iabbr imte item
iabbr improev improve
iabbr imporve improve
iabbr importatn important
iabbr importan important
iabbr imporovements improvements
iabbr imporoved improved
iabbr impolies implies
iabbr impolementation implementation
iabbr impoerattive imperative
iabbr implict implicit
iabbr implicily implicitly
iabbr Implici Implicit
iabbr implemeentation implementation
iabbr impies implies
iabbr impertaive imperative
iabbr imortance importance
iabbr imolicit implicit
iabbr immutabel immutable
iabbr immmutable immutable
iabbr immideately immediately
iabbr immetdiatiielly immediately
iabbr immams imams
iabbr im I'm
iabbr imideately immediately
iabbr imge image
iabbr imediatley immediately
iabbr imediate immediate
iabbr imap IMAP
iabbr imamah Imamah
iabbr imags image
iabbr imaage image
iabbr iiterate iterate
iabbr iis is
iabbr iirc IIRC
iabbr iircc if I remember correctly
iabbr iinstall install
iabbr i I
iabbr igtem item
iabbr ightness lightness
iabbr ifs if
iabbr iformation formation
iabbr ifnormation information
iabbr ifnormatin information
iabbr ifno info
iabbr ifles files
iabbr ifferent different
iabbr ie i.e.
iabbr ieee IEEE
iabbr idnonesia Indonesia
iabbr idnexing indexing
iabbr idnetical identical
iabbr idnent indent
iabbr idesa ideas
iabbr identitty identity
iabbr identihfy identify
iabbr icmp ICMP
iabbr iam I am
iabbr iamges images
iabbr iamge image
iabbr iamages images
iabbr iach each
iabbr hyprelink hyperlink
iabbr hygine hygiene
iabbr hwy why
iabbr Hwo How
iabbr hwo how
iabbr hwite white
iabbr hwihc which
iabbr hwich which
iabbr hwere where
iabbr hwat what
iabbr hwatis whatis
iabbr hust just
iabbr hundresds hundreds
iabbr humblebarg humble bark
iabbr hugo Hugo
iabbr https https
iabbr html HTML
iabbr htmlelement HTMLEleement
iabbr htmlcollection HTMLCollection
iabbr htis this
iabbr hthe the
iabbr hte the
iabbr htem them
iabbr htat that
iabbr htan than
iabbr htahun tahun
iabbr hsow show
iabbr hsowed showed
iabbr hsis this
iabbr hsared shared
iabbr hre here
iabbr hree here
iabbr how How
iabbr houman human
iabbr houese house
iabbr houdeholds households
iabbr hostr hosts
iabbr horuzontally horizontally
iabbr horizontaly horizontally
iabbr hoook hook
iabbr hong Hong
iabbr hoint hint
iabbr hoem home
iabbr hlep help
iabbr histroy history
iabbr histor history
iabbr hisotry history
iabbr hisotians historians
iabbr hirearchy hierarchy
iabbr hins hints
iabbr hinga hingga
iabbr hinduism Hinduism
iabbr hiliy hilir
iabbr hightlight highlight
iabbr highter higher
iabbr highier higher
iabbr hifher higher
iabbr hiere here
iabbr hierarcy hierarchy
iabbr hieararchy hierarchy
iabbr hiddenf hidden
iabbr hhow how
iabbr hhousehold household
iabbr hestag hastag
iabbr hes he's
iabbr herval herbal
iabbr heres here's
iabbr helpd help
iabbr helo Hello
iabbr hello Hello
iabbr heighet height
iabbr he He
iabbr hedign heeding
iabbr headign heading
iabbr headeer header
iabbr hdup hidup
iabbr hdr ####################################################################
iabbr havent haven't
iabbr havae have
iabbr hatumu hatimu
iabbr hatml html
iabbr hasnt hasn't
iabbr hased hashed
iabbr happesns happens
iabbr happends happens
iabbr happend happened
iabbr happende happened
iabbr hans hand
iabbr handel Handel
iabbr hallowoin hallowing
iabbr hakers hackers
iabbr hading hating
iabbr haave have
iabbr haas has
iabbr gutys guys
iabbr gutorial tutorial
iabbr guis GUIs
iabbr gui GUI
iabbr gsettings gettings
iabbr gruping grouping
iabbr grumpt grumpy
iabbr grpe grep
iabbr grousp group
iabbr groupd group
iabbr groudn ground
iabbr groeup group
iabbr greeks Greeks
iabbr greek Greek
iabbr graphicl graphical
iabbr granpda grandpa
iabbr gradinet gradient
iabbr gpu GPU
iabbr gplv3 GPLv3
iabbr gplv2 GPLv2
iabbr gpl GPL
iabbr governorate governor ate
iabbr gous goes
iabbr goto go-to
iabbr goottne gotten
iabbr goolge google
iabbr google Google
iabbr googel google
iabbr googd good
iabbr golas goals
iabbr golang Golang
iabbr goies goes
iabbr gnu GNU
iabbr gnome GNOME
iabbr gnerator generator
iabbr gneral general
iabbr globla global
iabbr globbla global
iabbr Globbing Globing
iabbr globaly globally
iabbr globall global
iabbr globa global
iabbr gloave glove
iabbr gloabaly globally
iabbr glboal global
iabbr givign giving
iabbr givem given
iabbr githyub GitHub
iabbr github GitHub
iabbr git Git
iabbr gihtyb GitHub
iabbr gihtub GitHub
iabbr gigveaway giveaway
iabbr ghe the
iabbr ghath that
iabbr gguide guide
iabbr gettint getting
iabbr getags jags
iabbr gerp grep
iabbr gerbawah terbawah
iabbr genvironment environment
iabbr genrate generate
iabbr genra genera
iabbr genereates generates
iabbr generatro generator
iabbr generator Generator
iabbr generatio generation
iabbr generaly generally
iabbr genelra general
iabbr geneerate generate
iabbr genearate generate
iabbr gelongs belongs
iabbr geitting getting
iabbr gausian gaussian
iabbr Gateaway Gateway
iabbr gaem game
iabbr gactory factory
iabbr gabe gave
iabbr fwiw for what it's worth
iabbr futere future
iabbr furnitrue furniture
iabbr furdamentals fundamentals
iabbr funtion function
iabbr functiono function
iabbr functionnality functionality
iabbr functio function
iabbr functinos functions
iabbr functino function
iabbr funcrion function
iabbr funcamgental fundamental
iabbr fullscreen Fullscreen
iabbr fullly fully
iabbr fulfillement fulfillment
iabbr fulfiled fulfilled
iabbr fucntion function
iabbr fucntino function
iabbr frueit fruit
iabbr frou from
iabbr fromat format
iabbr franklin Franklin
iabbr fqa Frequently Asked Question
iabbr fpile file
iabbr fots fonts
iabbr fotns fonts
iabbr fotn font
iabbr fot for
iabbr forsce force
iabbr fornt front
iabbr formater formatter
iabbr forma format
iabbr footbal football
iabbr foollow follow
iabbr fo of
iabbr fomr form
iabbr fomrat format
iabbr followint following
iabbr folloiwng following
iabbr fodls folds
iabbr flippe flipper
iabbr fliper flipper
iabbr flie file
iabbr fles files
iabbr fle file
iabbr flatpack flatpak
iabbr flase false
iabbr fixe fix
iabbr firtual virtual
iabbr firste first
iabbr firewalll firewall
iabbr firest first
iabbr firefox Firefox
iabbr finnish finish
iabbr finaly finally
iabbr finallly finally
iabbr fim vim
iabbr fime time
iabbr filterign filtering
iabbr filsystem filesystem
iabbr filse files
iabbr filnally finally
iabbr fil file
iabbr fileter filter
iabbr filem film
iabbr filell file ll
iabbr filee file
iabbr fiirst first
iabbr fi if
iabbr fiewer viewer
iabbr fierwalls firewalls
iabbr fiels files
iabbr fielsd fields
iabbr fiel file
iabbr fieeld field
iabbr fiedl field
iabbr fidn find
iabbr fideo video
iabbr fideos videos
iabbr fiatures features
iabbr fialn final
iabbr ffom from
iabbr feture future
iabbr femoved removed
iabbr federationf federation
iabbr february February
iabbr feb Feb
iabbr fasle false
iabbr faseter faster
iabbr fascimile facsimile
iabbr farenheit Fahrenheit
iabbr familiy family
iabbr falue value
iabbr falues values
iabbr falsee false
iabbr fale false
iabbr fainth faith
iabbr fafourite favorite
iabbr fafourige favorite
iabbr faceook facebook
iabbr exuals equals
iabbr extesnsion extension
iabbr exteremely extremely
iabbr expresssions expressions
iabbr expresssion expression
iabbr expressjs ExpressJS
iabbr expressio expression
iabbr expressino expression
iabbr expresion expression
iabbr expreieces experiences
iabbr exposses exposes
iabbr exponenet exponent
iabbr explicityly explicitly
iabbr experieced experienced
iabbr expansoion expansion
iabbr exmple example
iabbr exixting existing
iabbr exisst exist
iabbr exisiting existing
iabbr exif EXIF
iabbr executoion execution
iabbr executeed executed
iabbr executbale executable
iabbr execuiton execution
iabbr execpt except
iabbr exchgen exchange
iabbr exchagne exchange
iabbr excetp except
iabbr excepth except
iabbr excelent excellent
iabbr exace exact
iabbr ew we
iabbr evnet event
iabbr evnent event
iabbr evicde device
iabbr evetn event
iabbr everyting everything
iabbr Everythins Everything
iabbr everythign everything
iabbr evertyhong everything
iabbr evern even
iabbr everest Everest
iabbr Event Evens
iabbr Evens Evans
iabbr evenet event
iabbr evefry every
iabbr eveerywhere everywhere
iabbr eveery every
iabbr eveent event
iabbr evealuated evaluated
iabbr evariable variable
iabbr Evans Evens
iabbr euser user
iabbr europ Europe
iabbr eurasia Eurasia
iabbr etop top
iabbr etner enter
iabbr eth the
iabbr ethernet Ethernet
iabbr etherenet Ethernet
iabbr estring string
iabbr essentialy essentially
iabbr espanssions expansions
iabbr esitimator estimator
iabbr esential essential
iabbr escreen screen
iabbr escapt escape
iabbr es6 ES6
iabbr errror error
iabbr errro error
iabbr erro error
iabbr erpresentaion representation
iabbr eror error
iabbr equivlents equivalents
iabbr equale equal
iabbr eps EPS
iabbr epalace palace
iabbr envv Environment Variables
iabbr environmet environment
iabbr environmen environment
iabbr envireonment environment
iabbr envirenment environment
iabbr envioroment environment
iabbr env ENV
iabbr entrie entire
iabbr entireley entirely
iabbr entier entire
iabbr enterprize enterprise
iabbr enteries entries
iabbr enterface interface
iabbr enlightning enlightening
iabbr english English
iabbr enginering engineering
iabbr enew new
iabbr ener enter
iabbr encapsulete encapsulate
iabbr encapsulae encapsulate
iabbr enalble enable
iabbr enalbes enables
iabbr emulateor emulator
iabbr emphaise emphasis
iabbr emost most
iabbr emlements elements
iabbr emebeded embedded
iabbr ember Ember
iabbr emali email
iabbr emacs Emacs
iabbr elsg else
iabbr elments elements
iabbr elment element
iabbr elmeent element
iabbr elmeennt element
iabbr eliptical elliptical
iabbr eles else
iabbr elemtn element
iabbr elemnts elements
iabbr elemntgs element's
iabbr elemnt element
iabbr elemnet element
iabbr elemnents elements
iabbr elementens element ens
iabbr elemengs elements
iabbr elemenet element
iabbr elememnt element
iabbr elelmnetn element
iabbr elelment element
iabbr elegible eligible
iabbr eleents elements
iabbr eleemnt element
iabbr eleement element
iabbr ele else
iabbr electoronic electronic
iabbr eithre either
iabbr einstein Einstein
iabbr eill will
iabbr eihter either
iabbr eht the
iabbr ehtml HTML
iabbr ehte the
iabbr eho who
iabbr ehave have
iabbr eg e.g.
iabbr efont font
iabbr effetctiev effective
iabbr effecgt effect
iabbr efect effect
iabbr eevent event
iabbr eelment element
iabbr eelemnet element
iabbr editror editor
iabbr editro editor
iabbr editin editing
iabbr editign editing
iabbr ediotr editor
iabbr ediging editing
iabbr edifference difference
iabbr edesigned designed
iabbr ecount count
iabbr ecossystem ecosystem
iabbr ecolor color
iabbr ecoh echo
iabbr ecncoded encoded
iabbr ecmascirpt ECMAScript
iabbr ecleoses encloses
iabbr eclare declare
iabbr ecexution execution
iabbr ecanvas canvas
iabbr eb be
iabbr eatch each
iabbr easyly easily
iabbr easeier easier
iabbr earss ears
iabbr earlisest earliest
iabbr earclier earlier
iabbr dynamiclly dynamically
iabbr dynamicaly dynamically
iabbr dynameic dynamic
iabbr dynaic dynamic
iabbr dwonload download
iabbr dwonlaod download
iabbr dw3m w3m
iabbr dvices devices
iabbr dvice device
iabbr duthch dutch
iabbr dut due
iabbr durin during
iabbr duratione duration
iabbr duraiton duration
iabbr dumsp dumps
iabbr dul 2>/dev/null
iabbr ducth duct
iabbr duble double
iabbr dtes dates
iabbr dtermines determines
iabbr dtat data
iabbr dtatbases databases
iabbr dta data
iabbr dsign design
iabbr driveing driving
iabbr drivefrs drivers
iabbr dring drink
iabbr dreturns returns
iabbr dreturn return
iabbr dpends depends
iabbr dpeak speak
iabbr downt down
iabbr doucument document
iabbr dosplay display
iabbr donwload download
iabbr donw down
iabbr dont don't
iabbr domstringmap DOMStringMap
iabbr dom DOM
iabbr doign doing
iabbr doi do I
iabbr doewn down
iabbr Doesnt doesn't
iabbr doesnt doesn't
iabbr doenst doesn't
iabbr dodnt didn't
iabbr documnet document
iabbr documment document
iabbr documetary documentary
iabbr documen document
iabbr dns DNS
iabbr dleted deleted
iabbr dleimiters delimiters
iabbr django Django
iabbr djacent adjacent
iabbr divverent different
iabbr ditergarai diperbarui
iabbr distrubution distribution
iabbr distor distro
iabbr distictive distinctive
iabbr dissapeear disappear
iabbr displayer displayed
iabbr dispalay display
iabbr disj disc
iabbr directyly directly
iabbr directy directly
iabbr directoyr directory
iabbr directoy Directory
iabbr directorys directory
iabbr directoryies directories
iabbr directory Directory
iabbr directoru Directory
iabbr directlye directly
iabbr direcrtory directory
iabbr direcrory directory
iabbr direcotry directory
iabbr direcory directory
iabbr direactory directory
iabbr dipute depute
iabbr dipslaying displaying
iabbr dipslay display
iabbr diplay display
iabbr dinnder dinner
iabbr dimentional dimensional
iabbr dimaspradana4478 disappearance
iabbr dimasksud dimaksud
iabbr dikalim diklaim
iabbr diguui digurui
iabbr difficutl difficult
iabbr differtent different
iabbr differten different
iabbr differnt different
iabbr differents different
iabbr differencitates differentiates
iabbr differenche difference
iabbr Differecne Difference
iabbr differecne difference
iabbr differece difference
iabbr diference difference
iabbr diea idea
iabbr didtn didn't
iabbr didnt didn't
iabbr dictionar dictionary
iabbr dibilanng dibilang
iabbr dhcp DHCP
iabbr devidces devices
iabbr devices device's
iabbr developmen development
iabbr developd developed
iabbr develeopment development
iabbr devce device
iabbr devault default
iabbr de the
iabbr determina determine
iabbr detectt detect
iabbr detais detail
iabbr despeickle despickle
iabbr desktop Desktop
iabbr desing design
iabbr descrptor descriptor
iabbr descripttive descriptive
iabbr descriptsionn description
iabbr descriibe describe
iabbr descentants descendants
iabbr descendatn descendant
iabbr depens depends
iabbr dependedn depended
iabbr dependecy dependency
iabbr dended ended
iabbr denagan dengan
iabbr democraicees democracies
iabbr democaracy democracy
iabbr delte delete
iabbr delimitery delimiters
iabbr delimit4r delimiter
iabbr deleter delete
iabbr delcared declared
iabbr dekstop desktop
iabbr degre degree
iabbr defived derived
iabbr definde defined
iabbr defices devices
iabbr defferent different
iabbr deffault default
iabbr defautl default
iabbr deevlopers developers
iabbr decrese decrees
iabbr decrement decrements
iabbr decodde decode
iabbr declareed declared
iabbr declaratino declaration
iabbr declaratiaon declaration
iabbr declaraiton Declaraiton
iabbr declaraation declaration
iabbr decieded decided
iabbr decenmber December
iabbr decalaration declaration
iabbr debian Debian
iabbr deadlinke deadline
iabbr datetiem datetime
iabbr databae database
iabbr dat3e date
iabbr dashboared dashboard
iabbr darkmde darkmode
iabbr dangef danger
iabbr dahs dash
iabbr daccesed accessed
iabbr cyclonejs CyclonJS
iabbr cutlere culture
iabbr custormer customer
iabbr custoers customers
iabbr custoamizatios customization
iabbr curucial crucial
iabbr currnet current
iabbr curretn current
iabbr currenty currently
iabbr current current
iabbr curren current
iabbr curetntly currently
iabbr curent current
iabbr curen current
iabbr cummand command
iabbr culter culture
iabbr csv CSV
iabbr csrf CSRF
iabbr croppiing cropping
iabbr creteria criteria
iabbr crete create
iabbr crestes creates
iabbr creationof creation of
iabbr creatingg creating
iabbr creatiion creation
iabbr createor creator
iabbr createing creating
iabbr creat create
iabbr Crearte Create
iabbr creaet create
iabbr crate create
iabbr craete create
iabbr craehting creating
iabbr cr3eate create
iabbr cpu CPU
iabbr cpacity capacity
iabbr coyp copy
iabbr coutnerh counters
iabbr coutner counter
iabbr coutn count
iabbr couse cause
iabbr countrey country
iabbr countdonw countdown
iabbr coulnt count
iabbr couldnt could't
iabbr cotnrol control
iabbr costco Costco
iabbr costatnt constant
iabbr corresoponding corresponding
iabbr cordova Cordova
iabbr coposite composite
iabbr copmuter computer
iabbr coordintae coordinate
iabbr cooose choose
iabbr coomand command
iabbr cookeis cookies
iabbr cooding coding
iabbr conviert convert
iabbr converson conversion
iabbr conventiosn conventions
iabbr conventins conventions
iabbr conttent content
iabbr contol control
iabbr contnent content
iabbr contiue continue
iabbr continous continuous
iabbr continoue continue
iabbr continou continua
iabbr continers containers
iabbr contians contains
iabbr contetn content
iabbr contente content
iabbr conten content
iabbr contemporrary contemporary
iabbr conteint content
iabbr conteent content
iabbr containts contains
iabbr containner container
iabbr containerfs containers
iabbr containder container
iabbr contaiener container
iabbr consumates consummates
iabbr constructr constructor
iabbr constructorr constructor
iabbr construcotr constructor
iabbr constractor constructor
iabbr constatnt constant
iabbr constartints constraints
iabbr constandt constant
iabbr consortioum consortium
iabbr consoel console
iabbr consition condition
iabbr consitent consistent
iabbr consita consist
iabbr consideresd considered
iabbr consciouts conscious
iabbr consciousnewss consciousness
iabbr conrect connect
iabbr conrairner container
iabbr conosle console
iabbr conntent content
iabbr connedctoin connection
iabbr conifirmation confirmation
iabbr conifig config
iabbr coniditoin condition
iabbr Congratulationo Congratulation
iabbr congainers containers
iabbr congainer container
iabbr confversion conversion
iabbr confucius Confucius
iabbr conformant conform ant
iabbr conformace conformance
iabbr conflic conflict
iabbr confinietn confinient
iabbr confim confirm
iabbr confilict conflict
iabbr configurain configuration
iabbr configruraation configuration
iabbr configruation configuration
iabbr confgiure configure
iabbr confert convert
iabbr conetent content
iabbr conentent content
iabbr conent content
iabbr conencted connected
iabbr conecrion connection
iabbr condventtions conventions
iabbr conditinoal conditional
iabbr condision condition
iabbr conde code
iabbr condcept concept
iabbr concurency concurrency
iabbr concespt concept
iabbr concepth concept
iabbr concatination concatenation
iabbr conatainer container
iabbr conatain contain
iabbr comuputer computer
iabbr comunna communal
iabbr comunity community
iabbr comunicates communicates
iabbr computre computer
iabbr compteiiton competition
iabbr comproisign comprising
iabbr comprimising compromising
iabbr composable compossable
iabbr composability compossability
iabbr componnet component
iabbr componnent component
iabbr componente component
iabbr componennt component
iabbr componenet component
iabbr componenent component
iabbr compnay company
iabbr complicance compliance
iabbr completyely completely
iabbr completino completing
iabbr completeley completely
iabbr complet complete
iabbr complaitn complaint
iabbr comphpanies companies
iabbr compay company
iabbr compatibel compatible
iabbr compasion compassion
iabbr comparisson comparison
iabbr compariason comparison
iabbr companty company
iabbr communincation communication
iabbr commonjs commonJS
iabbr commnets comments
iabbr commnet comment
iabbr commnd command
iabbr commnand command
iabbr commnad command
iabbr commited committed
iabbr commersial commercial
iabbr commbination combination
iabbr commane command
iabbr comman command
iabbr commadn command
iabbr comesback comeback
iabbr coment comment
iabbr comand command
iabbr comamnd command
iabbr colunm column
iabbr columnd column
iabbr coloseum Colosseum
iabbr coloor color
iabbr collow color
iabbr collectiono collection
iabbr collectioin collection
iabbr cojunt count
iabbr cofnlict conflict
iabbr coercioninside coercion inside
iabbr cobmos combos
iabbr cntainer container
iabbr cntain contain
iabbr cnn CNN
iabbr cna can
iabbr clossest closest
iabbr closign closing
iabbr cloesed closed
iabbr clipboeard clipboard
iabbr clinet client
iabbr cliking clicking
iabbr cliked clicked
iabbr cliek click
iabbr cli CLI
iabbr clicke click
iabbr clickde clicked
iabbr clebber clobber
iabbr cleansliness cleanliness
iabbr cleaniess cleanness
iabbr classs class
iabbr classe classes
iabbr classcified classified
iabbr claning cleaning
iabbr ckey key
iabbr civiliation civilization
iabbr citty city
iabbr cirle circle
iabbr cintainer container
iabbr choosen chosen
iabbr chooose choose
iabbr chooisng choosing
iabbr chnanged changed
iabbr chnages changes
iabbr chnage change
iabbr chinld child
iabbr chinese Chinese
iabbr chinas China's
iabbr china China
iabbr childe child
iabbr chian chain
iabbr cheries cherries
iabbr chekc check
iabbr cheebkbond cheekbone
iabbr checkinf checking
iabbr checkd checked
iabbr chatgpt ChatGPT
iabbr chatch catch
iabbr charteuse chanteuse
iabbr chareacter character
iabbr charat charAt
iabbr characther character
iabbr charactermode character mode
iabbr charachter character
iabbr changin changing
iabbr changeing changing
iabbr chAnge change
iabbr chaneg change
iabbr challange challenge
iabbr challagne challenge
iabbr challagen challenge
iabbr chagnge change
iabbr chagnet change
iabbr chagne change
iabbr chagen change
iabbr chage change
iabbr chabne change
iabbr chabge change
iabbr cfreate create
iabbr cereate create
iabbr cerate create
iabbr centrury century
iabbr celsl celsl
iabbr cellls cells
iabbr categorrized categorized
iabbr catd card
iabbr catanya caranya
iabbr catalouger cataloger
iabbr carrieage carriage
iabbr carret caret
iabbr caracter character
iabbr capitaal capital
iabbr capilatalize capitalize
iabbr caoused caused
iabbr cant can't
iabbr canonot cannot
iabbr cannonical canonical
iabbr cann can
iabbr cange change
iabbr camelcase CamelCase
iabbr cameara camera
iabbr callled called
iabbr callede called
iabbr caling calling
iabbr calcultor calculator
iabbr calbacks callbacks
iabbr cahllgages challanges
iabbr caceh cache
iabbr bweteen between
iabbr buttton button
iabbr buttermilke buttermilk
iabbr butotn button
iabbr buton button
iabbr bulding building
iabbr buitlin builtin
iabbr buitl built
iabbr builtins builtin
iabbr Builti Built
iabbr builign building
iabbr buddhism Buddhism
iabbr bubling bubbling
iabbr bsd BSD
iabbr brwowser browser
iabbr bruinei Brunei
iabbr brougth brought
iabbr broser browser
iabbr brittel brittle
iabbr british British
iabbr briatain Britain
iabbr breitish British
iabbr breifly briefly
iabbr breezeless breeze less
iabbr brancd brand
iabbr botom bottom
iabbr borneo Borneo
iabbr bootom bottom
iabbr bolld bold
iabbr boject object
iabbr bnen been
iabbr bnefits benefits
iabbr blure blur
iabbr bluetooth Bluetooth
iabbr bluepritn blueprint
iabbr blocsk blocks
iabbr blinnk blink
iabbr bleow below
iabbr blaue value
iabbr blackjack Blackjack
iabbr blaack black
iabbr bing Bing
iabbr binayr binary
iabbr binari binary
iabbr bigint BigInt
iabbr bidies bodies
iabbr bi be
iabbr beyon beyond
iabbr betwoeen between
iabbr betweein between
iabbr betweeen between
iabbr betwee between
iabbr bettwer better
iabbr bett4er better
iabbr beter better
iabbr berperngaruh berpengaruh
iabbr berkutat berkarat
iabbr beradasarkan berdasarkan
iabbr benjamin Benjamin
iabbr benefeits benefits
iabbr belive believe
iabbr beleiefes belief's
iabbr beiing being
iabbr beigin begin
iabbr behaviour behavior
iabbr begining beginning
iabbr beginign beginning
iabbr beginers beginners
iabbr beginer beginner
iabbr begginsers beginners
iabbr begginer beginner
iabbr befor before
iabbr befoer before
iabbr beegitu begitu
iabbr becuase because
iabbr becsouse because
iabbr becouse because
iabbr becoem become
iabbr bechmarking benchmarking
iabbr becasuse because
iabbr becasue because
iabbr becaseuse because
iabbr becase because
iabbr bcaause because
iabbr batt4ery battery
iabbr bationg bathing
iabbr basichs basics
iabbr bashic basic
iabbr bandwith bandwidth
iabbr bandung Bandung
iabbr bahea bahwa
iabbr badnwith bandwidth
iabbr backto back to
iabbr backpsace backspace
iabbr backgroudn background
iabbr backgourund background
iabbr backgorund background
iabbr backbone Backbone
iabbr bacany bacanya
iabbr bacanya bapanya
iabbr babby baby
iabbr ayre are
iabbr awesonme awesome
iabbr awati await
iabbr awater water
iabbr avter after
iabbr avodi avoid
iabbr avim Vim
iabbr avariables variables
iabbr avalilabel available
iabbr avaliable available
iabbr availabel available
iabbr aututst august
iabbr autoryti authority
iabbr automaticcaly automatically
iabbr automaticaly automatically
iabbr autohr author
iabbr australia Australia
iabbr austin Austin
iabbr aur AUR
iabbr audion audio
iabbr atuo atau
iabbr attriubute attribute
iabbr attriubures attributes
iabbr attriburte attribute
iabbr attribure attribute
iabbr attribbute attribute
iabbr attrbiute attribute
iabbr atrtributes attributes
iabbr atributte attribute
iabbr atchitecture architecture
iabbr ataou atau
iabbr Asychronous Asynchronous
iabbr assyria Assyria
iabbr assyra Assyria
iabbr asssignmenet assignment
iabbr assosciative associative
iabbr assinging assigning
iabbr assignmet assignment
iabbr assignmenet assignment
iabbr assignend assigned
iabbr assignement assignment
iabbr Assgnment Assignment
iabbr assgiined assigned
iabbr assembyl assembly
iabbr asnchronous asynchronous
iabbr asmaller smaller
iabbr asigned assigned
iabbr ashemed ashamed
iabbr asean ASEAN
iabbr ascii ASCII
iabbr ascces access
iabbr articel article
iabbr arsterisk asterisk
iabbr arry array
iabbr arrray array
iabbr arroudn around
iabbr arros arrows
iabbr aroung around
iabbr aroud around
iabbr arithmethic arithmetic
iabbr aristotles Aristotle's
iabbr aristoteles Aristotle's
iabbr argumets arguments
iabbr argumetn argument
iabbr argument Argument
iabbr argumenet argument
iabbr argumant argument
iabbr argumaet argument
iabbr arguent argument
iabbr arethmatic arithmetic
iabbr areound around
iabbr arent aren't
iabbr archieve achieve
iabbr archeology archaeology
iabbr aray array
iabbr aratio ratio
iabbr ar are
iabbr arabic Arabic
iabbr apsp apps
iabbr aprop prop
iabbr apreciated appreciated
iabbr appoririate appropriate
iabbr applised apprised
iabbr applicatoin application
iabbr applicaiton application
iabbr appleication application
iabbr appication application
iabbr apperars appears
iabbr apperantly apparently
iabbr appera appear
iabbr appendchild appendChild
iabbr appedns appends
iabbr aply apply
iabbr apis APIs
iabbr apiril April
iabbr api API
iabbr apge page
iabbr aperthei apartheid
iabbr apera appear
iabbr apend append
iabbr apear appear
iabbr apckage package
iabbr apaplication application
iabbr apache Apache
iabbr aournd around
iabbr aoperaotor operator
iabbr anywhre anywhere
iabbr anyting anything
iabbr anythihng anything
iabbr anythign anything
iabbr antio nation
iabbr answre answer
iabbr answere answer
iabbr ansi ANSI
iabbr ansd and
iabbr anoying annoying
iabbr anothere another
iabbr anothe another
iabbr anoter another
iabbr anotehr another
iabbr anoteher another
iabbr anohter another
iabbr anny any
iabbr annimation animation
iabbr annd and
iabbr anme name
iabbr animatino animation
iabbr animamte animate
iabbr anhy any
iabbr angularjs AngularJS
iabbr ane and
iabbr andwer answer
iabbr android Android
iabbr andn and
iabbr anderstand understand
iabbr anceient ancient
iabbr amtrix matrix
iabbr amreicans Americans
iabbr amont among
iabbr amon among
iabbr amke make
iabbr amil mail
iabbr america America
iabbr amenalbe amenable
iabbr amattresses mattresses
iabbr amaka maka
iabbr alwyas always
iabbr alwsys always
iabbr alwasy always
iabbr altoogether altogether
iabbr alternatvies alternatives
iabbr alternativeley alternatively
iabbr alsert alert
iabbr alse also
iabbr alowing allowing
iabbr aloso also
iabbr aloiwn allowing
iabbr alocate allocate
iabbr alnalyze analyze
iabbr allwah Allah
iabbr allowd allows
iabbr alllow allow
iabbr alll all
iabbr allignment alignment
iabbr allign align
iabbr alliaxe Allliance
iabbr allah Allah SWT
iabbr aliasses aliases
iabbr alfabet alphabet
iabbr alements aliments
iabbr albert Albert
iabbr akunbarudanzor unburdens
iabbr aksk ask
iabbr ake take
iabbr airbnb Airbnb
iabbr ai I
iabbr ahve have
iabbr aht that
iabbr ahs has
iabbr ahd add
iabbr agian again
iabbr aggresively aggressively
iabbr agge age
iabbr aggain again
iabbr agaoin again
iabbr againe again
iabbr afternoon Afternoon
iabbr aftern after
iabbr affectionaly affectionaly
iabbr afater after
iabbr aer are
iabbr aempty empty
iabbr ae are
iabbr advantagge advantage
iabbr adress address
iabbr adnroid android
iabbr adn and
iabbr administor administer
iabbr adfantages advantages
iabbr adeueduct aqueduct
iabbr addres address
iabbr addr3ess address
iabbr addd add
iabbr adala adalah
iabbr adadnya adanya
iabbr actualy actually
iabbr actoualy actually
iabbr activ active
iabbr acssible ansible
iabbr acrual actual
iabbr acrion action
iabbr acpi ACPI
iabbr acessed accessed
iabbr acess acess
iabbr acdounts accounts
iabbr accros across
iabbr accronym acronym
iabbr accoutn account
iabbr accomodat accommodate
iabbr accidently accidentally
iabbr accetp accept
iabbr accetntuate accentuate
iabbr accest access
iabbr accesss access
iabbr accesing accessing
iabbr accesiblity accessibility
iabbr accesible accessible
iabbr accesibility accessibility
iabbr accesed accessed
iabbr accesbility accessibility
iabbr acces access
iabbr accepth accept
iabbr acccess access
iabbr abslute absolute
iabbr abscne absence
iabbr abraham Abraham
iabbr abouit about
iabbr abou about
iabbr aboout about
iabbr aboiut about
iabbr aboev above
iabbr aboeeve above
iabbr abobve above
iabbr abbrevieate abbreviate
iabbr aarray array
iabbr aare are
iabbr 64bit 64-bit
iabbr 3secon second
cabbr t term
cabbr mason Mason
cabbr man Man
cabbr lspinfo Lspinfo
cabbr lsit list
cabbr lazy Lazy
cabbr fidn find
cabbr fdin find
cabbr epo e /home/dandi/.config/nvim/lua/dandi/abbrev/typos.lua
cabbr ego e /home/dandi/.config/nvim/lua/dandi/abbrev/go.lua
cabbr ewq wq
cabbr sex Sexplore
cabbr bahs bash
cabbr rex Rexplore
cabbr waq wqa!
cabbr bd bd!
cabbr bdm bd!
cabbr ifn fin
cabbr ew wq
cabbr qam qa
cabbr ex Ex
cabbr w w!
cabbr qm q!
cabbr qw wq
cabbr hg helpgrep
cabbr wqa wqa!
cabbr wqm wq
cabbr q q!
cabbr qq q!
cabbr qa qa!
cabbr wq wq!
cabbr fzf FZF
cabbr n norm
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backupdir=~/.cache/vim/backup//
set complete=.,b
set completeopt=fuzzy
set directory=~/.cache/vim/swap//
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set grepprg=fd\ -t\ file\ -0\ -H\ --search-path=.\\|xargs\ -0\ grep\ -n
set helplang=en
set hidden
set ignorecase
set incsearch
set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~,=,@-@
set nojoinspaces
set listchars=tab:→\ ,eol:↲
set nomore
set omnifunc=syntaxcomplete#Complete
set path=.,/usr/include,,,**
set ruler
set runtimepath=~/.vim,~/.vim/plugged/vim-commentary,~/.vim/plugged/fzf,~/.vim/plugged/fzf.vim,~/.vim/plugged/vim-titlecase,~/.vim/plugged/vifm.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim91,/usr/share/vim/vimfiles/after,~/.vim/after
set shiftwidth=4
set smartcase
set smartindent
set softtabstop=4
set spelllang=en_us
set splitright
set suffixes=.bak,~,.o,.info,.swp,.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set tabpagemax=5
set tabstop=4
set undodir=~/.vim/undodir
set undofile
set updatetime=50
set visualbell
set wildignore=*.exe,*.dll,*.pdb,.*.o,*.obj
set wildignorecase
set wildmenu
set wildmode=list:longest,full
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.vim/init/singkatan
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +36 ~/repos/github.com/yuandandi/learn/lbootstrap/fcc/utilities/utilities.html
badd +1 ~/.vim/init/singkatan/html.vimrc
argglobal
%argdel
edit ~/repos/github.com/yuandandi/learn/lbootstrap/fcc/utilities/utilities.html
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 63 + 64) / 128)
exe 'vert 2resize ' . ((&columns * 64 + 64) / 128)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <C-G>p ?>
inoremap <buffer> <C-G>n />
inoremap <buffer> <C-G>< d/<
inoremap <buffer> <C-G>> ct>
inoremap <buffer> <C-B> ?>i
nnoremap <buffer> ge _f>w~:w
nnoremap <buffer> gca A <!-- --><Left><Left><Left>
nnoremap <buffer> o :wo
inoremap <buffer>  ?>i
inoremap <buffer> p ?>
inoremap <buffer> n />
inoremap <buffer> < d/<
inoremap <buffer> > ct>
iabbr <buffer> reunp <script crossorigin src="https://unpkg.com/react@18/umd/react.development.js"></script><script crossorigin src="https://unpkg.com/react-dom@18/umd/react-dom.development.js"></script>
iabbr <buffer> dbl d-block
iabbr <buffer> dxlb d-xl-block
iabbr <buffer> dlgn d-lg-none
iabbr <buffer> dlgb d-lg-block
iabbr <buffer> dmdn d-md-none
iabbr <buffer> dmdb d-md-block
iabbr <buffer> dsmn d-sm-none
iabbr <buffer> dsmb d-sm-block
iabbr <buffer> dno d-none
iabbr <buffer> wau w-auto
iabbr <buffer> rsm rounded-sm
iabbr <buffer> rlg rounded-lg
iabbr <buffer> rou rounded
iabbr <buffer> ifl img-fluid
iabbr <buffer> con container
iabbr <buffer> lun list-unstyled
iabbr <buffer> init initialism
iabbr <buffer> bfo blockquote-footer
iabbr <buffer> bl blockquote
iabbr <buffer> tce text-center
iabbr <buffer> bwa bg-warning
iabbr <buffer> bli bg-light
iabbr <buffer> bin bg-info
iabbr <buffer> bdar bg-dark
iabbr <buffer> bdan bg-danger
iabbr <buffer> bsu bg-success
iabbr <buffer> bse bg-secondary
iabbr <buffer> bpr bg-primary
iabbr <buffer> tda text-dark
iabbr <buffer> twh text-white
iabbr <buffer> tmu text-muted
iabbr <buffer> cti card-title
iabbr <buffer> cte card-text
iabbr <buffer> csu card-subtitle
iabbr <buffer> cbo card-body
iabbr <buffer> cib card-image-bottom
iabbr <buffer> mau mx-auto
iabbr <buffer> jcc justify-content-center
iabbr <buffer> c col-
iabbr <buffer> co container-
iabbr <buffer> bt btn-
iabbr <buffer> bor border
iabbr <buffer> dis diable
iabbr <buffer> scpboot <linkhref="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"rel="stylesheet"integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"crossorigin="anonymous"/><!-- {{{ Script--><script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"crossorigin="anonymous"></script><!-- }}} -->
iabbr <buffer> snboot <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.css"><script src="node_modules/bootstrap/dist/js/bootstrap.js"></script>
iabbr <buffer> sdboot <link rel="stylesheet" type="text/css" href="css/bootstrap.css" /><script src="js/bootstrap.js"></script>
iabbr <buffer> scboot <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
iabbr <buffer> wid width=""<Left>
iabbr <buffer> val value=""<Left>
iabbr <buffer> typ type=""<Left>
iabbr <buffer> ti title=""<Left>
iabbr <buffer> tar target=""<Left>
iabbr <buffer> tarb target="_blank"
iabbr <buffer> st style=""<Left>
iabbr <buffer> sta station=""<Left>
iabbr <buffer> star start=""<Left>
iabbr <buffer> sreact <script crossorigin src="https://unpkg.com/react@18/umd/react.development.js"></script><script crossorigin src="https://unpkg.com/react-dom@18/umd/react-dom.development.js"></script><script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>
iabbr <buffer> src src=""<Left>
iabbr <buffer> srcl srclang=""<Left>
iabbr <buffer> seta setAttribute();<Left><Left>
iabbr <buffer> rel rel=""<Left>
iabbr <buffer> pla placeholder=""<Left>
iabbr <buffer> onc onclick=""<Left>
iabbr <buffer> nam name=""<Left>
iabbr <buffer> min min=""<Left>
iabbr <buffer> meth method=""<Left>
iabbr <buffer> maxx max=""<Left>
iabbr <buffer> maxl maxlength=""<Left>
iabbr <buffer> lang lang=""<Left>
iabbr <buffer> labb label=""<Left>
iabbr <buffer> kin kind=""<Left>
iabbr <buffer> inte integrity=""<Left>
iabbr <buffer> idd id=""<Left>
iabbr <buffer> ic <i class=""></i>F"i
iabbr <buffer> hre href=""<Left>
iabbr <buffer> heq http-equiv=""<Left>
iabbr <buffer> hei height=""<Left>
iabbr <buffer> heade <header></header>cit
iabbr <buffer> forr for=""<Left>
iabbr <buffer> dto data-tooltip=""<Left>
iabbr <buffer> dir dir=""<Left>
iabbr <buffer> datet datetime=""<Left>
iabbr <buffer> dataa data=""<Left>
iabbr <buffer> cro crossorigin=""<Left>
iabbr <buffer> contr controls
iabbr <buffer> condw content="width=device-width, initial-scale=1"
iabbr <buffer> conte content=""<Left>
iabbr <buffer> cols cols=""<Left>
iabbr <buffer> cl class=""<Left>
iabbr <buffer> cit card-image-top
iabbr <buffer> cha charset=""<Left>
iabbr <buffer> acti action=""<Left>
iabbr <buffer> gugel https://google.com/
iabbr <buffer> rev reversed
iabbr <buffer> quo &#10077;&#10078;F;a
iabbr <buffer> ofs offscreen
iabbr <buffer> navv nav
iabbr <buffer> mut muted
iabbr <buffer> lors Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.
iabbr <buffer> lorp Lorem ipsum dolor sit amet, officia excepteur ex fugiat reprehenderit enim labore culpa sint ad nisi Lorem pariatur mollit ex esse exercitation amet. Nisi anim cupidatat excepteur officia. Reprehenderit nostrud nostrud ipsum Lorem est aliquip amet voluptate voluptate dolor minim nulla est proident. Nostrud officia pariatur ut officia. Sit irure elit esse ea nulla sunt ex occaecat reprehenderit commodo officia dolor Lorem duis laboris cupidatat officia voluptate. Culpa proident adipisicing id nulla nisi laboris ex in Lorem sunt duis officia eiusmod. Aliqua reprehenderit commodo ex non excepteur duis sunt velit enim. Voluptate laboris sint cupidatat ullamco ut ea consectetur et est culpa et culpa duis.
iabbr <buffer> jss js
iabbr <buffer> hypen &#8221; &#8212;
iabbr <buffer> cpr Copyright (c) 2023 Dandi. All Rights Reserved.
iabbr <buffer> mod module
iabbr <buffer> loo loop
iabbr <buffer> che checkbox
iabbr <buffer> blan _blank
iabbr <buffer> aut autoplay
iabbr <buffer> def defer
iabbr <buffer> vid <video width="" height="" controls=""></video>5F"i
iabbr <buffer> var <var></var>cit
iabbr <buffer> uu <u></u>cit
iabbr <buffer> ul <ul></ul>cit
iabbr <buffer> ulia <ul class=""><li><a href="#" class=""></a></li></ul>kkkkci"
iabbr <buffer> tr <tr></tr>cit
iabbr <buffer> tra <track src="" kind="" srclang="" label="">7F"i
iabbr <buffer> nav <nav></nav>O
iabbr <buffer> tit <title></title>O
iabbr <buffer> tim <time datetime=""></time>F"i
iabbr <buffer> th <th></th>cit
iabbr <buffer> thea <thead></thead>O
iabbr <buffer> tfo <tfoot></tfoot>O
iabbr <buffer> tex <textarea rows="" cols=""></textarea>3F"i
iabbr <buffer> td <td></td>cit
iabbr <buffer> tbo <tbody></tbody>O
iabbr <buffer> tab <table></table>cit
iabbr <buffer> sup <sup></sup>cit
iabbr <buffer> sum <summary></summary>cit
iabbr <buffer> sub <sub></sub>cit
iabbr <buffer> stys stylesheet
iabbr <buffer> sty <style></style>O
iabbr <buffer> str <strong></strong>cit
iabbr <buffer> ss <s></s>cit
iabbr <buffer> spa <span></span>cit
iabbr <buffer> sou <source src="" type="">3F"i
iabbr <buffer> sma <small></small>cit
iabbr <buffer> sel <select></select>O
iabbr <buffer> sec <section></section>cit
iabbr <buffer> scr <script></script>F>i src=""<Left>
iabbr <buffer> sam <samp></samp>cit
iabbr <buffer> rub <ruby></ruby>cit
iabbr <buffer> rt <rt></rt>cit
iabbr <buffer> rp <rp></rp>cit
iabbr <buffer> q <q></q>cit
iabbr <buffer> prog <progress value="" max=""></progress>3F"i
iabbr <buffer> pre <pre></pre>cit
iabbr <buffer> p <p></p>cit
iabbr <buffer> par <param name="" value="">3F"i
iabbr <buffer> outp <output name="" for=""></output>?" fori
iabbr <buffer> opt <option value=""></option>?">i
iabbr <buffer> optg <optgroup></optgroup>O
iabbr <buffer> ol <ol></ol>O
iabbr <buffer> obj <object width="" height="" data=""></object>?" heii
iabbr <buffer> nos <noscript></noscript>cit
iabbr <buffer> na <nav></nav>cit
iabbr <buffer> mete <meter value=""></meter>?">i
iabbr <buffer> meta <meta name="" content="">0ci"
iabbr <buffer> menuu <menu></menu>cit
iabbr <buffer> menui <menuitem></menuitem>cit
iabbr <buffer> mar <mark></mark>cit
iabbr <buffer> map <map name=""></map>?">i
iabbr <buffer> mai <main></main>cit
iabbr <buffer> lin <link rel="" href="">?" hrei
iabbr <buffer> li <li></li>cit
iabbr <buffer> lege <legend></legend>cit
iabbr <buffer> labe <label for=""></label>?"i
iabbr <buffer> keyg <keygen name="">F"i
iabbr <buffer> kbd <kbd></kbd>cit
iabbr <buffer> inp <input type="" name="" value="" />?" nami
iabbr <buffer> imgg <img src="" alt="" />?" ali
iabbr <buffer> ii <i></i>cit
iabbr <buffer> ifr <iframe src=""></iframe>?"i
iabbr <buffer> htm <html></html>O
iabbr <buffer> hr <hr>
iabbr <buffer> hgr <hgroup></hgroup>O
iabbr <buffer> hea <head></head>cit
iabbr <buffer> h6 <h6></h6>cit
iabbr <buffer> h5 <h5></h5>cit
iabbr <buffer> h4 <h4></h4>cit
iabbr <buffer> h3 <h3></h3>cit
iabbr <buffer> h2 <h2></h2>cit
iabbr <buffer> h1 <h1></h1>cit
iabbr <buffer> formm <form></form>cit
iabbr <buffer> foot <footer></footer>cit
iabbr <buffer> fig <figure></figure>cit
iabbr <buffer> figc <figcaption></figcaption>cit
iabbr <buffer> fie <fieldset></fieldset>O
iabbr <buffer> em <em></em>cit
iabbr <buffer> emb <embed src=""></embed>?">i
iabbr <buffer> dt <dt></dt>cit
iabbr <buffer> doc <!DOCTYPE>
iabbr <buffer> div <div></div>cit
iabbr <buffer> divci <div class="" id=""></div>?" idi
iabbr <buffer> divc <div class=""></div>?"i
iabbr <buffer> dial <dialog></dialog>O
iabbr <buffer> dfn <dfn></dfn>cit
iabbr <buffer> det <details></details>O
iabbr <buffer> del <del class=""></del>?">i
iabbr <buffer> dd <dd></dd>cit
iabbr <buffer> datal <datalist></datalist>O
iabbr <buffer> coll <col>
iabbr <buffer> cod <code></code>cit
iabbr <buffer> cite <cite></cite>cit
iabbr <buffer> cen <center></center>cit
iabbr <buffer> cap <caption></caption>cit
iabbr <buffer> canv <canvas id=""></canvas>F"i
iabbr <buffer> butto <button></button>cit
iabbr <buffer> br <br>
iabbr <buffer> bod <body></body>gO
iabbr <buffer> blo <blockquote cite=""></blockquote>?">
iabbr <buffer> bi <big></big>cit
iabbr <buffer> bdo <bdo dir=""></bdo>?">
iabbr <buffer> bdi <bdi></bdi>cit
iabbr <buffer> b <b></b>cit
iabbr <buffer> bas <base href="" target="">
iabbr <buffer> aud <audio controls></audio>
iabbr <buffer> asi <aside></aside>cit
iabbr <buffer> arti <article></article>O
iabbr <buffer> areaa <area shape="" coords="" href="" alt="">" co
iabbr <buffer> ah <a href=""></a>?">i
iabbr <buffer> addr <address></address>O
iabbr <buffer> abb <abbr title=""></abbr>?"i
iabbr <buffer> !!! <!DOCTYPE html><html lang="en"><head><meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>document</title><link rel="stylesheet" type="text/css" href="styles.css" /></head><body></body></html>
iabbr <buffer> fonrobo <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
iabbr <buffer> fonpo <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap">
iabbr <buffer> fonmi <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
iabbr <buffer> fonaw <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--\ %s\ -->
setlocal complete=.,b,k/home/danzor/.vim/init/singkatan/htmlcomp
setlocal completefunc=
setlocal completeopt=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'html'
setlocal filetype=html
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=10
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcq
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'html'
setlocal syntax=html
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=120
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 36 - ((20 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 36
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/.vim/init/singkatan/html.vimrc", ":p")) | buffer ~/.vim/init/singkatan/html.vimrc | else | edit ~/.vim/init/singkatan/html.vimrc | endif
balt ~/repos/github.com/yuandandi/learn/lbootstrap/fcc/utilities/utilities.html
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|\(export\s\+\)\?def\)\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*end\(f\%[unction]\|\(export\s\+\)\?def\)\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|\(export\s\+\)\?def\)\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*\(fu\%[nction]\|\(export\s\+\)\?def\)\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('\%(^\s*".*\n\)\@<!\%(^\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('\%(^\s*".*\n\)\@<!\%(^\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|\(export\s\+\)\?def\)\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*end\(f\%[unction]\|\(export\s\+\)\?def\)\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|\(export\s\+\)\?def\)\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*\(fu\%[nction]\|\(export\s\+\)\?def\)\>', "W")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:#\ -,mO:#\ \ ,eO:##,:#\\\ ,:#,sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"\\\ ,:\"
setlocal commentstring=\"%s
setlocal complete=.,b
setlocal completefunc=
setlocal completeopt=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=\\v^\\s*export\\s*(def|const|var|final)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=10
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=croql
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=\\v^\\s*import\\s*(autoload)?
setlocal includeexpr=
setlocal indentexpr=g:VimIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=endif,=enddef,=endfu,=endfor,=endwh,=endtry,=endclass,=endinterface,=endenum,=},=else,=cat,=finall,=END,0\\,0=\"\\\ ,0=#\\\ 
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=:help
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
230
normal! zo
240
normal! zo
247
normal! zo
let s:l = 232 - ((231 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 232
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 63 + 64) / 128)
exe 'vert 2resize ' . ((&columns * 64 + 64) / 128)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
set shortmess=filnxtToOS
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
