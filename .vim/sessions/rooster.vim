let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <Plug>(mkdx-link-compl) mkdx#CompleteLink()
inoremap <silent> <Plug>(mkdx-ctrl-p-compl) =mkdx#InsertCtrlPHandler()
inoremap <silent> <Plug>(mkdx-ctrl-n-compl) =mkdx#InsertCtrlNHandler()
inoremap <silent> <Plug>(mkdx-fence-backtick) =mkdx#InsertFencedCodeBlock('`')kA
inoremap <silent> <Plug>(mkdx-fence-tilde) =mkdx#InsertFencedCodeBlock('~')kA
inoremap <silent> <Plug>(mkdx-insert-kbd) <kbd></kbd>F<
inoremap <silent> <Plug>(mkdx-shift-enter) =mkdx#ShiftEnterHandler()
inoremap <silent> <Plug>(mkdx-enter) =mkdx#EnterHandler():setlocal autoindent
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
map! <D-v> *
snoremap <silent>  "_c
nmap  h
xmap  h
omap  h
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippet()
map <NL> j
map  k
map  l
nnoremap  :cnextz.
nnoremap  :cprevz.
snoremap  "_c
nnoremap _ <Nop>
nnoremap | <Nop>
nnoremap L <Nop>
nnoremap K <Nop>
nnoremap J <Nop>
nnoremap H <Nop>
nnoremap R <Nop>
nmap  w m <Plug>VimwikiMakeTomorrowDiaryNote
nmap  w y <Plug>VimwikiMakeYesterdayDiaryNote
nmap  w t <Plug>VimwikiTabMakeDiaryNote
nmap  w w <Plug>VimwikiMakeDiaryNote
nmap  w i <Plug>VimwikiDiaryGenerateLinks
nmap  wi <Plug>VimwikiDiaryIndex
nmap  ws <Plug>VimwikiUISelect
nmap  wt <Plug>VimwikiTabIndex
nmap  ww <Plug>VimwikiIndex
nnoremap  j :call mkdx#JumpToHeader()
nnoremap  g :Goyo
nnoremap  vr :source $MYVIMRC
nnoremap  ve :e $MYVIMRC
noremap  f 
nnoremap  ff :FZF
nnoremap    /
nnoremap  n :NERDTreeToggle
nnoremap  o :Bonly
nnoremap  l :noh
nnoremap  v :Vifm
nnoremap  x :Tex
nmap <p <Plug>(unimpaired-put-below-leftward)
nmap <P <Plug>(unimpaired-put-above-leftward)
nmap <s <Plug>(unimpaired-enable)
vnoremap < <gv
nmap =p <Plug>(unimpaired-put-below-reformat)
nmap =P <Plug>(unimpaired-put-above-reformat)
nmap =s <Plug>(unimpaired-toggle)
nmap >p <Plug>(unimpaired-put-below-rightward)
nmap >P <Plug>(unimpaired-put-above-rightward)
nmap >s <Plug>(unimpaired-disable)
xnoremap > >gv
inoremap º :m .+1==gi
xmap S <Plug>VSurround
nmap [xx <Plug>(unimpaired-xml-encode-line)
xmap [x <Plug>(unimpaired-xml-encode)
nmap [x <Plug>(unimpaired-xml-encode)
nmap [uu <Plug>(unimpaired-url-encode-line)
xmap [u <Plug>(unimpaired-url-encode)
nmap [u <Plug>(unimpaired-url-encode)
nmap [CC <Plug>(unimpaired-string-encode-line)
xmap [C <Plug>(unimpaired-string-encode)
nmap [C <Plug>(unimpaired-string-encode)
nmap [yy <Plug>(unimpaired-string-encode-line)
xmap [y <Plug>(unimpaired-string-encode)
nmap [y <Plug>(unimpaired-string-encode)
nmap [P <Plug>(unimpaired-put-above)
nmap [p <Plug>(unimpaired-put-above)
nmap [o <Plug>(unimpaired-enable)
xmap [e <Plug>(unimpaired-move-selection-up)
nmap [e <Plug>(unimpaired-move-up)
nmap [  <Plug>(unimpaired-blank-up)
omap [n <Plug>(unimpaired-context-previous)
xmap [n <Plug>(unimpaired-context-previous)
nmap [n <Plug>(unimpaired-context-previous)
nmap [f <Plug>(unimpaired-directory-previous)
nmap [<C-T> <Plug>(unimpaired-ptprevious)
nmap [ <Plug>(unimpaired-ptprevious)
nmap [T <Plug>(unimpaired-tfirst)
nmap [t <Plug>(unimpaired-tprevious)
nmap [<C-Q> <Plug>(unimpaired-cpfile)
nmap [ <Plug>(unimpaired-cpfile)
nmap [Q <Plug>(unimpaired-cfirst)
nmap [q <Plug>(unimpaired-cprevious)
nmap [<C-L> <Plug>(unimpaired-lpfile)
nmap [ <Plug>(unimpaired-lpfile)
nmap [L <Plug>(unimpaired-lfirst)
nmap [l <Plug>(unimpaired-lprevious)
nmap [B <Plug>(unimpaired-bfirst)
nmap [b <Plug>(unimpaired-bprevious)
nmap [A <Plug>(unimpaired-first)
nmap [a <Plug>(unimpaired-previous)
nmap ]xx <Plug>(unimpaired-xml-decode-line)
xmap ]x <Plug>(unimpaired-xml-decode)
nmap ]x <Plug>(unimpaired-xml-decode)
nmap ]uu <Plug>(unimpaired-url-decode-line)
xmap ]u <Plug>(unimpaired-url-decode)
nmap ]u <Plug>(unimpaired-url-decode)
nmap ]CC <Plug>(unimpaired-string-decode-line)
xmap ]C <Plug>(unimpaired-string-decode)
nmap ]C <Plug>(unimpaired-string-decode)
nmap ]yy <Plug>(unimpaired-string-decode-line)
xmap ]y <Plug>(unimpaired-string-decode)
nmap ]y <Plug>(unimpaired-string-decode)
nmap ]P <Plug>(unimpaired-put-below)
nmap ]p <Plug>(unimpaired-put-below)
nmap ]o <Plug>(unimpaired-disable)
xmap ]e <Plug>(unimpaired-move-selection-down)
nmap ]e <Plug>(unimpaired-move-down)
nmap ]  <Plug>(unimpaired-blank-down)
omap ]n <Plug>(unimpaired-context-next)
xmap ]n <Plug>(unimpaired-context-next)
nmap ]n <Plug>(unimpaired-context-next)
nmap ]f <Plug>(unimpaired-directory-next)
nmap ]<C-T> <Plug>(unimpaired-ptnext)
nmap ] <Plug>(unimpaired-ptnext)
nmap ]T <Plug>(unimpaired-tlast)
nmap ]t <Plug>(unimpaired-tnext)
nmap ]<C-Q> <Plug>(unimpaired-cnfile)
nmap ] <Plug>(unimpaired-cnfile)
nmap ]Q <Plug>(unimpaired-clast)
nmap ]q <Plug>(unimpaired-cnext)
nmap ]<C-L> <Plug>(unimpaired-lnfile)
nmap ] <Plug>(unimpaired-lnfile)
nmap ]L <Plug>(unimpaired-llast)
nmap ]l <Plug>(unimpaired-lnext)
nmap ]B <Plug>(unimpaired-blast)
nmap ]b <Plug>(unimpaired-bnext)
nmap ]A <Plug>(unimpaired-last)
nmap ]a <Plug>(unimpaired-next)
inoremap ∆ :m .-2==gi
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nnoremap confr :source $MYVIMRC
nnoremap confe :e $MYVIMRC
nmap ds <Plug>Dsurround
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
nmap yo <Plug>(unimpaired-toggle)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <C-W>_ <Nop>
nnoremap <C-W>| <Nop>
nnoremap <C-W>L <Nop>
nnoremap <C-W>K <Nop>
nnoremap <C-W>J <Nop>
nnoremap <C-W>H <Nop>
nnoremap <C-W>R <Nop>
nnoremap <SNR>124_: :=v:count ? v:count : ''
noremap <Plug>(mkdx-prev-section) :call mkdx#JumpToSection('prev')
noremap <Plug>(mkdx-next-section) :call mkdx#JumpToSection('next')
noremap <silent> <Plug>(mkdx-unindent) :call mkdx#IndentHandler(0)
noremap <silent> <Plug>(mkdx-indent) :call mkdx#IndentHandler(1)
noremap <silent> <Plug>(mkdx-gx-visual) :call mkdx#gf_visual('x')
noremap <silent> <Plug>(mkdx-gf-visual) :call mkdx#gf_visual('f')
noremap <silent> <Plug>(mkdx-gx) :call mkdx#gf('x')
noremap <silent> <Plug>(mkdx-gf) :call mkdx#gf('f')
noremap <silent> <Plug>(mkdx-o) :call mkdx#OHandler()
noremap <silent> <Plug>(mkdx-shift-o) :call mkdx#ShiftOHandler()
noremap <silent> <Plug>(mkdx-toggle-to-kbd-v) :call mkdx#ToggleToKbd('v')
noremap <silent> <Plug>(mkdx-toggle-to-kbd-n) :call      mkdx#ToggleToKbd()
noremap <silent> <Plug>(mkdx-text-strike-v) :call mkdx#WrapStrike('v')
noremap <silent> <expr> <Plug>(mkdx-text-inline-code-v) mkdx#WrapSelectionInCode()
noremap <silent> <Plug>(mkdx-text-bold-v) :call mkdx#WrapText('v', g:mkdx#settings.tokens.bold, g:mkdx#settings.tokens.bold)
noremap <silent> <Plug>(mkdx-text-italic-v) :call mkdx#WrapText('v', g:mkdx#settings.tokens.italic, g:mkdx#settings.tokens.italic)
noremap <silent> <Plug>(mkdx-text-strike-n) :call mkdx#WrapStrike('n', 'mkdx-text-strike-n')
noremap <silent> <Plug>(mkdx-text-inline-code-n) :call mkdx#WrapText('n', '`', '`', 'mkdx-text-inline-code-n')
noremap <silent> <Plug>(mkdx-text-bold-n) :call mkdx#WrapText('n', g:mkdx#settings.tokens.bold, g:mkdx#settings.tokens.bold, 'mkdx-text-bold-n')
noremap <silent> <Plug>(mkdx-text-italic-n) :call mkdx#WrapText('n', g:mkdx#settings.tokens.italic, g:mkdx#settings.tokens.italic, 'mkdx-text-italic-n')
noremap <silent> <Plug>(mkdx-gen-or-upd-toc) :call      mkdx#GenerateOrUpdateTOC()
noremap <silent> <Plug>(mkdx-update-toc) :call      mkdx#UpdateTOC()
noremap <silent> <Plug>(mkdx-generate-toc) :call      mkdx#GenerateTOC()
noremap <silent> <Plug>(mkdx-quickfix-toc) :call      mkdx#QuickfixHeaders()
noremap <silent> <Plug>(mkdx-quickfix-links) :call      mkdx#QuickfixDeadLinks()
noremap <silent> <Plug>(mkdx-tableize) :call      mkdx#Tableize():call mkdx#MaybeRestoreVisual()
noremap <silent> <Plug>(mkdx-jump-to-header) :call      mkdx#JumpToHeader()
noremap <silent> <Plug>(mkdx-wrap-link-v) :call      mkdx#WrapLink('v')
noremap <silent> <Plug>(mkdx-wrap-link-n) :call mkdx#WrapLink()
noremap <silent> <Plug>(mkdx-promote-header) :call mkdx#ToggleHeader(1)
noremap <silent> <Plug>(mkdx-demote-header) :call mkdx#ToggleHeader()
noremap <silent> <Plug>(mkdx-toggle-list-v) :call      mkdx#ToggleList():call mkdx#MaybeRestoreVisual()
noremap <silent> <Plug>(mkdx-toggle-list-n) :call      mkdx#ToggleList()
noremap <silent> <Plug>(mkdx-toggle-checklist-v) :call      mkdx#ToggleChecklist():call mkdx#MaybeRestoreVisual()
noremap <silent> <Plug>(mkdx-toggle-checklist-n) :call      mkdx#ToggleChecklist()
noremap <silent> <Plug>(mkdx-toggle-checkbox-v) :call      mkdx#ToggleCheckboxTask():call mkdx#MaybeRestoreVisual()
noremap <silent> <Plug>(mkdx-toggle-checkbox-n) :call      mkdx#ToggleCheckboxTask()
noremap <silent> <Plug>(mkdx-toggle-quote-v) :call      mkdx#ToggleQuoteSelection():call mkdx#MaybeRestoreVisual()
noremap <silent> <Plug>(mkdx-toggle-quote-n) :call      mkdx#ToggleQuote()
noremap <silent> <Plug>(mkdx-checkbox-prev-v) :call      mkdx#ToggleCheckboxState(1):call mkdx#MaybeRestoreVisual()
noremap <silent> <Plug>(mkdx-checkbox-next-v) :call      mkdx#ToggleCheckboxState():call mkdx#MaybeRestoreVisual()
noremap <silent> <Plug>(mkdx-checkbox-prev-n) :call      mkdx#ToggleCheckboxState(1)
noremap <silent> <Plug>(mkdx-checkbox-next-n) :call      mkdx#ToggleCheckboxState()
noremap <silent> <Plug>(mkdx-toggle-list) :call      mkdx#ToggleList()
noremap <silent> <Plug>(mkdx-toggle-checklist) :call      mkdx#ToggleChecklist()
noremap <silent> <Plug>(mkdx-toggle-checkbox) :call      mkdx#ToggleCheckboxTask()
noremap <silent> <Plug>(mkdx-toggle-quote) :call      mkdx#ToggleQuote()
noremap <silent> <Plug>(mkdx-checkbox-prev) :call      mkdx#ToggleCheckboxState(1)
noremap <silent> <Plug>(mkdx-checkbox-next) :call      mkdx#ToggleCheckboxState()
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
tnoremap <silent> <Plug>(fzf-normal) 
tnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <Plug>(fzf-normal) <Nop>
nnoremap <silent> <Plug>(fzf-insert) i
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
nnoremap <silent> <Plug>unimpairedTPNext :exe "p".(v:count ? v:count : "")."tnext"
nnoremap <silent> <Plug>unimpairedTPPrevious :exe "p".(v:count ? v:count : "")."tprevious"
nnoremap <silent> <Plug>(unimpaired-ptnext) :exe v:count1 . "ptnext"
nnoremap <silent> <Plug>(unimpaired-ptprevious) :exe v:count1 . "ptprevious"
nnoremap <silent> <Plug>unimpairedTLast :exe "".(v:count ? v:count : "")."tlast"
nnoremap <silent> <Plug>unimpairedTFirst :exe "".(v:count ? v:count : "")."tfirst"
nnoremap <silent> <Plug>unimpairedTNext :exe "".(v:count ? v:count : "")."tnext"
nnoremap <silent> <Plug>unimpairedTPrevious :exe "".(v:count ? v:count : "")."tprevious"
nnoremap <silent> <Plug>(unimpaired-tlast) :exe "".(v:count ? v:count : "")."tlast"
nnoremap <silent> <Plug>(unimpaired-tfirst) :exe "".(v:count ? v:count : "")."tfirst"
nnoremap <silent> <Plug>(unimpaired-tnext) :exe "".(v:count ? v:count : "")."tnext"
nnoremap <silent> <Plug>(unimpaired-tprevious) :exe "".(v:count ? v:count : "")."tprevious"
nnoremap <silent> <Plug>unimpairedQNFile :exe "".(v:count ? v:count : "")."cnfile"zv
nnoremap <silent> <Plug>unimpairedQPFile :exe "".(v:count ? v:count : "")."cpfile"zv
nnoremap <silent> <Plug>(unimpaired-cnfile) :exe "".(v:count ? v:count : "")."cnfile"zv
nnoremap <silent> <Plug>(unimpaired-cpfile) :exe "".(v:count ? v:count : "")."cpfile"zv
nnoremap <silent> <Plug>unimpairedQLast :exe "".(v:count ? v:count : "")."clast"zv
nnoremap <silent> <Plug>unimpairedQFirst :exe "".(v:count ? v:count : "")."cfirst"zv
nnoremap <silent> <Plug>unimpairedQNext :exe "".(v:count ? v:count : "")."cnext"zv
nnoremap <silent> <Plug>unimpairedQPrevious :exe "".(v:count ? v:count : "")."cprevious"zv
nnoremap <silent> <Plug>(unimpaired-clast) :exe "".(v:count ? v:count : "")."clast"zv
nnoremap <silent> <Plug>(unimpaired-cfirst) :exe "".(v:count ? v:count : "")."cfirst"zv
nnoremap <silent> <Plug>(unimpaired-cnext) :exe "".(v:count ? v:count : "")."cnext"zv
nnoremap <silent> <Plug>(unimpaired-cprevious) :exe "".(v:count ? v:count : "")."cprevious"zv
nnoremap <silent> <Plug>unimpairedLNFile :exe "".(v:count ? v:count : "")."lnfile"zv
nnoremap <silent> <Plug>unimpairedLPFile :exe "".(v:count ? v:count : "")."lpfile"zv
nnoremap <silent> <Plug>(unimpaired-lnfile) :exe "".(v:count ? v:count : "")."lnfile"zv
nnoremap <silent> <Plug>(unimpaired-lpfile) :exe "".(v:count ? v:count : "")."lpfile"zv
nnoremap <silent> <Plug>unimpairedLLast :exe "".(v:count ? v:count : "")."llast"zv
nnoremap <silent> <Plug>unimpairedLFirst :exe "".(v:count ? v:count : "")."lfirst"zv
nnoremap <silent> <Plug>unimpairedLNext :exe "".(v:count ? v:count : "")."lnext"zv
nnoremap <silent> <Plug>unimpairedLPrevious :exe "".(v:count ? v:count : "")."lprevious"zv
nnoremap <silent> <Plug>(unimpaired-llast) :exe "".(v:count ? v:count : "")."llast"zv
nnoremap <silent> <Plug>(unimpaired-lfirst) :exe "".(v:count ? v:count : "")."lfirst"zv
nnoremap <silent> <Plug>(unimpaired-lnext) :exe "".(v:count ? v:count : "")."lnext"zv
nnoremap <silent> <Plug>(unimpaired-lprevious) :exe "".(v:count ? v:count : "")."lprevious"zv
nnoremap <silent> <Plug>unimpairedBLast :exe "".(v:count ? v:count : "")."blast"
nnoremap <silent> <Plug>unimpairedBFirst :exe "".(v:count ? v:count : "")."bfirst"
nnoremap <silent> <Plug>unimpairedBNext :exe "".(v:count ? v:count : "")."bnext"
nnoremap <silent> <Plug>unimpairedBPrevious :exe "".(v:count ? v:count : "")."bprevious"
nnoremap <silent> <Plug>(unimpaired-blast) :exe "".(v:count ? v:count : "")."blast"
nnoremap <silent> <Plug>(unimpaired-bfirst) :exe "".(v:count ? v:count : "")."bfirst"
nnoremap <silent> <Plug>(unimpaired-bnext) :exe "".(v:count ? v:count : "")."bnext"
nnoremap <silent> <Plug>(unimpaired-bprevious) :exe "".(v:count ? v:count : "")."bprevious"
nnoremap <silent> <Plug>unimpairedALast :exe "".(v:count ? v:count : "")."last"
nnoremap <silent> <Plug>unimpairedAFirst :exe "".(v:count ? v:count : "")."first"
nnoremap <silent> <Plug>unimpairedANext :exe "".(v:count ? v:count : "")."next"
nnoremap <silent> <Plug>unimpairedAPrevious :exe "".(v:count ? v:count : "")."previous"
nnoremap <silent> <Plug>(unimpaired-last) :exe "".(v:count ? v:count : "")."last"
nnoremap <silent> <Plug>(unimpaired-first) :exe "".(v:count ? v:count : "")."first"
nnoremap <silent> <Plug>(unimpaired-next) :exe "".(v:count ? v:count : "")."next"
nnoremap <silent> <Plug>(unimpaired-previous) :exe "".(v:count ? v:count : "")."previous"
snoremap <C-R> "_c
snoremap <silent> <C-H> "_c
snoremap <silent> <Del> "_c
snoremap <silent> <BS> "_c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
tnoremap <silent> <F1> :FloatermToggle
nnoremap <silent> <F1> :FloatermToggle
tnoremap <silent> <F2> :FloatermNext
nnoremap <silent> <F2> :FloatermNext
tnoremap <silent> <F3> :FloatermPrev
nnoremap <silent> <F3> :FloatermPrev
tnoremap <silent> <F4> :FloatermNew
nnoremap <silent> <F4> :FloatermNew
nnoremap <silent> <Plug>SurroundRepeat .
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
nnoremap <C-P> :cprevz.
nnoremap <C-N> :cnextz.
map <C-L> l
map <C-K> k
map <C-J> j
nmap <C-H> h
xmap <C-H> h
omap <C-H> h
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"
xmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =UltiSnips#ExpandSnippet()
imap  <Plug>Isurround
xmap ¨ ]
omap ¨ ]
nmap ¨ ]
xnoremap º :m '>+1gv=gv
nnoremap º :m .+1==
xmap è [
omap è [
nmap è [
xnoremap ∆ :m '<-2gv=gv
nnoremap ∆ :m .-2==
inoremap jk 
cnoremap jk 
abbr :tick: ✓
abbr :cross: 𐄂
abbr :?: ❓
abbr :!: ❗
abbr :boom: 💥
abbr :gem: 💎
abbr :computer: 💻
abbr :email: 📧
abbr :telephone: 📞
abbr :wrench: 🔧
abbr :link: 🔗
abbr :book: 📚
abbr :point_right: 👉
abbr :pencil: 📝
abbr :construction: 🚧
abbr :pill: 💊
abbr :bomb: 💣
abbr :pushpin: 📌
abbr :bulb: 💡
abbr :warning: ⚠️
abbr :check: ✅
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set autoread
set autowriteall
set background=dark
set backspace=indent,eol,start
set completeopt=menu,preview,noinsert,menuone
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fillchars=vert:|,fold:-,eob:~,vert:\ ,stl:\ ,stlnc:\ 
set formatlistpat=^\\s*\\%(\\(-\\|\\*\\|+\\)\\|\\(\\C\\%(\\d\\+\\.\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX-]\\)\\]\\s\\)\\?
set helplang=fr
set hidden
set history=100
set hlsearch
set ignorecase
set incsearch
set iskeyword=@,48-57,_,192-255,-
set laststatus=0
set listchars=tab:>-,eol:<,nbsp:%,trail:$
set mouse=a
set path=.,/usr/include,,,**
set pumheight=15
set runtimepath=
set runtimepath+=~/.vim
set runtimepath+=~/.vim/bundle/Vundle.vim
set runtimepath+=~/.vim/bundle/gruvbox
set runtimepath+=~/.vim/bundle/vim-airline
set runtimepath+=~/.vim/bundle/vim-commentary
set runtimepath+=~/.vim/bundle/vim-surround
set runtimepath+=~/.vim/bundle/vim-floaterm
set runtimepath+=~/.vim/bundle/vimwiki
set runtimepath+=~/.vim/bundle/mkdx
set runtimepath+=~/.vim/bundle/goyo.vim
set runtimepath+=~/.vim/bundle/vifm.vim
set runtimepath+=~/.vim/bundle/ultisnips
set runtimepath+=~/.vim/bundle/vim-snippets
set runtimepath+=~/.vim/bundle/vim-unimpaired
set runtimepath+=~/.vim/bundle/markdown-preview.nvim
set runtimepath+=~/.vim/bundle/vim-fugitive
set runtimepath+=~/.vim/bundle/nerdtree
set runtimepath+=~/.vim/bundle/fzf.vim
set runtimepath+=~/.vim/bundle/fzf
set runtimepath+=/usr/local/share/vim/vimfiles
set runtimepath+=/usr/local/share/vim/vim82
set runtimepath+=/usr/local/share/vim/vimfiles/after
set runtimepath+=~/.vim/after
set runtimepath+=~/.vim/bundle/Vundle.vim
set runtimepath+=~/.vim/bundle/Vundle.vim/after
set runtimepath+=~/.vim/bundle/gruvbox/after
set runtimepath+=~/.vim/bundle/vim-airline/after
set runtimepath+=~/.vim/bundle/vim-commentary/after
set runtimepath+=~/.vim/bundle/vim-surround/after
set runtimepath+=~/.vim/bundle/vim-floaterm/after
set runtimepath+=~/.vim/bundle/vimwiki/after
set runtimepath+=~/.vim/bundle/mkdx/after
set runtimepath+=~/.vim/bundle/goyo.vim/after
set runtimepath+=~/.vim/bundle/vifm.vim/after
set runtimepath+=~/.vim/bundle/ultisnips/after
set runtimepath+=~/.vim/bundle/vim-snippets/after
set runtimepath+=~/.vim/bundle/vim-unimpaired/after
set runtimepath+=~/.vim/bundle/markdown-preview.nvim/after
set runtimepath+=~/.vim/bundle/vim-fugitive/after
set runtimepath+=~/.vim/bundle/nerdtree/after
set runtimepath+=~/.vim/bundle/fzf.vim/after
set runtimepath+=~/.vim/bundle/fzf/after
set scrolloff=2
set shiftwidth=4
set showtabline=0
set sidescroll=1
set smartcase
set spelllang=fr
set noswapfile
set tabstop=4
set tags=tags;
set title
set viminfo='100,<50,s10,h,n~/.vim/viminfo
set visualbell
set wildmenu
set winwidth=1
set nowritebackup
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Google\ Drive/vimwiki
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +91 ~/Google\ Drive/vimwiki/index.md
badd +538 ~/Google\ Drive/vimwiki/shell/vim/vim-basics.md
argglobal
%argdel
$argadd index.md
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/Google\ Drive/vimwiki/shell/vim/vim-basics.md
argglobal
balt ~/Google\ Drive/vimwiki/index.md
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <C-L><C-M> <Plug>VimwikiListToggle
imap <buffer> <C-L><C-K> <Plug>VimwikiListPrevSymbol
imap <buffer> <C-L><C-J> <Plug>VimwikiListNextSymbol
imap <buffer> <C-T> <Plug>VimwikiIncreaseLvlSingleItem
imap <buffer> <C-D> <Plug>VimwikiDecreaseLvlSingleItem
inoremap <buffer> <silent> <Plug>MarkdownPreviewToggle :MarkdownPreviewToggle
inoremap <buffer> <silent> <Plug>MarkdownPreviewStop :MarkdownPreviewStopa
inoremap <buffer> <silent> <Plug>MarkdownPreview :MarkdownPreviewa
inoremap <buffer> <silent> <S-CR> :VimwikiReturn 2 2
imap <buffer> <silent> <C-P> <Plug>(mkdx-ctrl-p-compl)
imap <buffer> <silent> <C-N> <Plug>(mkdx-ctrl-n-compl)
xmap <buffer> <silent> 	 <Plug>(mkdx-indent)
nmap <buffer> 	 <Plug>VimwikiNextLink
xmap <buffer>  <Plug>VimwikiNormalizeLinkVisualCR
nmap <buffer>  <Plug>VimwikiFollowLink
nmap <buffer>  wr <Plug>VimwikiRenameFile
nmap <buffer>  wd <Plug>VimwikiDeleteFile
nmap <buffer>  wn <Plug>VimwikiGoto
nmap <buffer>  whh <Plug>Vimwiki2HTMLBrowse
nmap <buffer>  wh <Plug>Vimwiki2HTML
vmap <buffer>  k <Plug>(mkdx-toggle-to-kbd-v)
nmap <buffer>  k <Plug>(mkdx-toggle-to-kbd-n)
nmap <buffer>  L <Plug>(mkdx-quickfix-links)
nmap <buffer>  I <Plug>(mkdx-quickfix-toc)
nmap <buffer>  i <Plug>(mkdx-gen-or-upd-toc)
vmap <buffer>  , <Plug>(mkdx-tableize)
vmap <buffer>  s <Plug>(mkdx-text-strike-v)
nmap <buffer>  s <Plug>(mkdx-text-strike-n)
vmap <buffer>  ` <Plug>(mkdx-text-inline-code-v)
nmap <buffer>  ` <Plug>(mkdx-text-inline-code-n)
vmap <buffer>  b <Plug>(mkdx-text-bold-v)
nmap <buffer>  b <Plug>(mkdx-text-bold-n)
vmap <buffer>  / <Plug>(mkdx-text-italic-v)
nmap <buffer>  / <Plug>(mkdx-text-italic-n)
vmap <buffer>  ln <Plug>(mkdx-wrap-link-v)
nmap <buffer>  ln <Plug>(mkdx-wrap-link-n)
vmap <buffer>  ll <Plug>(mkdx-toggle-list-v)
nmap <buffer>  ll <Plug>(mkdx-toggle-list-n)
vmap <buffer>  lt <Plug>(mkdx-toggle-checklist-v)
nmap <buffer>  lt <Plug>(mkdx-toggle-checklist-n)
vmap <buffer>  t <Plug>(mkdx-toggle-checkbox-v)
nmap <buffer>  t <Plug>(mkdx-toggle-checkbox-n)
vmap <buffer>  ' <Plug>(mkdx-toggle-quote-v)
nmap <buffer>  ' <Plug>(mkdx-toggle-quote-n)
nmap <buffer>  ] <Plug>(mkdx-demote-header)
nmap <buffer>  [ <Plug>(mkdx-promote-header)
vmap <buffer>  = <Plug>(mkdx-checkbox-next-v)
vmap <buffer>  - <Plug>(mkdx-checkbox-prev-v)
nmap <buffer>  = <Plug>(mkdx-checkbox-next-n)
nmap <buffer>  - <Plug>(mkdx-checkbox-prev-n)
xmap <buffer> + <Plug>VimwikiNormalizeLinkVisual
nmap <buffer> + <Plug>VimwikiNormalizeLink
nmap <buffer> - <Plug>VimwikiRemoveHeaderLevel
nmap <buffer> = <Plug>VimwikiAddHeaderLevel
nmap <buffer> O <Plug>VimwikiListO
nmap <buffer> [= <Plug>VimwikiGoToPrevSiblingHeader
nmap <buffer> [u <Plug>VimwikiGoToParentHeader
nmap <buffer> [[ <Plug>VimwikiGoToPrevHeader
nmap <buffer> ]= <Plug>VimwikiGoToNextSiblingHeader
nmap <buffer> ]u <Plug>VimwikiGoToParentHeader
nmap <buffer> ]] <Plug>VimwikiGoToNextHeader
xmap <buffer> al <Plug>VimwikiTextObjListChildrenV
xmap <buffer> ac <Plug>VimwikiTextObjColumnV
xmap <buffer> a\ <Plug>VimwikiTextObjTableCellV
xmap <buffer> aH <Plug>VimwikiTextObjHeaderSubV
xmap <buffer> ah <Plug>VimwikiTextObjHeaderV
omap <buffer> al <Plug>VimwikiTextObjListChildren
omap <buffer> ac <Plug>VimwikiTextObjColumn
omap <buffer> a\ <Plug>VimwikiTextObjTableCell
omap <buffer> aH <Plug>VimwikiTextObjHeaderSub
omap <buffer> ah <Plug>VimwikiTextObjHeader
xnoremap <buffer> <silent> gl- :VimwikiChangeSymbolTo -
nnoremap <buffer> <silent> gl- :VimwikiChangeSymbolTo -
xnoremap <buffer> <silent> gL- :VimwikiChangeSymbolInListTo -
nnoremap <buffer> <silent> gL- :VimwikiChangeSymbolInListTo -
xnoremap <buffer> <silent> gl* :VimwikiChangeSymbolTo *
nnoremap <buffer> <silent> gl* :VimwikiChangeSymbolTo *
xnoremap <buffer> <silent> gL* :VimwikiChangeSymbolInListTo *
nnoremap <buffer> <silent> gL* :VimwikiChangeSymbolInListTo *
xnoremap <buffer> <silent> gl+ :VimwikiChangeSymbolTo +
nnoremap <buffer> <silent> gl+ :VimwikiChangeSymbolTo +
xnoremap <buffer> <silent> gL+ :VimwikiChangeSymbolInListTo +
nnoremap <buffer> <silent> gL+ :VimwikiChangeSymbolInListTo +
xnoremap <buffer> <silent> gl1 :VimwikiChangeSymbolTo 1.
nnoremap <buffer> <silent> gl1 :VimwikiChangeSymbolTo 1.
xnoremap <buffer> <silent> gL1 :VimwikiChangeSymbolInListTo 1.
nnoremap <buffer> <silent> gL1 :VimwikiChangeSymbolInListTo 1.
onoremap <buffer> <silent> gL1 :VimwikiChangeSymbolInListTo 1.
onoremap <buffer> <silent> gl1 :VimwikiChangeSymbolTo 1.
onoremap <buffer> <silent> gL+ :VimwikiChangeSymbolInListTo +
onoremap <buffer> <silent> gl+ :VimwikiChangeSymbolTo +
onoremap <buffer> <silent> gL* :VimwikiChangeSymbolInListTo *
onoremap <buffer> <silent> gl* :VimwikiChangeSymbolTo *
onoremap <buffer> <silent> gL- :VimwikiChangeSymbolInListTo -
onoremap <buffer> <silent> gl- :VimwikiChangeSymbolTo -
xmap <buffer> glp <Plug>VimwikiDecrementListItem
xmap <buffer> gln <Plug>VimwikiIncrementListItem
xmap <buffer> glx <Plug>VimwikiToggleRejectedListItem
xmap <buffer> gf <Plug>(mkdx-gf-visual)
nmap <buffer> gw1 <Plug>VimwikiTableAlignW1
nmap <buffer> gww <Plug>VimwikiTableAlignW
nmap <buffer> gq1 <Plug>VimwikiTableAlignQ1
nmap <buffer> gqq <Plug>VimwikiTableAlignQ
nmap <buffer> gL <Plug>VimwikiRemoveCBInList
nmap <buffer> gl <Plug>VimwikiRemoveSingleCB
nmap <buffer> gLR <Plug>VimwikiRenumberAllLists
nmap <buffer> gLr <Plug>VimwikiRenumberAllLists
nmap <buffer> glr <Plug>VimwikiRenumberList
nmap <buffer> gLL <Plug>VimwikiIncreaseLvlWholeItem
nmap <buffer> gLl <Plug>VimwikiIncreaseLvlWholeItem
nmap <buffer> gLH <Plug>VimwikiDecreaseLvlWholeItem
nmap <buffer> gLh <Plug>VimwikiDecreaseLvlWholeItem
nmap <buffer> gll <Plug>VimwikiIncreaseLvlSingleItem
nmap <buffer> glh <Plug>VimwikiDecreaseLvlSingleItem
nmap <buffer> glp <Plug>VimwikiDecrementListItem
nmap <buffer> gln <Plug>VimwikiIncrementListItem
nmap <buffer> glx <Plug>VimwikiToggleRejectedListItem
nmap <buffer> gnt <Plug>VimwikiNextTask
nmap <buffer> <silent> gx <Plug>(mkdx-gx)
nmap <buffer> <silent> gf <Plug>(mkdx-gf)
xmap <buffer> il <Plug>VimwikiTextObjListSingleV
xmap <buffer> ic <Plug>VimwikiTextObjColumnInnerV
xmap <buffer> i\ <Plug>VimwikiTextObjTableCellInnerV
xmap <buffer> iH <Plug>VimwikiTextObjHeaderSubContentV
xmap <buffer> ih <Plug>VimwikiTextObjHeaderContentV
omap <buffer> il <Plug>VimwikiTextObjListSingle
omap <buffer> ic <Plug>VimwikiTextObjColumnInner
omap <buffer> i\ <Plug>VimwikiTextObjTableCellInner
omap <buffer> iH <Plug>VimwikiTextObjHeaderSubContent
omap <buffer> ih <Plug>VimwikiTextObjHeaderContent
nmap <buffer> o <Plug>VimwikiListo
nnoremap <buffer> <silent> <Plug>VimwikiGoToPrevSiblingHeader :call vimwiki#base#goto_sibling(-1)
nnoremap <buffer> <silent> <Plug>VimwikiGoToNextSiblingHeader :call vimwiki#base#goto_sibling(+1)
nnoremap <buffer> <silent> <Plug>VimwikiGoToPrevHeader :call vimwiki#base#goto_prev_header()
nnoremap <buffer> <silent> <Plug>VimwikiGoToNextHeader :call vimwiki#base#goto_next_header()
nnoremap <buffer> <silent> <Plug>VimwikiGoToParentHeader :call vimwiki#base#goto_parent_header()
nnoremap <buffer> <silent> <Plug>VimwikiRemoveHeaderLevel :call vimwiki#base#RemoveHeaderLevel(v:count)
nnoremap <buffer> <silent> <Plug>VimwikiAddHeaderLevel :call vimwiki#base#AddHeaderLevel(v:count)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjListSingleV :call vimwiki#lst#TO_list_item(1, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjListSingle :call vimwiki#lst#TO_list_item(1, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjListChildrenV :call vimwiki#lst#TO_list_item(0, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjListChildren :call vimwiki#lst#TO_list_item(0, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjColumnInnerV :call vimwiki#base#TO_table_col(1, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjColumnInner :call vimwiki#base#TO_table_col(1, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjColumnV :call vimwiki#base#TO_table_col(0, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjColumn :call vimwiki#base#TO_table_col(0, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjTableCellInnerV :call vimwiki#base#TO_table_cell(1, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjTableCellInner :call vimwiki#base#TO_table_cell(1, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjTableCellV :call vimwiki#base#TO_table_cell(0, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjTableCell :call vimwiki#base#TO_table_cell(0, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSubContentV :call vimwiki#base#TO_header(1, 1, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSubContent :call vimwiki#base#TO_header(1, 1, v:count1)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSubV :call vimwiki#base#TO_header(0, 1, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSub :call vimwiki#base#TO_header(0, 1, v:count1)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderContentV :call vimwiki#base#TO_header(1, 0, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderContent :call vimwiki#base#TO_header(1, 0, v:count1)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderV :call vimwiki#base#TO_header(0, 0, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeader :call vimwiki#base#TO_header(0, 0, v:count1)
nmap <buffer> <M-Right> <Plug>VimwikiTableMoveColumnRight
nmap <buffer> <M-Left> <Plug>VimwikiTableMoveColumnLeft
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignW1 :VimwikiTableAlignW 2
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignW :VimwikiTableAlignW
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignQ1 :VimwikiTableAlignQ 2
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignQ :VimwikiTableAlignQ
vmap <buffer> <C-@> <Plug>VimwikiToggleListItem
vmap <buffer> <Nul> <Plug>VimwikiToggleListItem
nmap <buffer> <C-@> <Plug>VimwikiToggleListItem
nmap <buffer> <Nul> <Plug>VimwikiToggleListItem
vmap <buffer> <C-Space> <Plug>VimwikiToggleListItem
nmap <buffer> <C-Space> <Plug>VimwikiToggleListItem
nnoremap <buffer> <silent> <Plug>VimwikiListO :call vimwiki#u#count_exe('call vimwiki#lst#kbd_O()')
nnoremap <buffer> <silent> <Plug>VimwikiListo :call vimwiki#u#count_exe('call vimwiki#lst#kbd_o()')
nmap <buffer> <C-Up> <Plug>VimwikiDiaryPrevDay
nmap <buffer> <C-Down> <Plug>VimwikiDiaryNextDay
nmap <buffer> <BS> <Plug>VimwikiGoBackLink
nmap <buffer> <C-S-CR> <Plug>VimwikiTabnewLink
nmap <buffer> <D-CR> <Plug>VimwikiTabnewLink
nmap <buffer> <C-CR> <Plug>VimwikiVSplitLink
nmap <buffer> <S-CR> <Plug>VimwikiSplitLink
nnoremap <buffer> <silent> <Plug>MarkdownPreviewToggle :MarkdownPreviewToggle
noremap <buffer> <silent> <Plug>MarkdownPreviewStop :MarkdownPreviewStop
noremap <buffer> <silent> <Plug>MarkdownPreview :MarkdownPreview
vmap <buffer> <silent> <S-Tab> <Plug>(mkdx-unindent)
nmap <buffer> <S-Tab> <Plug>VimwikiPrevLink
imap <buffer>  <Plug>VimwikiDecreaseLvlSingleItem
imap <buffer>  <Plug>VimwikiListToggle
imap <buffer>  <Plug>VimwikiListPrevSymbol
imap <buffer> <NL> <Plug>VimwikiListNextSymbol
inoremap <buffer> <silent>  :VimwikiReturn 1 5
imap <buffer> <silent>  <Plug>(mkdx-ctrl-n-compl)
imap <buffer> <silent>  <Plug>(mkdx-ctrl-p-compl)
imap <buffer>  <Plug>VimwikiIncreaseLvlSingleItem
imap <buffer> <silent> # <Plug>(mkdx-link-compl)
imap <buffer> <	 <Plug>(mkdx-insert-kbd)
imap <buffer> ``` <Plug>(mkdx-fence-backtick)
imap <buffer> ~~~ <Plug>(mkdx-fence-tilde)
cabbr <buffer> q! let b:quitting_bang = 1 | q!
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
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=
setlocal commentstring=%%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=mkdx#Complete
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
if &filetype != 'vimwiki'
setlocal filetype=vimwiki
endif
setlocal fixendofline
set foldcolumn=2
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\%(\\(-\\|\\*\\|+\\)\\|\\(\\C\\%(\\d\\+\\.\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX-]\\)\\]\\s\\)\\?
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=Complete_wikifiles
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=fr
setlocal spelloptions=
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.md
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'vimwiki'
setlocal syntax=vimwiki
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 541 - ((34 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 541
normal! 0
lcd ~/Google\ Drive/vimwiki/shell/vim
tabnext
edit ~/Google\ Drive/vimwiki/shell/vim/vim-basics.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
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
exe '1resize ' . ((&lines * 2 + 22) / 44)
exe '2resize ' . ((&lines * 38 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 34 + 75) / 151)
exe '3resize ' . ((&lines * 38 + 22) / 44)
exe 'vert 3resize ' . ((&columns * 81 + 75) / 151)
exe '4resize ' . ((&lines * 38 + 22) / 44)
exe 'vert 4resize ' . ((&columns * 34 + 75) / 151)
exe '5resize ' . ((&lines * 1 + 22) / 44)
argglobal
enew
balt ~/Google\ Drive/vimwiki/shell/vim/vim-basics.md
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=wipe
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
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
if &filetype != ''
setlocal filetype=
endif
setlocal fixendofline
set foldcolumn=2
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\%(\\(-\\|\\*\\|+\\)\\|\\(\\C\\%(\\d\\+\\.\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX-]\\)\\]\\s\\)\\?
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
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
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=fr
setlocal spelloptions=
setlocal statusline=\ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal winfixheight
setlocal winfixwidth
setlocal wrap
setlocal wrapmargin=0
lcd ~/Google\ Drive/vimwiki/shell/vim
wincmd w
argglobal
enew
balt ~/Google\ Drive/vimwiki/shell/vim/vim-basics.md
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=wipe
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
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
if &filetype != ''
setlocal filetype=
endif
setlocal fixendofline
set foldcolumn=2
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\%(\\(-\\|\\*\\|+\\)\\|\\(\\C\\%(\\d\\+\\.\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX-]\\)\\]\\s\\)\\?
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
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
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=fr
setlocal spelloptions=
setlocal statusline=\ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal winfixheight
setlocal winfixwidth
setlocal wrap
setlocal wrapmargin=0
lcd ~/Google\ Drive/vimwiki/shell/vim
wincmd w
argglobal
balt ~/Google\ Drive/vimwiki/index.md
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <C-L><C-M> <Plug>VimwikiListToggle
imap <buffer> <C-L><C-K> <Plug>VimwikiListPrevSymbol
imap <buffer> <C-L><C-J> <Plug>VimwikiListNextSymbol
imap <buffer> <C-T> <Plug>VimwikiIncreaseLvlSingleItem
imap <buffer> <C-D> <Plug>VimwikiDecreaseLvlSingleItem
inoremap <buffer> <silent> <Plug>MarkdownPreviewToggle :MarkdownPreviewToggle
inoremap <buffer> <silent> <Plug>MarkdownPreviewStop :MarkdownPreviewStopa
inoremap <buffer> <silent> <Plug>MarkdownPreview :MarkdownPreviewa
inoremap <buffer> <silent> <S-CR> :VimwikiReturn 2 2
imap <buffer> <silent> <C-P> <Plug>(mkdx-ctrl-p-compl)
imap <buffer> <silent> <C-N> <Plug>(mkdx-ctrl-n-compl)
xmap <buffer> <silent> 	 <Plug>(mkdx-indent)
nmap <buffer> 	 <Plug>VimwikiNextLink
xmap <buffer>  <Plug>VimwikiNormalizeLinkVisualCR
nmap <buffer>  <Plug>VimwikiFollowLink
nmap <buffer>  wr <Plug>VimwikiRenameFile
nmap <buffer>  wd <Plug>VimwikiDeleteFile
nmap <buffer>  wn <Plug>VimwikiGoto
nmap <buffer>  whh <Plug>Vimwiki2HTMLBrowse
nmap <buffer>  wh <Plug>Vimwiki2HTML
vmap <buffer>  k <Plug>(mkdx-toggle-to-kbd-v)
nmap <buffer>  k <Plug>(mkdx-toggle-to-kbd-n)
nmap <buffer>  L <Plug>(mkdx-quickfix-links)
nmap <buffer>  I <Plug>(mkdx-quickfix-toc)
nmap <buffer>  i <Plug>(mkdx-gen-or-upd-toc)
vmap <buffer>  , <Plug>(mkdx-tableize)
vmap <buffer>  s <Plug>(mkdx-text-strike-v)
nmap <buffer>  s <Plug>(mkdx-text-strike-n)
vmap <buffer>  ` <Plug>(mkdx-text-inline-code-v)
nmap <buffer>  ` <Plug>(mkdx-text-inline-code-n)
vmap <buffer>  b <Plug>(mkdx-text-bold-v)
nmap <buffer>  b <Plug>(mkdx-text-bold-n)
vmap <buffer>  / <Plug>(mkdx-text-italic-v)
nmap <buffer>  / <Plug>(mkdx-text-italic-n)
vmap <buffer>  ln <Plug>(mkdx-wrap-link-v)
nmap <buffer>  ln <Plug>(mkdx-wrap-link-n)
vmap <buffer>  ll <Plug>(mkdx-toggle-list-v)
nmap <buffer>  ll <Plug>(mkdx-toggle-list-n)
vmap <buffer>  lt <Plug>(mkdx-toggle-checklist-v)
nmap <buffer>  lt <Plug>(mkdx-toggle-checklist-n)
vmap <buffer>  t <Plug>(mkdx-toggle-checkbox-v)
nmap <buffer>  t <Plug>(mkdx-toggle-checkbox-n)
vmap <buffer>  ' <Plug>(mkdx-toggle-quote-v)
nmap <buffer>  ' <Plug>(mkdx-toggle-quote-n)
nmap <buffer>  ] <Plug>(mkdx-demote-header)
nmap <buffer>  [ <Plug>(mkdx-promote-header)
vmap <buffer>  = <Plug>(mkdx-checkbox-next-v)
vmap <buffer>  - <Plug>(mkdx-checkbox-prev-v)
nmap <buffer>  = <Plug>(mkdx-checkbox-next-n)
nmap <buffer>  - <Plug>(mkdx-checkbox-prev-n)
xmap <buffer> + <Plug>VimwikiNormalizeLinkVisual
nmap <buffer> + <Plug>VimwikiNormalizeLink
nmap <buffer> - <Plug>VimwikiRemoveHeaderLevel
nmap <buffer> = <Plug>VimwikiAddHeaderLevel
nmap <buffer> O <Plug>VimwikiListO
nmap <buffer> [= <Plug>VimwikiGoToPrevSiblingHeader
nmap <buffer> [u <Plug>VimwikiGoToParentHeader
nmap <buffer> [[ <Plug>VimwikiGoToPrevHeader
nmap <buffer> ]= <Plug>VimwikiGoToNextSiblingHeader
nmap <buffer> ]u <Plug>VimwikiGoToParentHeader
nmap <buffer> ]] <Plug>VimwikiGoToNextHeader
xmap <buffer> al <Plug>VimwikiTextObjListChildrenV
xmap <buffer> ac <Plug>VimwikiTextObjColumnV
xmap <buffer> a\ <Plug>VimwikiTextObjTableCellV
xmap <buffer> aH <Plug>VimwikiTextObjHeaderSubV
xmap <buffer> ah <Plug>VimwikiTextObjHeaderV
omap <buffer> al <Plug>VimwikiTextObjListChildren
omap <buffer> ac <Plug>VimwikiTextObjColumn
omap <buffer> a\ <Plug>VimwikiTextObjTableCell
omap <buffer> aH <Plug>VimwikiTextObjHeaderSub
omap <buffer> ah <Plug>VimwikiTextObjHeader
xnoremap <buffer> <silent> gl- :VimwikiChangeSymbolTo -
nnoremap <buffer> <silent> gl- :VimwikiChangeSymbolTo -
xnoremap <buffer> <silent> gL- :VimwikiChangeSymbolInListTo -
nnoremap <buffer> <silent> gL- :VimwikiChangeSymbolInListTo -
xnoremap <buffer> <silent> gl* :VimwikiChangeSymbolTo *
nnoremap <buffer> <silent> gl* :VimwikiChangeSymbolTo *
xnoremap <buffer> <silent> gL* :VimwikiChangeSymbolInListTo *
nnoremap <buffer> <silent> gL* :VimwikiChangeSymbolInListTo *
xnoremap <buffer> <silent> gl+ :VimwikiChangeSymbolTo +
nnoremap <buffer> <silent> gl+ :VimwikiChangeSymbolTo +
xnoremap <buffer> <silent> gL+ :VimwikiChangeSymbolInListTo +
nnoremap <buffer> <silent> gL+ :VimwikiChangeSymbolInListTo +
xnoremap <buffer> <silent> gl1 :VimwikiChangeSymbolTo 1.
nnoremap <buffer> <silent> gl1 :VimwikiChangeSymbolTo 1.
xnoremap <buffer> <silent> gL1 :VimwikiChangeSymbolInListTo 1.
nnoremap <buffer> <silent> gL1 :VimwikiChangeSymbolInListTo 1.
onoremap <buffer> <silent> gL1 :VimwikiChangeSymbolInListTo 1.
onoremap <buffer> <silent> gl1 :VimwikiChangeSymbolTo 1.
onoremap <buffer> <silent> gL+ :VimwikiChangeSymbolInListTo +
onoremap <buffer> <silent> gl+ :VimwikiChangeSymbolTo +
onoremap <buffer> <silent> gL* :VimwikiChangeSymbolInListTo *
onoremap <buffer> <silent> gl* :VimwikiChangeSymbolTo *
onoremap <buffer> <silent> gL- :VimwikiChangeSymbolInListTo -
onoremap <buffer> <silent> gl- :VimwikiChangeSymbolTo -
xmap <buffer> glp <Plug>VimwikiDecrementListItem
xmap <buffer> gln <Plug>VimwikiIncrementListItem
xmap <buffer> glx <Plug>VimwikiToggleRejectedListItem
xmap <buffer> gf <Plug>(mkdx-gf-visual)
nmap <buffer> gw1 <Plug>VimwikiTableAlignW1
nmap <buffer> gww <Plug>VimwikiTableAlignW
nmap <buffer> gq1 <Plug>VimwikiTableAlignQ1
nmap <buffer> gqq <Plug>VimwikiTableAlignQ
nmap <buffer> gL <Plug>VimwikiRemoveCBInList
nmap <buffer> gl <Plug>VimwikiRemoveSingleCB
nmap <buffer> gLR <Plug>VimwikiRenumberAllLists
nmap <buffer> gLr <Plug>VimwikiRenumberAllLists
nmap <buffer> glr <Plug>VimwikiRenumberList
nmap <buffer> gLL <Plug>VimwikiIncreaseLvlWholeItem
nmap <buffer> gLl <Plug>VimwikiIncreaseLvlWholeItem
nmap <buffer> gLH <Plug>VimwikiDecreaseLvlWholeItem
nmap <buffer> gLh <Plug>VimwikiDecreaseLvlWholeItem
nmap <buffer> gll <Plug>VimwikiIncreaseLvlSingleItem
nmap <buffer> glh <Plug>VimwikiDecreaseLvlSingleItem
nmap <buffer> glp <Plug>VimwikiDecrementListItem
nmap <buffer> gln <Plug>VimwikiIncrementListItem
nmap <buffer> glx <Plug>VimwikiToggleRejectedListItem
nmap <buffer> gnt <Plug>VimwikiNextTask
nmap <buffer> <silent> gx <Plug>(mkdx-gx)
nmap <buffer> <silent> gf <Plug>(mkdx-gf)
xmap <buffer> il <Plug>VimwikiTextObjListSingleV
xmap <buffer> ic <Plug>VimwikiTextObjColumnInnerV
xmap <buffer> i\ <Plug>VimwikiTextObjTableCellInnerV
xmap <buffer> iH <Plug>VimwikiTextObjHeaderSubContentV
xmap <buffer> ih <Plug>VimwikiTextObjHeaderContentV
omap <buffer> il <Plug>VimwikiTextObjListSingle
omap <buffer> ic <Plug>VimwikiTextObjColumnInner
omap <buffer> i\ <Plug>VimwikiTextObjTableCellInner
omap <buffer> iH <Plug>VimwikiTextObjHeaderSubContent
omap <buffer> ih <Plug>VimwikiTextObjHeaderContent
nmap <buffer> o <Plug>VimwikiListo
nnoremap <buffer> <silent> <Plug>VimwikiGoToPrevSiblingHeader :call vimwiki#base#goto_sibling(-1)
nnoremap <buffer> <silent> <Plug>VimwikiGoToNextSiblingHeader :call vimwiki#base#goto_sibling(+1)
nnoremap <buffer> <silent> <Plug>VimwikiGoToPrevHeader :call vimwiki#base#goto_prev_header()
nnoremap <buffer> <silent> <Plug>VimwikiGoToNextHeader :call vimwiki#base#goto_next_header()
nnoremap <buffer> <silent> <Plug>VimwikiGoToParentHeader :call vimwiki#base#goto_parent_header()
nnoremap <buffer> <silent> <Plug>VimwikiRemoveHeaderLevel :call vimwiki#base#RemoveHeaderLevel(v:count)
nnoremap <buffer> <silent> <Plug>VimwikiAddHeaderLevel :call vimwiki#base#AddHeaderLevel(v:count)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjListSingleV :call vimwiki#lst#TO_list_item(1, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjListSingle :call vimwiki#lst#TO_list_item(1, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjListChildrenV :call vimwiki#lst#TO_list_item(0, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjListChildren :call vimwiki#lst#TO_list_item(0, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjColumnInnerV :call vimwiki#base#TO_table_col(1, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjColumnInner :call vimwiki#base#TO_table_col(1, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjColumnV :call vimwiki#base#TO_table_col(0, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjColumn :call vimwiki#base#TO_table_col(0, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjTableCellInnerV :call vimwiki#base#TO_table_cell(1, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjTableCellInner :call vimwiki#base#TO_table_cell(1, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjTableCellV :call vimwiki#base#TO_table_cell(0, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjTableCell :call vimwiki#base#TO_table_cell(0, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSubContentV :call vimwiki#base#TO_header(1, 1, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSubContent :call vimwiki#base#TO_header(1, 1, v:count1)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSubV :call vimwiki#base#TO_header(0, 1, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSub :call vimwiki#base#TO_header(0, 1, v:count1)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderContentV :call vimwiki#base#TO_header(1, 0, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderContent :call vimwiki#base#TO_header(1, 0, v:count1)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderV :call vimwiki#base#TO_header(0, 0, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeader :call vimwiki#base#TO_header(0, 0, v:count1)
nmap <buffer> <M-Right> <Plug>VimwikiTableMoveColumnRight
nmap <buffer> <M-Left> <Plug>VimwikiTableMoveColumnLeft
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignW1 :VimwikiTableAlignW 2
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignW :VimwikiTableAlignW
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignQ1 :VimwikiTableAlignQ 2
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignQ :VimwikiTableAlignQ
vmap <buffer> <C-@> <Plug>VimwikiToggleListItem
vmap <buffer> <Nul> <Plug>VimwikiToggleListItem
nmap <buffer> <C-@> <Plug>VimwikiToggleListItem
nmap <buffer> <Nul> <Plug>VimwikiToggleListItem
vmap <buffer> <C-Space> <Plug>VimwikiToggleListItem
nmap <buffer> <C-Space> <Plug>VimwikiToggleListItem
nnoremap <buffer> <silent> <Plug>VimwikiListO :call vimwiki#u#count_exe('call vimwiki#lst#kbd_O()')
nnoremap <buffer> <silent> <Plug>VimwikiListo :call vimwiki#u#count_exe('call vimwiki#lst#kbd_o()')
nmap <buffer> <C-Up> <Plug>VimwikiDiaryPrevDay
nmap <buffer> <C-Down> <Plug>VimwikiDiaryNextDay
nmap <buffer> <BS> <Plug>VimwikiGoBackLink
nmap <buffer> <C-S-CR> <Plug>VimwikiTabnewLink
nmap <buffer> <D-CR> <Plug>VimwikiTabnewLink
nmap <buffer> <C-CR> <Plug>VimwikiVSplitLink
nmap <buffer> <S-CR> <Plug>VimwikiSplitLink
nnoremap <buffer> <silent> <Plug>MarkdownPreviewToggle :MarkdownPreviewToggle
noremap <buffer> <silent> <Plug>MarkdownPreviewStop :MarkdownPreviewStop
noremap <buffer> <silent> <Plug>MarkdownPreview :MarkdownPreview
vmap <buffer> <silent> <S-Tab> <Plug>(mkdx-unindent)
nmap <buffer> <S-Tab> <Plug>VimwikiPrevLink
imap <buffer>  <Plug>VimwikiDecreaseLvlSingleItem
imap <buffer>  <Plug>VimwikiListToggle
imap <buffer>  <Plug>VimwikiListPrevSymbol
imap <buffer> <NL> <Plug>VimwikiListNextSymbol
inoremap <buffer> <silent>  :VimwikiReturn 1 5
imap <buffer> <silent>  <Plug>(mkdx-ctrl-n-compl)
imap <buffer> <silent>  <Plug>(mkdx-ctrl-p-compl)
imap <buffer>  <Plug>VimwikiIncreaseLvlSingleItem
imap <buffer> <silent> # <Plug>(mkdx-link-compl)
imap <buffer> <	 <Plug>(mkdx-insert-kbd)
imap <buffer> ``` <Plug>(mkdx-fence-backtick)
imap <buffer> ~~~ <Plug>(mkdx-fence-tilde)
cabbr <buffer> q! let b:quitting_bang = 1 | q!
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
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=
setlocal comments=
setlocal commentstring=%%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=mkdx#Complete
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
if &filetype != 'vimwiki'
setlocal filetype=vimwiki
endif
setlocal fixendofline
set foldcolumn=2
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\%(\\(-\\|\\*\\|+\\)\\|\\(\\C\\%(\\d\\+\\.\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX-]\\)\\]\\s\\)\\?
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=Complete_wikifiles
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
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=fr
setlocal spelloptions=
setlocal statusline=\ 
setlocal suffixesadd=.md
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'vimwiki'
setlocal syntax=vimwiki
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 538 - ((28 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 538
normal! 02|
lcd ~/Google\ Drive/vimwiki/shell/vim
wincmd w
argglobal
enew
balt ~/Google\ Drive/vimwiki/shell/vim/vim-basics.md
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=wipe
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
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
if &filetype != ''
setlocal filetype=
endif
setlocal fixendofline
set foldcolumn=2
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\%(\\(-\\|\\*\\|+\\)\\|\\(\\C\\%(\\d\\+\\.\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX-]\\)\\]\\s\\)\\?
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
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
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=fr
setlocal spelloptions=
setlocal statusline=\ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal winfixheight
setlocal winfixwidth
setlocal wrap
setlocal wrapmargin=0
lcd ~/Google\ Drive/vimwiki/shell/vim
wincmd w
argglobal
enew
balt ~/Google\ Drive/vimwiki/shell/vim/vim-basics.md
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=wipe
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
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
if &filetype != ''
setlocal filetype=
endif
setlocal fixendofline
set foldcolumn=2
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\%(\\(-\\|\\*\\|+\\)\\|\\(\\C\\%(\\d\\+\\.\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX-]\\)\\]\\s\\)\\?
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
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
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=fr
setlocal spelloptions=
setlocal statusline=\ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal winfixheight
setlocal winfixwidth
setlocal wrap
setlocal wrapmargin=0
lcd ~/Google\ Drive/vimwiki/shell/vim
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 2 + 22) / 44)
exe '2resize ' . ((&lines * 38 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 34 + 75) / 151)
exe '3resize ' . ((&lines * 38 + 22) / 44)
exe 'vert 3resize ' . ((&columns * 81 + 75) / 151)
exe '4resize ' . ((&lines * 38 + 22) / 44)
exe 'vert 4resize ' . ((&columns * 34 + 75) / 151)
exe '5resize ' . ((&lines * 1 + 22) / 44)
tabnext 2
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=1 shortmess=filnxtToOS
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
