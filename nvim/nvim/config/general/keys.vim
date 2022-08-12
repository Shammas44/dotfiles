" Key binding for Neovim out of the box.

" More handy insert mode exit
inoremap jk <Esc>
inoremap kj <Esc>
" More handy command mode exit
cnoremap jk <C-C>
" noremap <leader>no :noh<cr>

" Navigation between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Splits resizing
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" Editor tabs navigation
nnoremap <TAB> :tabnext<CR>
nnoremap <S-TAB> :tabprevious<CR>

" Completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" More handy line 'tabbing'
vnoremap < <gv
vnoremap > >gv

let g:maplocalleader = ','

" moving lines
" º = alt+j ∆ = alt+k
nnoremap º :m .+1<cr>==
nnoremap ∆ :m .-2<cr>==
inoremap º <esc>:m .+1<cr>==gi
inoremap ∆ <esc>:m .-2<cr>==gi
vnoremap º :m '>+1<cr>gv=gv
vnoremap ∆ :m '<-2<cr>gv=gv

" Compile current file with pdflatex
:command Tex w | !pdflatex --shell-escape %
nnoremap <leader>x :Tex<cr>

" Execute current file with python3
nnoremap <leader>p :!python3 %<cr>

" Open vifm
nnoremap <leader>v :Vifm<cr>

" remove current highlight
nnoremap <leader>l :noh<cr>

" Delete all buffers except the current one
nnoremap <leader>o :Bonly<cr>

" open/close NERDTree
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader><leader> /
nnoremap <leader>m :MarkdownPreview<cr>

" Open fzf
"nnoremap <leader>ff :FZF<cr>
"
" allow to idenify colorHighlight group of current cursor position
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Ngrep command allow searching in the whole wiki
command! -nargs=1 Ngrep lvimgrep "<args>" **/*.md
command! -nargs=1 Ngreps lvimgrep "<args>"  ~/Google\ Drive/vimwiki/**/*.md

" print current date
command! Date put =strftime('%a %Y-%m-%d %H:%M:%S%z')
command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -
