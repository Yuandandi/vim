"{{{ Map

au filetype html nn td yiW:!echo <c-r><c-"> >> /home/danzor/.vim/init/singkatan/htmlcomp<cr>
au FileType html ino <buffer> <C-b> <esc>?><CR>i
au FileType html ino <buffer> <C-g>> <C-o>ct><esc>
au FileType html ino <buffer> <C-g>< <Esc>d/<<CR>
au FileType html ino <buffer> <C-g>n <C-o>/><CR>
au FileType html ino <buffer> <C-g>p <C-o>?><CR>
au FileType html nn <buffer> gca A<Space><!-- --><left><left><left>
au FileType html nn <buffer> ge _f>w~:w<cr>
au FileType html nn <buffer> tb yiW:!echo <c-r><c-"> >> ~/completion/bootstrap<cr>
au FileType html vn <buffer> tb y:!echo <c-r><c-"> >> ~/completion/bootstrap<cr>
au FileType html nn <buffer> tc yiw:!echo <c-r><c-"> >> ~/completion/colors<cr>
au FileType html vn <buffer> tc y:!echo <c-r><c-"> >> ~/completion/colors<cr>
au FileType html nn <buffer> o :w<cr>o
au FileType html nn <buffer> s cit
au FileType html ino <buffer> zf <!-- {{{ --><cr><!-- }}} --><esc>kF{la
" go-to tags in split window When in HTML file className
au filetype html nn <buffer> ta Bi.<esc>viW<c-w><c-]>
au filetype html nn <buffer> tA Bi.<esc>viW<c-]>
au filetype html ino <buffer> z. =""<left>
" au FileType html nn <leader>2 _v$y:e /home/danzor/.vim/init/singkatan/html.vimrc<CR>}}Oautocmd FileType html ia <buffer> <Esc>phi<Space>
" au FileType html nn <buffer> e V<esc>=it:w<cr>gv<esc>zz

"}}}
"{{{ Set And Remap

" au filetype html setlocal cpt=.,b,k/home/danzor/.vim/init/singkatan/htmlcomp
au filetype html setlocal cpt=.
au filetype html setlocal dict=~/.vim/init/dict-tags/bootstrap,~/.vim/init/dict-tags/htmlcomp,~/.vim/init/dict-tags/colors,~/.vim/init/dict-tags/font-awesome,~/.vim/init/dict-tags/emmet
au FileType html setlocal tw=120
au FileType html setlocal shiftwidth=2"
au FileType html setlocal cot=menu,preview
au FileType html setlocal iskeyword=@,48-57,_,192-255,-

"}}}
" {{{ Fonts

au filetype html ia <buffer> fonaw <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
            \| ia <buffer> fonmi <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
            \| ia <buffer> fonpo <link rel="preconnect" href="https://fonts.googleapis.com"><cr><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><cr><link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap">
            \| ia <buffer> fonrobo <link rel="preconnect" href="https://fonts.googleapis.com"><cr><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><cr><link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

" }}}
" {{{ Tags

