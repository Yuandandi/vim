" {{{ js ts tsx nn
" au BufRead,BufNewFile *.jsx set filetype=javascript
au FileType javascript nn <buffer> s cit
au FileType javascript nn <leader>2 _v$y:e ~/.config/nvim/lua/dandi/abbrev/javascript.lua<CR>}}Oautocmd FileType javascript ia <buffer> <Esc>phi<Space>
au FileType javascript nn <BS> :w<cr>yyp!!node %<cr>kA // <esc>J
au FileType javascript nn \ :w<cr>:!node %<cr>
au FileType javascript,typescript ino zfl // {{{<cr><cr>}}}<up><esc>cc<esc>O<cr>;<esc>i
au FileType javascript,typescript nn <buffer> ct :!ctags %<cr>
au filetype javascript,javascript.jsx,typescript ino zJ <space>===<space>
" au filetype javascript,javascript.jsx,typescript setlocal isk=@,48-57,_,192-255,
au filetype javascript,typescript setlocal dict=~/.vim/init/dict-tags/tsdict
au filetype javascript,typescript setlocal tags=./tags,./TAGS,tags,TAGS,~/.vim/init/dict-tags/tstags

au FileType javascript,javascript.jsx,typescript nn gca A //<space>
" au FileType javascript,javascript.jsx nn o o;<left>
au FileType javascript,javascript.jsx,typescript nn cm O<cr>;<left>
au FileType javascript,javascript.jsx,typescript nn 0 0:w<cr>
au FileType javascript,javascript.jsx,css,html,typescript nn <c-a> <c-a>:w<cr>
au FileType javascript,javascript.jsx,css,html,typescript vn <c-a> <c-a>:w<cr>gv
au FileType javascript,javascript.jsx,css,html,typescript nn <c-x> <c-x>:w<cr>
au FileType javascript,javascript.jsx,css,html,typescript vn <c-x> <c-x>:w<cr>gv
au FileType javascript,javascript.jsx,typescript se tw=120


" au FileType JavaScript nn gct I// ********** <esc>A **********<esc>gccgUU"
" }}}

