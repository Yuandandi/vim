"{{{ Comment

" colo gruvbox					" colorscheme
" let &backupdir=expand('~/.vim/backupdir') " backup Directory
" se backupcopy=yes             " if you need backup dir
" se dir=~/.vim/backupdir       " backup Directory whenever you delete
" se gp=git\ grep\ -n           " grep program you want to use (git-grep)
" se mouse=                     " enable mouse or not
" se mp=bundle\ exec\ rspec\ -f\ QuickfixFormatter  " 'makeprogram' go-to error line with quickfix list
" se ofu=ccomplete#Complete
" se ruler
" se scrolloff=8
" se sc                           " show keys you type in normal mode
" se spl=idhere
" se tag=/home/danzor/.vim/system.tags,tags  " tags completion or go-to def
" se termguicolors
" se winaltkeys=no              " in win32 yes will use alt keys as suppose Vim intended
" set shortmess+=c

"}}}
"{{{ Setting Ex Commands

noswapfile
filetype plugin indent on
colo gruvbox                   " colorscheme
syntax off                      " syntax highlighting

"}}}
"{{{ set

" se isk+=@,48-57,_,192-255,-,#,=   " iskeyword e.g. foo-bar is Treat as a single word, ciw cgn and completion will trigger - as a normal word
se ls=1                         " last status (0 never,1 only if 2 windows opened, 2 always )
se noacd                          " auto change Directory When you open new another Directory file
se ai
se ai                           " auto indent
se ar                           " autoread e.g. When another program change the file, read It automatically
se bg=dark                      " background dark light, if you set colorscheme It will set to light
se cpt=.                        " complete (. for this window, b for buffer)
se cot=fuzzy
se expandtab                    " many space will treat as a tab, E: compatible
se fdl=10                       " max number foldlevel              " max number foldlevel
se fdm=marker                   " foldmethod (marker, because It stays with the file as comment)
se gp=fd\ -t\ file\ -0\ -H\ --search-path=.\\\|xargs\ -0\ grep\ -n  " incase not a Gitdir
se hid                          " allow you move another hidden buffer without having to save first :q will ask you permission
se ic                           " ignorecase
se is
    se isfname+=@-@
se is                           " incsearch live search pattern as we type
se lcs=tab:→\ ,eol:↲            " listchars
se nocompatible					" compatible will make Vim behaves like vi many side effect will happen
se hls                          " highlights all matches
se nojoinspaces                 " join the space When.
se nomore                       " no more scroll though the message list
se nosm                         " no show match When a bracket is inserted, briefly don't jump to the matching one
se novb "no visual bell
se nowrap
se ofu=syntaxcomplete#Complete  "  omnifunc
se path+=**                     " append recursively to all files in subdirectory
se ru                           " runtime
se scs                          " smartcase
se shiftwidth=4
se signcolumn=auto
se smartindent
se softtabstop=4
se spl=en_us                    " spelllanguage spellchecker
se spr                          " splitright split new file in right window and the cursor also in the new file
se tabpagemax=5
se tabstop=4
se tf                           " ttyfast faster refraw
se undodir=/home/danzor/.vim/undodir
se undofile
se ut=50                        " updatetime
se vb                           " visualbell
se wic                          " wildignorecase
se wig=*.exe,*.dll,*.pdb,.*.o,*.obj     " wildignore ignore completion this type                         
se wim=list:longest,full        " wildmode how completion behaves in ex-command
se winaltkeys=no
se wmnu                         " wildmenu on ex command will give horizontal option as reference (def off)
se spf=~/.vim/spell/en.utf-8.add
se cul                          " cursorline

"}}}
"{{{ GVIM

" se gcr=                       " guicursor
" se gfn=Lucida_Console:h25     " gvim fonts, I don't use gvim actually
" se guioptions-=r              " gvim character handle
" se hid                        " Check for file changes automatically

"}}}
"{{{ user defined commands

command! MakeTags !ctags -R .

"}}}
"{{{ netrw set
let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25
"}}}
" {{{ start in insert mode

au filetype tmp,gitcommit :star

" }}}
" " {{{ Always on the Insert Mode When Opening Vim

" au filetype tmp BufRead,BufNewFile * startinser 
" " open the file in the folds indent, but set to fold manual directly
" augroup vimrc
"     au BufReadPre * setlocal foldmethod=indent
"     au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
" augroup END

" " }}}
""{{{ Automatically reload the file if it's changed outside of Vim

"autocmd FocusGained,BufEnter * checktime
"autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

""}}}
""{{{ backup

"augroup backup_and_undo
"    autocmd!
"    " Create backups in a backup directory
"    autocmd BufWritePre * let backupdir=expand('~/.vim/backup')
"    autocmd BufWritePost * if &backup | silent! execute 'backup' | endif
"    " Maintain undo history
"    autocmd BufWritePre * if &undofile | silent! execute 'undofile' | endif
"augroup END

""}}}
""{{{ Close All Folds When Open Files, last exact position

"augroup AutoCloseFolds
"    autocmd!
"    autocmd FileType html,css,javascript,python BufReadPost * normal! `.zMzvzz
"    " autocmd FileType conf,html,css,python,javascript,typescript,sh,vim BufReadPost normal! `.zMzvzz
"augroup END

""}}}
" {{{ replace netrw with vifm

let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1
let g:vifm_replace_netrw = 1
let g:vifm_replace_netrw_cmd = "Vifm"

" }}}