au filetype html,htmldjango ia <buffer> !!! <!DOCTYPE html><cr><html lang="en"><cr><head><cr><meta charset="UTF-8" /><cr><meta name="viewport" content="width=device-width, initial-scale=1.0"><cr><title>document</title><cr><link rel="stylesheet" type="text/css" href="styles.css" /><cr></head><cr><body><cr></body><cr></html>
            \| ia <buffer> abb <abbr title=""></abbr><esc>?"<cr>i
            \| ia <buffer> addr <address><CR></address><esc>O
            \| ia <buffer> ah <a href=""></a><Esc>?"><CR>i
            \| ia <buffer> areaa <area shape="" coords="" href="" alt=""><esc>" co<CR>
            \| ia <buffer> arti <article><CR></article><esc>O
            \| ia <buffer> asi <aside></aside><Esc>cit
            \| ia <buffer> pic <picture></picture><Esc>cit
            \| ia <buffer> aud <audio controls><CR><CR></audio>
            \| ia <buffer> bas <base href="" target="">
            \| ia <buffer> b <b></b><Esc>cit
            \| ia <buffer> bdi <bdi></bdi><esc>cit
            \| ia <buffer> bdo <bdo dir=""></bdo><esc>?"><CR>
            \| ia <buffer> bigg <big></big><Esc>cit
            \| ia <buffer> blo <blockquote cite=""></blockquote<esc>>?"><CR>
            \| ia <buffer> bod <body><CR></body><cr>gO
            \| ia <buffer> br <br>
            \| ia <buffer> butto <button></button><esc>cit
            \| ia <buffer> canv <canvas id=""></canvas><esc>F"i
            \| ia <buffer> cap <caption></caption><esc>cit
            \| ia <buffer> cen <center></center><Esc>cit
            \| ia <buffer> cite <cite></cite><Esc>cit
            \| ia <buffer> cod <code></code><Esc>cit
            \| ia <buffer> coll <col>
            \| ia <buffer> datal <datalist><CR></datalist><esc>O
            \| ia <buffer> dd <dd></dd><Esc>cit
            \| ia <buffer> del <del class=""></del><esc>?"><cr>i
            \| ia <buffer> det <details><CR></details><esc>O
            \| ia <buffer> dfn <dfn></dfn><Esc>cit
            \| ia <buffer> dial <dialog><CR></dialog><esc>O
            \| ia <buffer> divc <div class=""><CR></div><esc>?"<CR>i
            \| ia <buffer> divci <div class="" id=""><cr></div><esc>?" id<CR>i
            \| ia <buffer> div <div></div><Esc>cit
            \| ia <buffer> doc <!DOCTYPE>
            \| ia <buffer> dt <dt></dt><Esc>cit
            \| ia <buffer> emb <embed src=""></embed><esc>?"><CR>i
            \| ia <buffer> em <em></em><Esc>cit
            \| ia <buffer> fie <fieldset><CR></fieldset><esc>O
            \| ia <buffer> figc <figcaption></figcaption><Esc>cit
            \| ia <buffer> fig <figure><CR></figure><Esc>cit
            \| ia <buffer> foot <footer><CR></footer><Esc>cit
            \| ia <buffer> formm <form></form><Esc>cit
            \| ia <buffer> h1 <h1></h1><Esc>cit
            \| ia <buffer> h2 <h2></h2><Esc>cit
            \| ia <buffer> h3 <h3></h3><Esc>cit
            \| ia <buffer> h4 <h4></h4><Esc>cit
            \| ia <buffer> h5 <h5></h5><Esc>cit
            \| ia <buffer> h6 <h6></h6><Esc>cit
            \| ia <buffer> hea <head></head><Esc>cit
            \| ia <buffer> hgr <hgroup><CR></hgroup><esc>O
            \| ia <buffer> hr <hr>
            \| ia <buffer> htm <html><CR></html><esc>O
            \| ia <buffer> ifr <iframe src=""></iframe><esc>?"<CR>i
            \| ia <buffer> ii <i></i><Esc>cit
            \| ia <buffer> imgg <img src="" alt="" /><esc>?" al<CR>i
            \| ia <buffer> inp <input type="" name="" value="" /><esc>?" nam<CR>i
            \| ia <buffer> kbd <kbd></kbd><esc>cit
            \| ia <buffer> keyg <keygen name=""><esc>F"i
            \| ia <buffer> labe <label for=""></label><esc>?"<CR>i
            \| ia <buffer> lege <legend></legend><Esc>cit
            \| ia <buffer> li <li></li><Esc>cit
            \| ia <buffer> lin <link rel="" href=""><esc>?" hre<cr>i
            \| ia <buffer> mai <main><CR></main><Esc>cit
            \| ia <buffer> map <map name=""><CR></map><Esc>?"><cr>i
            \| ia <buffer> mar <mark></mark><Esc>cit
            \| ia <buffer> menui <menuitem></menuitem><esc>cit
            \| ia <buffer> menuu <menu><CR></menu><Esc>cit
            \| ia <buffer> meta <meta name="" content=""><esc>0ci"
            \| ia <buffer> mete <meter value=""></meter><Esc>?"><cr>i
            \| ia <buffer> na <nav><CR></nav><Esc>cit
            \| ia <buffer> nos <noscript><CR></noscript><Esc>cit
            \| ia <buffer> obj <object width="" height="" data=""></object><Esc>?" hei<cr>i
            \| ia <buffer> ol <ol><cr></ol><Esc>O
            \| ia <buffer> optg <optgroup><CR></optgroup><esc>O
            \| ia <buffer> opt <option value=""></option><esc>?"><cr>i
            \| ia <buffer> outp <output name="" for=""></output><Esc>?" for<cr>i
            \| ia <buffer> par <param name="" value=""><Esc>3F"i
            \| ia <buffer> pp <p></p><Esc>cit
            \| ia <buffer> pc <p class=""></p><Esc>F"i
            \| ia <buffer> pre <pre></pre><Esc>cit
            \| ia <buffer> prog <progress value="" max=""></progress><Esc>3F"i
            \| ia <buffer> q <q></q><Esc>cit
            \| ia <buffer> rp <rp></rp><Esc>cit
            \| ia <buffer> rt <rt></rt><Esc>cit
            \| ia <buffer> rub <ruby></ruby><esc>cit
            \| ia <buffer> sam <samp></samp><Esc>cit
            \| ia <buffer> scr <script></script><esc>F>i src=""<left>
            \| ia <buffer> sec <section></section><esc>cit
            \| ia <buffer> sel <select><CR></select><esc>O
            \| ia <buffer> sma <small></small><Esc>cit
            \| ia <buffer> sou <source src="" type=""><esc>3F"i
            \| ia <buffer> spa <span></span><Esc>cit
            \| ia <buffer> ss <s></s><Esc>cit
            \| ia <buffer> str <strong></strong><Esc>cit
            \| ia <buffer> sty <style><CR></style><esc>O
            \| ia <buffer> stys stylesheet
            \| ia <buffer> sub <sub></sub><Esc>cit
            \| ia <buffer> sum <summary></summary><Esc>cit
            \| ia <buffer> sup <sup></sup><Esc>cit
            \| ia <buffer> tab <table></table><Esc>cit
            \| ia <buffer> tbo <tbody><CR></tbody><esc>O
            \| ia <buffer> td <td></td><Esc>cit
            \| ia <buffer> tex <textarea rows="" cols=""></textarea><Esc>3F"i
            \| ia <buffer> tfo <tfoot><CR></tfoot><esc>O
            \| ia <buffer> thea <thead><CR></thead><esc>O
            \| ia <buffer> th <th></th><Esc>cit
            \| ia <buffer> tim <time datetime=""></time><Esc>F"i
            \| ia <buffer> tit <title><CR></title><esc>O
            \| ia <buffer> nav <nav><CR></nav><esc>O
            \| ia <buffer> tra <track src="" kind="" srclang="" label=""><Esc>7F"i
            \| ia <buffer> tr <tr></tr><Esc>cit
            \| ia <buffer> ulia <ul class=""><cr><li><cr><a href="#" class=""></a><cr></li><cr></ul><esc>kkkkci"
            \| ia <buffer> ul <ul></ul><Esc>cit
            \| ia <buffer> uu <u></u><Esc>cit
            \| ia <buffer> var <var></var><Esc>cit
            \| ia <buffer> vid <video width="" height="" controls=""></video><Esc>5F"i


