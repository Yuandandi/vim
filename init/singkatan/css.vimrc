" {{{ set

au filetype css setl fdm=syntax
au filetype css setl cpt=.,b,k/home/danzor/.vim/init/singkatan/csscomp
au filetype css setl dict=~/completion/colors

" }}}
"{{{ Remap

au filetype css nn <buffer> 0 :w<cr>0
au filetype css nn <buffer> gca A<space>/*  */<left><left><left>
au filetype css nn <buffer> o :w<cr>o;<left>
au filetype css nn <buffer> <F9> :!echo <c-r><c-w> >> /home/danzor/.vim/init/singkatan/csscomp<cr>
au filetype css iu z-
au filetype css ino <expr> <C-L>b "::before"
au filetype css ino <expr> <C-L>a "::after"

"}}}
" {{{ Import

au filetype css ia <buffer> robo @import url('https://fonts.googleapis.com/css2?family=roboto&display=swap');

" }}}
" {{{ CSS Properties

au filetype css ia <buffer> aco align-content:
            \| ia <buffer> acol accent-color:
            \| ia <buffer> ait align-items:
            \| ia <buffer> bbe break-before:
            \| ia <buffer> bblr border-bottom-left-radius:
            \| ia <buffer> bbo border-box
            \| ia <buffer> bbot border-bottom:
            \| ia <buffer> bbrr border-bottom-right-radius:
            \| ia <buffer> bbs border-bottom-style:
            \| ia <buffer> bcol border-color:
            \| ia <buffer> bin break-inside:
            \| ia <buffer> ble border-left:
            \| ia <buffer> bls border-left-style:
            \| ia <buffer> boco border-collapse:
            \| ia <buffer> bor border:
            \| ia <buffer> bot bottom:
            \| ia <buffer> bra border-radius:
            \| ia <buffer> bri border-right:
            \| ia <buffer> brs border-right-style:
            \| ia <buffer> bsh box-shadow:
            \| ia <buffer> bsi box-sizing:
            \| ia <buffer> bst border-style:
            \| ia <buffer> btlr border-top-left-radius:
            \| ia <buffer> bto border-top:
            \| ia <buffer> btrr border-top-right-radius:
            \| ia <buffer> bwi border-width:
            \| ia <buffer> capi text-transform: capitalize;
            \| ia <buffer> cco column-count:
            \| ia <buffer> cle clear:
            \| ia <buffer> col color:
            \| ia <buffer> colu columns:
            \| ia <buffer> conte content:
            \| ia <buffer> cru column-rule:
            \| ia <buffer> csp column-span:
            \| ia <buffer> cur cursor:
            \| ia <buffer> dis display:
            \| ia <buffer> fba flex-basis:
            \| ia <buffer> fdi flex-direction:
            \| ia <buffer> ffa font-family:
            \| ia <buffer> ffl flex-flow:
            \| ia <buffer> fgro flex-grow:
            \| ia <buffer> fil filter:
            \| ia <buffer> flo float:
            \| ia <buffer> fofa @font-face {<cr>font-family: "";<cr>src: url('') format();<cr>}<esc>kkci"
            \| ia <buffer> fon font:
            \| ia <buffer> fsh flex-shrink:
            \| ia <buffer> fsi font-size:
            \| ia <buffer> fst font-style:
            \| ia <buffer> fwe font-weight:
            \| ia <buffer> fwr flex-wrap:
            \| ia <buffer> gaf grid-auto-flow:
            \| ia <buffer> gare grid-area:
            \| ia <buffer> gar grid-auto-rows:
            \| ia <buffer> gce grid-column-end:
            \| ia <buffer> gco grid-column:
            \| ia <buffer> gcs grid-column-start:
            \| ia <buffer> gre grid-column-end:
            \| ia <buffer> gro grid-row:
            \| ia <buffer> grs grid-column-start:
            \| ia <buffer> gta gtid-template-areas:
            \| ia <buffer> gtc grid-template-columns:
            \| ia <buffer> gtr grid-template-rows:
            \| ia <buffer> hei height:
            \| ia <buffer> jco justify-content:
            \| ia <buffer> jse justify-self:
            \| ia <buffer> lhe line-height:
            \| ia <buffer> lsi list-style-image:
            \| ia <buffer> ls list-style:
            \| ia <buffer> lsp letter-spacing:
            \| ia <buffer> lspo list-style-position:
            \| ia <buffer> lst list-style-type:
            \| ia <buffer> mara min-aspect-ratio:
            \| ia <buffer> mar margin:
            \| ia <buffer> mbo margin-bottom:
            \| ia <buffer> mhei max-height:
            \| ia <buffer> mhe min-height:
            \| ia <buffer> min margin-inline:
            \| ia <buffer> mle margin-left:
            \| ia <buffer> mri margin-right:
            \| ia <buffer> mto margin-top:
            \| ia <buffer> oli outline:
            \| ia <buffer> oof outline-offset:
            \| ia <buffer> opa opacity:
            \| ia <buffer> ord order:
            \| ia <buffer> ost outline-style:
            \| ia <buffer> pad padding:
            \| ia <buffer> pbl padding-block:
            \| ia <buffer> pbo padding-bottom:
            \| ia <buffer> pco place-content:
            \| ia <buffer> pit place-items:
            \| ia <buffer> ple padding-left:
            \| ia <buffer> pos position:
            \| ia <buffer> pri padding-right:
            \| ia <buffer> pto padding-top:
            \| ia <buffer> rig right:
            \| ia <buffer> sbe scroll-behaviour:
            \| ia <buffer> smt scroll-margin-top:
            \| ia <buffer> tal text-align:
            \| ia <buffer> tdc text-decoration-color:
            \| ia <buffer> tdel transition-delay:
            \| ia <buffer> tde text-decoration:
            \| ia <buffer> tdl text-decoration-line:
            \| ia <buffer> tds text-decoration-style:
            \| ia <buffer> tdt text-decoration-thickness:
            \| ia <buffer> tdu transition-duration:
            \| ia <buffer> tin text-indent:
            \| ia <buffer> ton transition:
            \| ia <buffer> tor transform-origin:
            \| ia <buffer> tpr transition-property:
            \| ia <buffer> trans transition:
            \| ia <buffer> tsh text-shadow:
            \| ia <buffer> ttf transition-timing-function:
            \| ia <buffer> ttra text-transform:
            \| ia <buffer> uper text-transform: uppercase;
            \| ia <buffer> vis visibility:
            \| ia <buffer> wid width:
            \| ia <buffer> wspa white-space:
            \| ia <buffer> wsp word-spacing:
            \| ia <buffer> zin z-index:

au filetype css ia <buffer> af after
            \| ia <buffer> abs absolute
            \| ia <buffer> ali aliceblue
            \| ia <buffer> any a:any-link
            \| ia <buffer> ber bolder
            \| ia <buffer> bol bold
            \| ia <buffer> bou bounce
            \| ia <buffer> cap capitalize
            \| ia <buffer> cbo content-box
            \| ia <buffer> cen center
            \| ia <buffer> cir circle
            \| ia <buffer> cne courier new
            \| ia <buffer> cor cornflowerblue
            \| ia <buffer> cou courier
            \| ia <buffer> cov cover
            \| ia <buffer> cre column-reverse
            \| ia <buffer> das dashed
            \| ia <buffer> disc disc
            \| ia <buffer> dlz decimal-leading-zero
            \| ia <buffer> dod dodgerblue
            \| ia <buffer> dot dotted
            \| ia <buffer> dou double
            \| ia <buffer> eas ease
            \| ia <buffer> eio ease-in-out
            \| ia <buffer> fan fantasy
            \| ia <buffer> fen flex-end
            \| ia <buffer> fir firebrick
            \| ia <buffer> fix fixed
            \| ia <buffer> fle flex
            \| ia <buffer> forw forwards
            \| ia <buffer> fro flow-root
            \| ia <buffer> fsta flex-start
            \| ia <buffer> gen Geneva
            \| ia <buffer> gro groove
            \| ia <buffer> hel helvatica
            \| ia <buffer> hid hidden
            \| ia <buffer> imp !important
            \| ia <buffer> inh inherit
            \| ia <buffer> ini initial
            \| ia <buffer> ins inset
            \| ia <buffer> ita italic
            \| ia <buffer> jus justify
            \| ia <buffer> kfr @keyframes
            \| ia <buffer> kfrs @keyframes {<cr>0% {<cr>}<cr>100% {<cr>}<cr>}<esc>kkkO
            \| ia <buffer> lal lower-alpha
            \| ia <buffer> lch :last-child
            \| ia <buffer> lef left
            \| ia <buffer> lig lighter
            \| ia <buffer> lim limegreen
            \| ia <buffer> line linear
            \| ia <buffer> lowe lowercase
            \| ia <buffer> lth line-through
            \| ia <buffer> mon monospace
            \| ia <buffer> msb mediumslateblue
            \| ia <buffer> nal not-allowed
            \| ia <buffer> non none
            \| ia <buffer> nor normal
            \| ia <buffer> now nowrap
            \| ia <buffer> nre no-repeat
            \| ia <buffer> obl oblique
            \| ia <buffer> outs outset
            \| ia <buffer> ove overline
            \| ia <buffer> pap papayawhip
            \| ia <buffer> png png
            \| ia <buffer> poi pointer
            \| ia <buffer> pur purple
            \| ia <buffer> q <q><q><esc>cit
            \| ia <buffer> rel relative
            \| ia <buffer> res /* Universal Box-sizing; */<cr>* *::before *::after {<cr>    box-sizing: border-box; /* include the border and padding size into div calculation so the width and height is the actuall size of your div*/<cr><cr>}<cr>/* Css Reset */<cr>* {<cr>    margin: 0;<cr>    padding: 0;<cr>}
            \| ia <buffer> rid ridge
            \| ia <buffer> sar space-around
            \| ia <buffer> sbet space-between
            \| ia <buffer> scr screen
            \| ia <buffer> ser serif
            \| ia <buffer> sev space-evenly
            \| ia <buffer> smo smooth
            \| ia <buffer> sol solid
            \| ia <buffer> squ square
            \| ia <buffer> sta static
            \| ia <buffer> ste steelblue
            \| ia <buffer> sti sticky
            \| ia <buffer> str stretch
            \| ia <buffer> tah Tahoma
            \| ia <buffer> tnt transparent
            \| ia <buffer> top top
            \| ia <buffer> und underline
            \| ia <buffer> upp uppercase
            \| ia <buffer> uro upper-roman
            \| ia <buffer> val vertical-align:
            \| ia <buffer> ver Verdana
            \| ia <buffer> wsm whitesmoke

