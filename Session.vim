let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <F4> :call Linemaker()a
imap <S-Tab> <Plug>SuperTabBackward
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
inoremap <silent> <expr> <Plug>delimitMateS-BS delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>"
inoremap <silent> <Plug>delimitMateBS =delimitMate#BS()
snoremap <silent>  c
nnoremap <silent>  :TmuxNavigateLeft
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippet()
nnoremap <silent> <NL> :TmuxNavigateDown
nnoremap <silent>  :TmuxNavigateUp
nnoremap <silent>  :TmuxNavigateRight
map  <Plug>(ctrlp)
snoremap  "_c
nnoremap <silent>  :TmuxNavigatePrevious
nnoremap   za
nnoremap - 5k
nmap ;n :NERDTree
nmap ;a :Gdiff
nmap ;c :Gcommit
nmap ;s :Gstatus
nmap ;p :Git push origin master
nnoremap ;l :bnext
nnoremap ;h :bprevious
nmap ;q :q
nmap ;w :w
nmap ;; :nohlsearch	" Get rid of the highlighting when done searching
nnoremap = 5j
xmap S <Plug>VSurround
vmap [% [%m'gv``
vmap ]% ]%m'gv``
vmap a% [%v]%
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <F4> :call Linemaker()
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>(ctrlp) :CtrlP
snoremap <silent> <Del> c
snoremap <silent> <BS> c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <SNR>17_: :=v:count ? v:count : ''
nnoremap <F3> :source ~/.vim/vim_session 
nnoremap <F2> :mksession! ~/.vim/vim_session 
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =UltiSnips#ExpandSnippet()
imap  <Plug>Isurround
inoremap ! !
inoremap . .
inoremap ; ;
inoremap ? ?
inoremap kj 
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set autoindent
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim/backup//
set copyindent
set directory=~/.vim/swp//
set errorfile=~/thesis/subfiles/main.log
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Droid\ Sans\ Mono\ Dotted\ for\ Powerline\ 10
set helplang=en
set hidden
set hlsearch
set incsearch
set laststatus=2
set lazyredraw
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-surround,~/.vim/bundle/LaTeX-Box,~/.vim/bundle/vim-tmux-navigator,~/.vim/bundle/delimitMate,~/.vim/bundle/ultisnips,~/.vim/bundle/supertab,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-airline-themes,~/.vim/bundle/nerdtree,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/gruvbox,~/.vim/bundle/jellybeans.vim,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-hybrid,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vim74/pack/dist/opt/matchit,/usr/share/vim/vimfiles/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/vim-surround/after,~/.vim/bundle/LaTeX-Box/after,~/.vim/bundle/vim-tmux-navigator/after,~/.vim/bundle/delimitMate/after,~/.vim/bundle/ultisnips/after,~/.vim/bundle/supertab/after,~/.vim/bundle/vim-airline/after,~/.vim/bundle/vim-airline-themes/after,~/.vim/bundle/nerdtree/after,~/.vim/bundle/ctrlp.vim/after,~/.vim/bundle/gruvbox/after,~/.vim/bundle/jellybeans.vim/after,~/.vim/bundle/vim-colors-solarized/after,~/.vim/bundle/vim-hybrid/after
set shiftround
set shiftwidth=4
set showmatch
set showtabline=2
set smartcase
set smarttab
set softtabstop=4
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg
set tabline=%!airline#extensions#tabline#get()
set tabstop=4
set title
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/thesis/subfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +89 ~/thesis/subfiles/main.tex
badd +9 ~/thesis/subfiles/ch1/ch1.tex
badd +9 ~/thesis/subfiles/ch2/ch2.tex
badd +8 ~/thesis/subfiles/ch3/ch3.tex
argglobal
silent! argdel *
argadd main.tex
edit ~/thesis/subfiles/main.tex
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 111 + 111) / 223)
exe 'vert 2resize ' . ((&columns * 111 + 111) / 223)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
omap <buffer> % <Plug>LatexBox_JumpToMatch
vmap <buffer> % <Plug>LatexBox_JumpToMatch
nmap <buffer> % <Plug>LatexBox_JumpToMatch
noremap <buffer> \lf :LatexFold
noremap <buffer> <silent> \lj :LatexLabels
noremap <buffer> <silent> \lt :LatexTOC
noremap <buffer> \lv :LatexView
noremap <buffer> \le :LatexErrors
noremap <buffer> \lk :LatexmkStop
noremap <buffer> \lG :LatexmkStatus!
noremap <buffer> \lg :LatexmkStatus
noremap <buffer> \lC :LatexmkClean!
noremap <buffer> \lc :LatexmkClean
noremap <buffer> \lL :Latexmk!
noremap <buffer> \ll :Latexmk
onoremap <buffer> a$ :normal va$
vmap <buffer> a$ <Plug>LatexBox_SelectInlineMathOuter
onoremap <buffer> ae :normal vae
vmap <buffer> ae <Plug>LatexBox_SelectCurrentEnvOuter
onoremap <buffer> i$ :normal vi$
vmap <buffer> i$ <Plug>LatexBox_SelectInlineMathInner
onoremap <buffer> ie :normal vie
vmap <buffer> ie <Plug>LatexBox_SelectCurrentEnvInner
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
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
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%E!\ LaTeX\ %trror:\ %m,%E%f:%l:\ %m,%E!\ %m,%Z<argument>\ %m,%Cl.%l\ %m,%-C(biblatex)%.%#in\ t%.%#,%-C(biblatex)%.%#Please\ v%.%#,%-C(biblatex)%.%#LaTeX\ a%.%#,%-Z(biblatex)%m,%-C(hyperref)%.%#on\ input\ line\ %l.,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%+W%.%#Warning:\ %m,%+P**%f,%+P**\"%f\",%-G%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=LatexBox_FoldLevel(v:lnum)
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=LatexBox_FoldText()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=LatexBox_TexIndent()
setlocal indentkeys=0=\\end,0=\\end{enumerate},0=\\end{itemize},0=\\end{description},0=\\right,0=\\item,0=\\),0=\\],0},o,O,0\\
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=LatexBox_Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.tex
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
1
normal! zo
let s:l = 89 - ((22 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
89
normal! 0
lcd ~/thesis/subfiles
wincmd w
argglobal
edit ~/thesis/subfiles/ch3/ch3.tex
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
omap <buffer> % <Plug>LatexBox_JumpToMatch
vmap <buffer> % <Plug>LatexBox_JumpToMatch
nmap <buffer> % <Plug>LatexBox_JumpToMatch
noremap <buffer> \lf :LatexFold
noremap <buffer> <silent> \lj :LatexLabels
noremap <buffer> <silent> \lt :LatexTOC
noremap <buffer> \lv :LatexView
noremap <buffer> \le :LatexErrors
noremap <buffer> \lk :LatexmkStop
noremap <buffer> \lG :LatexmkStatus!
noremap <buffer> \lg :LatexmkStatus
noremap <buffer> \lC :LatexmkClean!
noremap <buffer> \lc :LatexmkClean
noremap <buffer> \lL :Latexmk!
noremap <buffer> \ll :Latexmk
onoremap <buffer> a$ :normal va$
vmap <buffer> a$ <Plug>LatexBox_SelectInlineMathOuter
onoremap <buffer> ae :normal vae
vmap <buffer> ae <Plug>LatexBox_SelectCurrentEnvOuter
onoremap <buffer> i$ :normal vi$
vmap <buffer> i$ <Plug>LatexBox_SelectInlineMathInner
onoremap <buffer> ie :normal vie
vmap <buffer> ie <Plug>LatexBox_SelectCurrentEnvInner
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
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
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%E!\ LaTeX\ %trror:\ %m,%E%f:%l:\ %m,%E!\ %m,%Z<argument>\ %m,%Cl.%l\ %m,%-C(biblatex)%.%#in\ t%.%#,%-C(biblatex)%.%#Please\ v%.%#,%-C(biblatex)%.%#LaTeX\ a%.%#,%-Z(biblatex)%m,%-C(hyperref)%.%#on\ input\ line\ %l.,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%+W%.%#Warning:\ %m,%+P**%f,%+P**\"%f\",%-G%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=LatexBox_FoldLevel(v:lnum)
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=LatexBox_FoldText()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=LatexBox_TexIndent()
setlocal indentkeys=0=\\end,0=\\end{enumerate},0=\\end{itemize},0=\\end{description},0=\\right,0=\\item,0=\\),0=\\],0},o,O,0\\
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=LatexBox_Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.tex
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
7
normal! zo
27
normal! zo
30
normal! zo
38
normal! zo
40
normal! zo
54
normal! zo
60
normal! zo
67
normal! zo
73
normal! zo
92
normal! zo
101
normal! zo
103
normal! zo
111
normal! zo
113
normal! zo
180
normal! zo
199
normal! zo
205
normal! zo
212
normal! zo
243
normal! zo
252
normal! zo
280
normal! zo
305
normal! zo
310
normal! zo
363
normal! zo
366
normal! zo
373
normal! zo
379
normal! zo
387
normal! zo
398
normal! zo
401
normal! zo
412
normal! zo
421
normal! zo
440
normal! zo
446
normal! zo
455
normal! zo
478
normal! zo
480
normal! zo
489
normal! zo
491
normal! zo
534
normal! zo
536
normal! zo
557
normal! zo
559
normal! zo
577
normal! zo
579
normal! zo
598
normal! zo
603
normal! zo
654
normal! zo
661
normal! zo
668
normal! zo
670
normal! zo
676
normal! zo
678
normal! zo
707
normal! zo
712
normal! zo
859
normal! zo
867
normal! zo
893
normal! zo
902
normal! zo
904
normal! zo
912
normal! zo
914
normal! zo
925
normal! zo
951
normal! zo
955
normal! zo
1027
normal! zo
1031
normal! zo
1223
normal! zo
1231
normal! zo
1239
normal! zo
1250
normal! zo
1265
normal! zo
1341
normal! zo
1350
normal! zo
1393
normal! zo
1400
normal! zo
1401
normal! zo
1430
normal! zo
1473
normal! zo
1491
normal! zo
1493
normal! zo
1500
normal! zo
1507
normal! zo
1514
normal! zo
1521
normal! zo
1528
normal! zo
1535
normal! zo
1542
normal! zo
1549
normal! zo
1556
normal! zo
let s:l = 8 - ((7 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
lcd ~/thesis/subfiles
wincmd w
exe 'vert 1resize ' . ((&columns * 111 + 111) / 223)
exe 'vert 2resize ' . ((&columns * 111 + 111) / 223)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