" }}}
" {{{ Keyword

au FileType html,htmldjango ia <buffer> def defer
            \| ia <buffer> aut autoplay
            \| ia <buffer> blan _blank
            \| ia <buffer> che checkbox
            \| ia <buffer> loo loop
            \| ia <buffer> mod module

" }}}
" {{{ Abbrev

au FileType html,vimwiki,htmldjango ia <buffer> cpr Copyright (c) 2023 Dandi. All Rights Reserved.
            \| ia <buffer> hypen &#8221; &#8212;
            \| ia <buffer> jss js
            \| ia <buffer> lorp Lorem ipsum dolor sit amet, officia excepteur ex fugiat reprehenderit enim labore culpa sint ad nisi Lorem pariatur mollit ex esse exercitation amet. Nisi anim cupidatat excepteur officia. Reprehenderit nostrud nostrud ipsum Lorem est aliquip amet voluptate voluptate dolor minim nulla est proident. Nostrud officia pariatur ut officia. Sit irure elit esse ea nulla sunt ex occaecat reprehenderit commodo officia dolor Lorem duis laboris cupidatat officia voluptate. Culpa proident adipisicing id nulla nisi laboris ex in Lorem sunt duis officia eiusmod. Aliqua reprehenderit commodo ex non excepteur duis sunt velit enim. Voluptate laboris sint cupidatat ullamco ut ea consectetur et est culpa et culpa duis.
            \| ia <buffer> lors Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.
            \| ia <buffer> mut muted
            \| ia <buffer> navv nav
            \| ia <buffer> ofs offscreen
            \| ia <buffer> quo &#10077;&#10078;<esc>F;a
            \| ia <buffer> rev reversed
            \| ia <buffer> gugel https://google.com/