" }}}
" {{{ Values

au filetype css ia <buffer> tri to right
            \| ia <buffer> tle to left
            \| ia <buffer> tbr to bottom right
            \| ia <buffer> tbl to bottom left
            \| ia <buffer> ttri to top right
            \| ia <buffer> ttl to top left

" }}}
"{{{ pseudo element

au filetype css ia <buffer> ho hover
            \| ia <buffer> fo focus
            \| ia <buffer> bef before
            \| ia <buffer> vi visited
            \| ia <buffer> no not
            \| ia <buffer> fc first-child
            \| ia <buffer> inp input
            \| ia <buffer> ch checked
            \| ia <buffer> lc last-child

"}}}
"{{{ Function

au filetype css ia <buffer> lgr linear-gradient()<left>
            \| ia <buffer> blu blur()<left>
            \| ia <buffer> brig brightness()<left>
            \| ia <buffer> cal calc()<left>
            \| ia <buffer> cla clamp()<left>
            \| ia <buffer> contr contrast()<left>
            \| ia <buffer> dsh drop-shadow()<left>
            \| ia <buffer> gra grayscale()<left>
            \| ia <buffer> hro hue-rotate(deg)<left><left><left><left>
            \| ia <buffer> hsla hsla()<left>
            \| ia <buffer> inv invert()<left>
            \| ia <buffer> iss :is()<left>
            \| ia <buffer> max max()<left>
            \| ia <buffer> minn min()<left>
            \| ia <buffer> nch nth-child()<left>
            \| ia <buffer> nty nth-of-type()<left>
            \| ia <buffer> opaa opacity()<left>
            \| ia <buffer> rep repeat()<left>
            \| ia <buffer> rgba rgba()<left>
            \| ia <buffer> rgb rgb()<left>
            \| ia <buffer> rgr radial-gradient()<left>
            \| ia <buffer> rot rotate()<left>
            \| ia <buffer> rox rotateX()<left>
            \| ia <buffer> roy rotateY()<left>
            \| ia <buffer> roz rotateZ()<left>
            \| ia <buffer> sat saturate()<left>
            \| ia <buffer> sca scale()<left>
            \| ia <buffer> scx scaleX()<left>
            \| ia <buffer> scy scaleY()<left>
            \| ia <buffer> sep sepia()<left>
            \| ia <buffer> ske skew()<left>
            \| ia <buffer> skx skewX()<left>
            \| ia <buffer> sky skewY()<left>
            \| ia <buffer> tx translateX()<left>
            \| ia <buffer> ty translateY()<left>
            \| ia <buffer> url url('')<left><left>
            \| ia <buffer> var var(--)<left>