au filetype javascript,javascript.jsx,typescript ia <buffer> f function() {<cr>}<esc>?(<cr>i
            \| ia <buffer> cl console.log()<left>
            \| ia <buffer> ret return
            \| ia <buffer> fal false
            \| ia <buffer> iff if () {<cr>}<esc>kci(
            
" {{{ node modules

au FileType javascript,javascript.jsx,typescript ia <buffer> req require("")<left><left>

" }}};
" {{{ ts

"{{{ utility type
au FileType typescript ia <buffer> omi Omit<><left>
au FileType typescript ia <buffer> pic Pick<><left>
au FileType typescript ia <buffer> exc Exclude<><left>
au FileType typescript ia <buffer> ext Extract<><left>
au FileType typescript ia <buffer> nnu Nonnullable<><left>
au FileType typescript ia <buffer> rty ReturnType<><left>
au FileType typescript ia <buffer> par Parameters<><left>
au FileType typescript ia <buffer> prom Promise<><left>
au FileType typescript ia <buffer> ara Array<><left>
au FileType typescript ia <buffer> ext extends
"}}}

" }}}
"{{{ js ts combined

" HTML DOM
au FileType javascript,javascript.jsx,typescript ia <buffer> chi children
au FileType javascript,javascript.jsx,typescript ia <buffer> cno childNodes
au FileType javascript,javascript.jsx,typescript ia <buffer> fch first-child
au FileType javascript,javascript.jsx,typescript ia <buffer> nna nodeName
au FileType javascript,javascript.jsx,typescript ia <buffer> fec firstElementChild
au FileType javascript,javascript.jsx,typescript ia <buffer> lch lastChild
au FileType javascript,javascript.jsx,typescript ia <buffer> lec lastElementChild
au FileType javascript,javascript.jsx,typescript ia <buffer> nsi nextSibling
au FileType javascript,javascript.jsx,typescript ia <buffer> nes nextElementSibling
au FileType javascript,javascript.jsx,typescript ia <buffer> psi previousSibling
au filetype javascript,javascript.jsx,typescript ia <buffer> pes previousElementSibling

" operator;
au filetype javascript,javascript.jsx,typescript ia <buffer> kof keyof
au filetype javascript,javascript.jsx,typescript ia <buffer> tof typeof
au filetype javascript,javascript.jsx,typescript ia <buffer> ext extends

" HTML DOM document
au filetype javascript,javascript.jsx,typescript ia <buffer> dbc document.getElementsByClassName("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> dbi document.getElementById("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> dbt document.getElementsByTagName("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> gbt getElementsByTagName("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> gbc getElementsByClassName("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> gbi getElementById("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> dwr document.write("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> dal document.all
au filetype javascript,javascript.jsx,typescript ia <buffer> dce document.createElement("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> dct document.createTextNode("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> cel createElement("")<left><left>;
au filetype javascript,javascript.jsx,typescript ia <buffer> ctn createTextNode("")<left><left>;

" Node Interface;
au FileType javascript,javascript.jsx,typescript ia <buffer> repch replaceChild(newChld, oldChild)<left>

" event listener (all lowercase)
au filetype javascript,javascript.jsx,typescript ia <buffer> mou mouseover
au FileType javascript,javascript.jsx,typescript ia <buffer> dbl dblclick
au FileType javascript,javascript.jsx,typescript ia <buffer> clisk click
au FileType javascript,javascript.jsx,typescript ia <buffer> rsc readystatechange
au FileType javascript,javascript.jsx,typescript ia <buffer> rst readyState
au FileType javascript,javascript.jsx,typescript ia <buffer> cmn contextmenu
au FileType javascript,javascript.jsx,typescript ia <buffer> mdo mousedown
au FileType javascript,javascript.jsx,typescript ia <buffer> mup mouseup
au FileType javascript,javascript.jsx,typescript ia <buffer> whe wheel
au FileType javascript,javascript.jsx,typescript ia <buffer> mov mouseover
au FileType javascript,javascript.jsx,typescript ia <buffer> mou mouseout
au FileType javascript,javascript.jsx,typescript ia <buffer> dst dragstart
au FileType javascript,javascript.jsx,typescript ia <buffer> dra drag
au FileType javascript,javascript.jsx,typescript ia <buffer> den dragend
au FileType javascript,javascript.jsx,typescript ia <buffer> resi resize
au FileType javascript,javascript.jsx,typescript ia <buffer> scr scroll

au filetype javascript,javascript.jsx,typescript ia <buffer> iin isInteger()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> pfl parseFloat()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> ach appendChild()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> inc includes()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> ad add("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> ape append()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> awa await()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> boo Boolean()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> cad classList.add("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> catc catch()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> catt createAttribute('')<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> cco classList.contains("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> bre break
au filetype javascript,javascript.jsx,typescript ia <buffer> cin clearInterval()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> cla class
au filetype javascript,javascript.jsx,typescript ia <buffer> cli classList
au filetype javascript,javascript.jsx,typescript ia <buffer> cna className
au filetype javascript,javascript.jsx,typescript ia <buffer> cont contains("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> crec clearRect()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> cre classList.remove("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> ctq chrome.tabs.query()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> dcl DOMContentLoaded
au filetype javascript,javascript.jsx,typescript ia <buffer> del delete<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> dim drawImage()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> dlh document.location.href
au filetype javascript,javascript.jsx,typescript ia <buffer> doc document
au filetype javascript,javascript.jsx,typescript ia <buffer> dqsa document.querySelectorAll("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> dqs document.querySelector("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> qse querySelector("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> dse dataset
au filetype javascript,javascript.jsx,typescript ia <buffer> ex export
au filetype javascript,javascript.jsx,typescript ia <buffer> fal false
au filetype javascript,javascript.jsx,typescript ia <buffer> fec firstElementChild
au filetype javascript,javascript.jsx,typescript ia <buffer> f function() {<cr>}<esc>?(<cr>i
au filetype javascript,javascript.jsx,typescript ia <buffer> fin finally zp
au filetype javascript,javascript.jsx,typescript ia <buffer> fn function () {<cr>}<esc>?(<cr>i
au filetype javascript,javascript.jsx,typescript ia <buffer> fo for () {<cr>}<esc>kf(a
au filetype javascript,javascript.jsx,typescript ia <buffer> fori for (let i = 0; i < messages.length; i++) {<cr>console.log(messages[i]);<cr>}
au filetype javascript,javascript.jsx,typescript ia <buffer> fre fillRect()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> gat getAttribute("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> gbcr getBoundingClientRect()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> gco getContext('')<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> gda getDate()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> gday getDay()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> gfy getFullYear()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> gho getHours()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> git getItem()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> gmi getMinutes()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> gmo getMonth()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> gti getTime()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> hei height
au filetype javascript,javascript.jsx,typescript ia <buffer> hop hasOwnProperty()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> ifb if (hasSolvedChallenge === true && hasHintsLeft === true) {<cr>}
au filetype javascript,javascript.jsx,typescript ia <buffer> ifel if () {<cr>} else if () {<cr>} else {<cr>}<esc>{jjf(i<esc>?^if<cr>ci(
au filetype javascript,javascript.jsx,typescript ia <buffer> eif else if () {<cr>}<esc>kci(
au filetype typescript,javascript,javascript.jsx ia <buffer> iff if () {<cr>}<esc>?(<cr>a
au filetype javascript,javascript.jsx,typescript ia <buffer> iht innerHTML
au filetype javascript,javascript.jsx,typescript ia <buffer> oht outerHTML
au filetype javascript,javascript.jsx,typescript ia <buffer> i i
au filetype javascript,javascript.jsx,typescript ia <buffer> ima Image()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> imp import
au filetype javascript,javascript.jsx,typescript ia <buffer> ite innerText
au filetype javascript,javascript.jsx,typescript ia <buffer> jss JavaScript
au filetype javascript,javascript.jsx,typescript ia <buffer> lcl localStorage.clear()
au filetype javascript,javascript.jsx,typescript ia <buffer> lec lastElementChild
au filetype javascript,javascript.jsx,typescript ia <buffer> len length
au filetype javascript,javascript.jsx,typescript ia <buffer> lgi window.localStorage.getItem()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> l let
au filetype javascript,javascript.jsx,typescript ia <buffer> lsi window.localStorage.setItem()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> lst localStorage
au filetype javascript,javascript.jsx,typescript ia <buffer> lth line-through
au filetype javascript,javascript.jsx,typescript ia <buffer> mat matches('')<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> mongodb mongodb
au filetype javascript,javascript.jsx,typescript ia <buffer> nda new Date()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> nes nextElementSibling
au filetype javascript,javascript.jsx,typescript ia <buffer> npr new Promise()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> ofr Object.freeeze()<left>;
au filetype javascript,javascript.jsx,typescript ia <buffer> onc onclick =
    au filetype typescript,javascript,javascript.jsx ia <buffer> oto offsetTop
au filetype javascript,javascript.jsx,typescript ia <buffer> pau pause('')<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> pde preventDefault()
au filetype javascript,javascript.jsx,typescript ia <buffer> pel parentElement
au filetype javascript,javascript.jsx,typescript ia <buffer> pin parseInt()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> pno parentNode
au filetype javascript,javascript.jsx,typescript ia <buffer> pop pop()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> pus push()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> pyo pageYOffset
au filetype javascript,javascript.jsx,typescript ia <buffer> qsa querySelectorAll("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> qs querySelector("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> raf requestAnimationFrame()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> rat removeAttribute('')<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> rch removeChild()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> rem remove()<left>
au filetype javascript,typescript ia <buffer> ret return
au filetype javascript.jsx ia <buffer> ret return zP
au filetype javascript,javascript.jsx,typescript ia <buffer> reviewdao ReviewDAO
au filetype javascript,javascript.jsx,typescript ia <buffer> rgba rgba()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> rit removeItem("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> san setAttributeNode()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> sat setAttribute()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> sti setTimeout()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> sto scrollTo()<left>
au filetype typescript,javascript,javascript.jsx ia <buffer> sty style
au filetype javascript,javascript.jsx,typescript ia <buffer> sub submit
au filetype javascript,javascript.jsx,typescript ia <buffer> swi switch() {<cr>}<esc>k0ci(
    au filetype javascript,javascript.jsx,typescript ia <buffer> tco textContent
au filetype typescript,javascript,javascript.jsx ia <buffer> tog toggle('')<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> tra transform
au filetype javascript,javascript.jsx ia <buffer> isn isNaN()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> und undefined
au filetype javascript,javascript.jsx,typescript ia <buffer> upd udpate()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> ust "use strict"
au filetype javascript,javascript.jsx,typescript ia <buffer> whi while () {<cr>}<esc>kf(a
au filetype javascript,javascript.jsx,typescript ia <buffer> win window
au filetype javascript,javascript.jsx,typescript ia <buffer> edf export default function() {<cr>return (<cr>)<cr>}<esc>?ion<cr>wi
au filetype javascript,javascript.jsx,typescript ia <buffer> edc export default class{<cr>}<esc>kf{i
au filetype javascript,javascript.jsx,typescript ia <buffer> oncl onClick={}<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> onch onChange={}<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> onsu onSubmit={}<left>
au filetype javascript.jsx,typescript ia <buffer> keyy key={}<left>
au filetype javascript.jsx,typescript ia <buffer> omo onMouseOver={}<left>
au filetype javascript.jsx,typescript ia <buffer> bco backgroundColor:
au filetype javascript.jsx,typescript ia <buffer> ftog function toggle(id){<cr>setSquares(prevSquares =><cr>prevSquares.map(square =><cr>square.id === id ? { ...square, on: !square.on } : square<cr>)<cr>);<cr>}
au filetype javascript.jsx,typescript ia <buffer> cbo checkbox
au filetype javascript.jsx,typescript ia <buffer> hfo htmlFor=""<left>"


" date and time method
au FileType javascript,javascript.jsx,typescript ia <buffer> dtf DateTimeFormat()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> dat Date()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> dno Date.now()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> idt Intl.DateTimeFormat('').format()<esc>F'i
au FileType javascript,javascript.jsx,typescript ia <buffer> dti datetime

" Event listener
au filetype javascript,javascript.jsx,typescript ia <buffer> ael addEventListener("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> rel removeEventListener("")<left><left>

" style properties
au filetype javascript,javascript.jsx,typescript ia <buffer> srig style.right = ""<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> sjco style.justifyContent = ""<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> stde style.textDecoration = ""<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> sbor style.border = ""<left>;
au filetype javascript,javascript.jsx,typescript ia <buffer> sbco style.backgroundColor = ""<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> sbra style.borderRadius = ""<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> spad style.padding = ""<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> swid style.width = ""<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> shei style.height = ""<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> sbot style.bottom = ""<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> scol style.color = ""<left>
au FileType typescript,javascript,javascript.jsx ia <buffer> sdis style.display = ""<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> slef style.left = ""<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> sto style.top = ""<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> stra style.transform = ""<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> sdis style.display = ""<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> smar style.margin = ""<left>

" error
au FileType javascript.jsx,typescript ia <buffer> tne throw new Error()<left>

" fetch API
au FileType javascript.jsx,typescript ia <buffer> fet fetch()<left>

" console method;
au filetype javascript,javascript.jsx,typescript ia <buffer> cl console.log()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> cd console.dir()<left>
au filetype typescript,javascript.jsx,javascript ia <buffer> cll console.log({  })<left><left><left>
au filetype typescript,javascript.jsx,javascript ia <buffer> ce console.error()<left>
au filetype typescript,javascript.jsx,javascript ia <buffer> cc console.clear()<left>
au filetype typescript,javascript.jsx,javascript ia <buffer> ct console.table()<left>
au filetype typescript,javascript.jsx,javascript ia <buffer> cw console.warn()<left>
au filetype typescript,javascript.jsx,javascript ia <buffer> cg console.group();<cr>console.groupEnd()<esc>k0ci(""<left>
au filetype typescript,javascript.jsx,javascript ia <buffer> clt console.log(typeof )<left>
au filetype typescript,javascript.jsx,javascript ia <buffer> clf console.log("foo")<left>

" JSON method
au filetype javascript,javascript.jsx,typescript ia <buffer> jpa JSON.parse()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> jst JSON.stringify()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> jso json()

" js method
au filetype javascript,javascript.jsx,typescript ia <buffer> spr stopPropagation()
au FileType javascript ia <buffer> crea create()<left>
au FileType javascript ia <buffer> sup super()<left>
au FileType javascript ia <buffer> cle clear()<left>

" string to number
au FileType javascript,javascript.jsx ia <buffer> numb Number()<left>

" js keys;
au FileType javascript,javascript.jsx,typescript ia <buffer> obj Object
au FileType javascript,javascript.jsx,typescript ia <buffer> def default
" }}}
" " {{{ JS Browser

" window Object ; global scope
au FileType javascript,javascript.jsx,typescript ia <buffer> ihe innerHeight
au FileType javascript,javascript.jsx,typescript ia <buffer> iwi innerWidth
au FileType javascript,javascript.jsx,typescript ia <buffer> sx scrollX
au FileType javascript,javascript.jsx,typescript ia <buffer> sy scrollY

" interface
au FileType javascript,javascript.jsx,typescript ia <buffer> hie HTMLImageElement

" popup box
au filetype javascript,javascript.jsx,typescript ia <buffer> ale alert("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> conf confirm("")<left><left>
au filetype javascript,javascript.jsx,typescript ia <buffer> promp prompt("")<left><left>

" Global Object;
au FileType javascript,javascript.jsx,typescript ia <buffer> inf Infinity

" interface
au FileType javascript,javascript.jsx,typescript ia <buffer> fda FormData()<left>

" Element method;
au FileType javascript,javascript.jsx,typescript ia <buffer> iae insertAdjacentElement("",)<left><left><left>
au FileType javascript,javascript.jsx,typescript ia <buffer> iat insertAdjacentText("",)<left><left><left>
au FileType javascript,javascript.jsx,typescript ia <buffer> iah insertAdjacentHTML("",)<left><left><left>
au FileType javascript,javascript.jsx,typescript ia <buffer> aen afterend
au FileType javascript,javascript.jsx,typescript ia <buffer> bbe beforebegin
au FileType javascript,javascript.jsx,typescript ia <buffer> abe afterbegin
au FileType javascript,javascript.jsx,typescript ia <buffer> ben beforeend
au FileType javascript,javascript.jsx,typescript ia <buffer> ibe insertBefore()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> rwi replaceWith()<left>

" map instances
au FileType javascript,javascript.jsx,typescript ia <buffer> ge get()<left>

" key event;
au FileType javascript,javascript.jsx,typescript ia <buffer> kpr keypress
au FileType javascript,javascript.jsx,typescript ia <buffer> kup keyup
au FileType javascript,javascript.jsx,typescript ia <buffer> kdo keydown
" au FileType javascript,javascript.jsx,typescript ia <buffer> inp input
au FileType javascript,javascript.jsx,typescript ia <buffer> chan change

" Keyboard Evens;
au FileType javascript,javascript.jsx,typescript ia <buffer> ske shiftKey
au FileType javascript,javascript.jsx,typescript ia <buffer> cke ctrlKey
au FileType javascript,javascript.jsx,typescript ia <buffer> ake altKey
au FileType javascript,javascript.jsx,typescript ia <buffer> rec Record

" }}}
"  {{{ node common module

au FileType javascript,javascript.jsx,typescript ia <buffer> hdi homedir()
au FileType javascript,javascript.jsx,typescript ia <buffer> ver version()
au FileType javascript,javascript.jsx,typescript ia <buffer> rfi readFile()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> wfi writeFile()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> afi appendfile()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> unl unlink()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> pjo path.join(__dirname, "")<left><left>
au FileType javascript,javascript.jsx,typescript ia <buffer> crs createReadStream("")<left><left>
au FileType javascript,javascript.jsx,typescript ia <buffer> cws createWriteStream("")<left><left>
au FileType javascript,javascript.jsx,typescript ia <buffer> rmd rmdir("")<left><left>
au FileType javascript,javascript.jsx,typescript ia <buffer> mkd mdkir("")<left><left>
au FileType javascript,javascript.jsx,typescript ia <buffer> cse createServer()<left>

" }}}
" {{{ React

au filetype javascript,javascript.jsx,typescript ia <buffer> rre ReactDOM.render()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> rcr ReactDOM.crateRoot()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> rue React.useEffect()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> rur React.useRef()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> rfr React.Fragment
au filetype javascript,javascript.jsx,typescript ia <buffer> rce React.createElement()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> imre import React from "react"
au filetype javascript,javascript.jsx,typescript ia <buffer> rus React.useState()<left>
au filetype html ia <buffer> reunp <script crossorigin src="https://unpkg.com/react@18/umd/react.development.js"></script><cr><script crossorigin src="https://unpkg.com/react-dom@18/umd/react-dom.development.js"></script>

" }}}
"" {{{ method
" math method;
au FileType javascript,javascript.jsx,typescript ia <buffer> math Math
au FileType javascript,javascript.jsx,typescript ia <buffer> pi PI
au FileType javascript,javascript.jsx,typescript ia <buffer> tru trunc()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> rou round()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> sinn sin()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> tan tan()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> cei ceil()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> cos cos()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> ran random()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> logg log()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> flo floor()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> pow pow()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> mfl Math.floor()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> mfr Math.floor(Math.random())<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> mro Math.round()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> mce Math.ceil()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> mpo Math.pow()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> mma Math.max()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> mmi Math.min()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> mra Math.random()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> mpo Math.pow()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> mmi Math.min()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> msq Math.sqrt()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> mab Math.abs()<left>

" input properties;
au filetype javascript,javascript.jsx,typescript ia <buffer> val value

" promise
au filetype javascript,javascript.jsx,typescript ia <buffer> res resolve()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> rej reject()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> promi promise()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> thenn then("")<left><left>

" storage
au filetype javascript,javascript.jsx,typescript ia <buffer> sst sessionStorage

" array method;
au filetype javascript,javascript.jsx,typescript ia <buffer> shi shift()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> uns unshift()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> fea forEach()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> sin setInterval()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> spl splice()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> spt split()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> sit setItem()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> rev reverse()<left>
au FileType typescript,javascript,javascript.jsx ia <buffer> joi join("")<left><left>
au FileType typescript,javascript,javascript.jsx ia <buffer> conc concat()<left>
au FileType typescript,javascript,javascript.jsx ia <buffer> fla flat()<left>
au FileType typescript,javascript,javascript.jsx ia <buffer> ais Array.isArray()
au FileType typescript,javascript,javascript.jsx ia <buffer> afr Array.from()
au FileType typescript,javascript,javascript.jsx ia <buffer> isa isArray()<left>
au FileType typescript,javascript,javascript.jsx ia <buffer> eve every()<left>

au FileType javascript,typescript ia <buffer> st string
au FileType javascript,typescript ia <buffer> bo boolean
au FileType javascript,typescript ia <buffer> nu number
au FileType javascript,typescript ia <buffer> rg RegExp
au FileType javascript,typescript ia <buffer> vo void
au FileType javascript,typescript ia <buffer> int interface
au filetype javascript,typescript ia <buffer> impl implements
au filetype javascript,typescript ia <buffer> abs abstract
au filetype javascript,typescript ia <buffer> co const
au filetype javascript,typescript ia <buffer> v var
au filetype javascript,typescript ia <buffer> l let
au filetype javascript,typescript ia <buffer> hel HTMLElement

" event Object;
au filetype javascript,javascript.jsx,typescript ia <buffer> tist timestamp
au filetype javascript,javascript.jsx,typescript ia <buffer> tar target
au FileType javascript,javascript.jsx,typescript ia <buffer> cta currentTarget
au FileType javascript,javascript.jsx,typescript ia <buffer> cva current.value
au filetype javascript,javascript.jsx,typescript ia <buffer> typ type
au filetype javascript,javascript.jsx,typescript ia <buffer> clx clientX
au filetype javascript,javascript.jsx,typescript ia <buffer> cly clientY
au filetype javascript,javascript.jsx,typescript ia <buffer> ofx offsetX
au filetype javascript,javascript.jsx,typescript ia <buffer> ofy offsetY
au filetype javascript,javascript.jsx,typescript ia <buffer> pax pageX
au filetype javascript,javascript.jsx,typescript ia <buffer> pay pageY
au filetype javascript,javascript.jsx,typescript ia <buffer> scx screenX
au filetype javascript,javascript.jsx,typescript ia <buffer> scy screenY

" number method;
au FileType javascript,javascript.jsx,typescript ia <buffer> tst toString()<left>
au filetype javascript,javascript.jsx,typescript ia <buffer> tex toExponential()
au filetype javascript,javascript.jsx,typescript ia <buffer> tfi toFixed()
au filetype javascript,javascript.jsx,typescript ia <buffer> tls toLocaleString()
au filetype javascript,javascript.jsx,typescript ia <buffer> tlds toLocaleString()
au filetype javascript,javascript.jsx,typescript ia <buffer> tlts toLocaleTimeString()
au filetype javascript,javascript.jsx,typescript ia <buffer> tpr toPrecision()
au filetype javascript,javascript.jsx,typescript ia <buffer> vof valueOf()

au filetype javascript,javascript.jsx,typescript ia <buffer> tva target.value
au filetype javascript,javascript.jsx,typescript ia <buffer> tch target.checked

" object method
au filetype javascript,javascript.jsx,typescript ia <buffer> redu reduce()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> fil filter()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> mapp map()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> oke Object.keys()<left>

" string method;
au filetype javascript,javascript.jsx,typescript ia <buffer> tlo toLowerCase()
au filetype javascript,javascript.jsx,typescript ia <buffer> tup toUpperCase()
au filetype javascript,javascript.jsx,typescript ia <buffer> tus toUTCString()
au FileType javascript,javascript.jsx,typescript ia <buffer> cha charAt()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> ind indexOf()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> subs substring()<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> rep replace("old", "new")<left>
au FileType javascript,javascript.jsx,typescript ia <buffer> sli slice()<left>

" Data Modifiers
au filetype typescript ia <buffer> ron Readonly
au filetype typescript ia <buffer> pub public
au filetype typescript ia <buffer> pri private
au filetype typescript ia <buffer> pro protected

" boolean method;
au filetype javascript,javascript.jsx,typescript ia <buffer> vof valueOf()
au filetype typescript ia <buffer> rar ReadonlyArray<><left>
au filetype typescript ia <buffer> iof instanceof
au filetype typescript ia <buffer> mes message
au filetype typescript ia <buffer> ero error
au filetype javascript,typescript ia <buffer> con constructor(<cr>){}<esc>O
au filetype typescript ia <buffer> ide identifY()<left>

" pseudo selector;
au filetype javascript,typescript ia <buffer> nch nth-child()<left>

" }}}
"" augroup js_settings{{{ js set

"" au!
"" au BufRead,BufNewFile *.js,*.jsx execute 'badd ' . expand('~/.vim/init/singkatan/js.vimrc') | execute 'buffer ' . bufnr('~/.vim/init/singkatan/js.vimrc') | setlocal bufhidden=hide | bn
"" augroup END
"" au BufRead,BufNewFile,BufWritePost *.c,*.js,*.jsx,*.h call matchadd('Todo', 'TODO')

"" au FileType javascript.jsx setlocal foldmethod=expr
"" au FileType javascript.jsx setlocal foldexpr=JSFolds()
"" }}}
""{{{ fold import in js
"function! JSFolds()
"let thisline = getline(v:lnum)
"if thisline =~? '\v^\s*$'
"return '-1'
"endif

"if thisline =~ '^import.*$'
"return 1
"else
"return indent(v:lnum) / &shiftwidth
"endif
"endfunction
" }}}
" {{{ ts definition;
" TYPESCRIPT
" super ; used to call the constructor of a parent class. this is necessary When you want to extends a class and need to initialize the properties of the parent class
" }}}