" }}}
" {{{ Properties

au filetype html ia <buffer> acti action=""<left>
            \| ia <buffer> cha charset=""<left>
            \| ia <buffer> cit cite=""<left>
            \| ia <buffer> cl class=""<left>
            \| ia <buffer> cols cols=""<left>
            \| ia <buffer> conte content=""<left>
            \| ia <buffer> condw content="width=device-width, initial-scale=1"
            \| ia <buffer> contr controls
            \| ia <buffer> cro crossorigin=""<left>
            \| ia <buffer> dataa data=""<left>
            \| ia <buffer> datet datetime=""<left>
            \| ia <buffer> dir dir=""<left>
            \| ia <buffer> dto data-tooltip=""<left>
            \| ia <buffer> forr for=""<left>
            \| ia <buffer> heade <header></header><esc>cit
            \| ia <buffer> hei height=""<left>
            \| ia <buffer> heq http-equiv=""<left>
            \| ia <buffer> hre href=""<left>
            \| ia <buffer> ic <i class=""></i><esc>F"i
            \| ia <buffer> idd id=""<left>
            \| ia <buffer> inte integrity=""<left>
            \| ia <buffer> kin kind=""<left>
            \| ia <buffer> labb label=""<left>
            \| ia <buffer> lang lang=""<left>
            \| ia <buffer> maxl maxlength=""<left>
            \| ia <buffer> maxx max=""<left>
            \| ia <buffer> meth method=""<left>
            \| ia <buffer> min min=""<left>
            \| ia <buffer> nam name=""<left>
            \| ia <buffer> onc onclick=""<left>
            \| ia <buffer> pla placeholder=""<left>
            \| ia <buffer> rel rel=""<left>
            \| ia <buffer> seta setAttribute();<left><left>
            \| ia <buffer> srcl srclang=""<left>
            \| ia <buffer> src src=""<left>
            \| ia <buffer> sreact <script crossorigin src="https://unpkg.com/react@18/umd/react.development.js"></script><cr><script crossorigin src="https://unpkg.com/react-dom@18/umd/react-dom.development.js"></script><cr><script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>
            \| ia <buffer> star start=""<left>
            \| ia <buffer> sta station=""<left>
            \| ia <buffer> st style=""<left>
            \| ia <buffer> tarb target="_blank"
            \| ia <buffer> tar target=""<left>
            \| ia <buffer> ti title=""<left>
            \| ia <buffer> typ type=""<left>
            \| ia <buffer> val value=""<left>
            \| ia <buffer> wid width=""<left>

" }}}
" {{{{ Script

au filetype html ia <buffer> scboot <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"><cr><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
            \| ia <buffer> sdboot <link rel="stylesheet" type="text/css" href="css/bootstrap.css" /><cr><script src="js/bootstrap.js"></script>
            \| ia <buffer> snboot <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.css"><cr><script src="node_modules/bootstrap/dist/js/bootstrap.js"></script>
            \| ia <buffer> bse <section id="projects"><cr><div class="container"><cr><div class="row"><cr><div class="col"><cr></div><cr></div><cr></div><cr></section><esc>?pro<cr>ciw
            \| ia <buffer> scpboot <link<cr>href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"<cr>rel="stylesheet"<cr>integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"<cr>crossorigin="anonymous"/><cr><!-- {{{ Script--><cr><script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"<cr>integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"<cr>crossorigin="anonymous"><cr></script><cr><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"<cr>integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"<cr>crossorigin="anonymous"><cr></script><cr><!-- }}} -->
            \| ia <buffer> scfboot <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><cr> <!-- {{{ script --><cr> <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script><cr> <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script><cr> <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script><cr> <!-- }}} -->
" }}}}
" " {{{ dictionary in the next buffer

" augroup html_settings
"     au!
"     au BufRead,BufNewFile *.html,*.htmldjango execute 'badd ' . expand('~/.vim/init/singkatan/html.vimrc') | execute 'buffer ' . bufnr('~/.vim/init/singkatan/html.vimrc') | setlocal bufhidden=hide | bn
" augroup END

" " }}}