"}}}
"{{{ Font Name

au filetype css ia <buffer> sse sans-serif
            \| ia <buffer> ari Arial

"}}}
" {{{ abbrev

au filetype css ia <buffer> tit /*<cr> =============== <cr> ===============<cr> */<esc>kO

" }}}
"{{{ Color Name

au filetype css ia <buffer> 00 #000
            \| ia <buffer> bla black
            \| ia <buffer> cc #ccc
            \| ia <buffer> dbl darkblue
            \| ia <buffer> ff #fff
            \| ia <buffer> gold gold
            \| ia <buffer> lbl lightblue
            \| ia <buffer> lsa lightsalmon
            \| ia <buffer> ora orange
            \| ia <buffer> rbl royalblue
            \| ia <buffer> reb rebeccapurple
            \| ia <buffer> sal salmon
            \| ia <buffer> yel yellow

"}}}
"{{{ Animation

au filetype css ia <buffer> ade animation-delay:
au filetype css ia <buffer> adu animation-duration:
au filetype css ia <buffer> aic animation-iteration-count:
au filetype css ia <buffer> ana animation-name:
au filetype css ia <buffer> ani animation:
au filetype css ia <buffer> atf animation-timing-function:
au filetype css ia <buffer> adi animation-direction:
au filetype css ia <buffer> afm animation-fill-mode:
au filetype css ia <buffer> aps animation-play-state:

au filetype css ia <buffer> inf infinite
au filetype css ia <buffer> rev reverse
au filetype css ia <buffer> alt alternate
au filetype css ia <buffer> arev alternate-reverse
au filetype css ia <buffer> forw forwards
au filetype css ia <buffer> bac backwards
au filetype css ia <buffer> bot both
au filetype css ia <buffer> runn running

"}}}
"{{{ Display

au filetype css ia <buffer> ibl inline-block
au filetype css ia <buffer> ifl inline-flex
au filetype css ia <buffer> inl inline
au filetype css ia <buffer> blo block

"}}}
"{{{ Transform 

au filetype css ia <buffer> tra transform:

"}}}
"{{{ background

au filetype css ia <buffer> bac background:
au filetype css ia <buffer> bbm background-blend-mode:
au filetype css ia <buffer> bim background-image:
au filetype css ia <buffer> bpo background-position:
au filetype css ia <buffer> bsiz background-size:
au filetype css ia <buffer> bpx background-position-x:
au filetype css ia <buffer> bpy background-position-y:
au filetype css ia <buffer> bre background-repeat:
au filetype css ia <buffer> bco background-color:

au filetype css ia <buffer> dar darken
"}}}
"{{{ overflow

au filetype css ia <buffer> ofl overflow:
au filetype css ia <buffer> ofy overflow-y:
au filetype css ia <buffer> ofx overflow-x:

"}}}
"{{{ media query

au filetype css ia <buffer> med @media

au filetype css ia <buffer> miwi min-width:
au filetype css ia <buffer> mawi max-width:

"}}}
"{{{ aspect-ratio:

au filetype css ia <buffer> ara aspect-ratio:

"}}}
"{{{ function

au filetype css ia <buffer> cmi color-mix()<left>

"}}}
"{{{ text

au filetype css ia <buffer> twr text-wrap:

au filetype css ia <buffer> wra wrap
au filetype css ia <buffer> nwr nowrap
au filetype css ia <buffer> bal balance
au filetype css ia <buffer> pre pretty
au filetype css ia <buffer> sta standard

"}}}
"{{{ gap

au filetype css ia <buffer> cga column-gap:
au filetype css ia <buffer> rga row-gap:
au filetype css ia <buffer> gap gap:

"}}}


au filetype css ia <buffer> poab position: absolute
au filetype css ia <buffer> tace text-align: center

"{{{
" augroup css_settings
" autocmd!
" autocmd BufRead,BufNewfile *.css execute 'badd ' . expand('~/.vim/init/singkatan/css.vimrc') | execute 'buffer ' . bufnr('~/.vim/init/singkatan/css.vimrc') | setlocal bufhidden=hide | bn
" augroup END
"}}}
