ca ego e /home/dandi/.config/nvim/lua/dandi/abbrev/go.lua
au FileType c ino <buffer> zp () {}<Left><CR><Esc>O
au FileType go ino <buffer> zP () () {}<Left><CR><Esc>O
au FileType go ino <buffer> zp () {}<Left><CR><Esc>O
au FileType go nn <leader>2 _v$y:e ~/.config/nvim/lua/dandi/abbrev/go.lua<CR>}}Oautocmd FileType go ia <buffer> <Esc>phi<Space>
au FileType go nn <leader>3 yiw:vs ~/.config/nvim/lua/dandi/abbrev/go.lua<CR>}}Oautocmd FileType go ia <buffer> <Esc>pa <Esc>p2b3ldevip:sort<CR>:wq<CR>
au FileType go nn <leader>4 vipy:vs ~/.config/nvim/lua/dandi/abbrev/go.lua<CR>}}Oautocmd FileType go ia <buffer>
au FileType go nn <leader>g :w<CR>:!go run %<CR>
au FileType go ino <buffer> <m-b> <esc>/}<CR>a<space>
au FileType go nn <buffer> gca A<space>//<space>

au FileType go ia <buffer> apen append()<Left>
au FileType go ia <buffer> boo bool
au FileType go ia <buffer> bre break
au FileType go ia <buffer> bre break
au FileType go ia <buffer> byt byte
au FileType go ia <buffer> cap cap()<Left>
au FileType go ia <buffer> cas case
au FileType go ia <buffer> con const
au FileType go ia <buffer> cont continue
au FileType go ia <buffer> cop copy()<Left>
au FileType go ia <buffer> cpr Copyright (c) 2023 Dandi. All Rights Reserved.
au FileType go ia <buffer> defa default :<Left>
au FileType go ia <buffer> def defer
au FileType go ia <buffer> del delete()<Left>
au FileType go ia <buffer> eli else if
au FileType go ia <buffer> els else {}<Left>
au FileType go ia <buffer> f func
au FileType go ia <buffer> fal false
au FileType go ia <buffer> fc for i := 0; i < count; i++ {
au FileType go ia <buffer> fi func init() {}<Esc>kS
au FileType go ia <buffer> fl for i := 0; i < count; i++ {
au FileType go ia <buffer> for
au FileType go ia <buffer> fr for _, v := range v {
au FileType go ia <buffer> fun
au FileType go ia <buffer> gf go func() {}()<C-o>?) <CR>
au FileType go ia <buffer> hde func (w http.ResponseWriter, r *http.Request) {<C-o>?(w <CR>
au FileType go ia <buffer> helloweb package mainimport (	"fmt"	"net/http"	"time")func greet(w http.ResponseWriter, r *http.Request) {	fmt.Fprintf(w, "Hello World! %s", time.Now())}func main() {	http.HandleFunc("/", greet)	http.ListenAndServe(":8080", nil)}
au FileType go ia <buffer> herr http.Error(, err.Error(), http.StatusInternalServerError)<C-o>?, err<CR>
au FileType go ia <buffer> hf http.HandleFunc("/", handler)
au FileType go ia <buffer> i int
au FileType go ia <buffer> i3 int32
au FileType go ia <buffer> i6 int64
au FileType go ia <buffer> i8 int8
au FileType go ia <buffer> imp import
au FileType go ia <buffer> len len()<Left>
au FileType go ia <buffer> mai main
au FileType go ia <buffer> mak make()<Left>
au FileType go ia <buffer> map map[]<Left>
au FileType go ia <buffer> met method
au FileType go ia <buffer> pac package
au FileType go ia <buffer> pack package
au FileType go ia <buffer> pf fmt.Printf()<left>
au FileType go ia <buffer> pl fmt.Println()<Left>
au FileType go ia <buffer> pt package main<CR><CR>import "fmt"<CR><CR>func main() {<CR>fmt.Println()<CR>}
au FileType go ia <buffer> rec receiver
au FileType go ia <buffer> r return
au FileType go ia <buffer> ret return
au FileType go ia <buffer> s string
au FileType go ia <buffer> tru true
au FileType go ia <buffer> typ type
au FileType go ia <buffer> v var
au FileType go ia <buffer> val value
au FileType go ia <buffer> x. [...]
au FileType go ia <buffer> fm func main() {<CR>}<C-o>O
au FileType go ia <buffer> println Println

au FileType go ia <buffer> bf func Benchmark(b *testing.B) {<CR>for i := 0; i < b.N; i++ {<CR>}<CR>}
au FileType go ia <buffer> fife func main() {<CR>name := ""<CR>if name == "Joko" {<CR>fmt.Println("Hi Joko")} else if name == "Dewi" {<CR>fmt.Println("Hi Dewi")} else {<CR>fmt.Println("Hi, boleh kenalan?")}}
