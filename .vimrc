
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
" (_)_/ |_|_| |_| |_|_|  \___|

"=============================================================================
" Vundle plugin manager config
"=============================================================================

" disable compatibility with vi, required
set nocompatible              
filetype off                  

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" color theme
Plugin 'https://github.com/morhetz/gruvbox'
" file browsing
Plugin 'https://github.com/preservim/nerdtree'
" status line
Plugin 'https://github.com/vim-airline/vim-airline'
" quick commenting
Plugin 'https://github.com/tpope/vim-commentary'
" better pattern searching
Plugin 'https://github.com/qxxxb/vim-searchhi'
" quick moving
Plugin 'https://github.com/easymotion/vim-easymotion'
" object motions for any kind of parenthesis and quotation marks
Plugin 'https://github.com/tpope/vim-surround'
" Terminal popup
Plugin 'https://github.com/voldikss/vim-floaterm'
" personal wiki
Plugin 'https://github.com/vimwiki/vimwiki'
" Markdown features
Plugin 'https://github.com/SidOfc/mkdx'
" Distraction free
Plugin 'https://github.com/junegunn/goyo.vim'
" vim file manager
Plugin 'https://github.com/vifm/vifm.vim'
" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" better buffer navigation
Plugin 'https://github.com/tpope/vim-unimpaired'
" fuzzy file 
Plugin 'https://github.com/kien/ctrlp.vim'
" markdown preview
Plugin 'https://github.com/iamcco/markdown-preview.nvim'

call vundle#end()            
" Charger automatiquement le greffon et les paramétrages
" d'indentation spécifiques à chaque type de fichier à l'ouverture
filetype plugin indent on    
filetype plugin on

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

"=============================================================================
" Autocommandes at start
"=============================================================================

" set bold color highlight for md file at launch
au BufEnter *.md :hi VimwikiBold  cterm=bold ctermfg=208 gui=bold guifg=#fe8019 
let foldmethod='manual'
" enable fold saving
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

"=============================================================================
" Remmaping
"=============================================================================

let mapleader = "\<space>"
let g:maplocalleader = ','
noremap <leader>n :NERDTreeToggle %<cr>              
" Remap in command mode 
cnoremap jk <C-C>         
" Remap in Insert and Replace mode
" inoremap jk <esc>         
" noremap <leader>no :noh<cr>
" moving lines
" º = alt+j ∆ = alt+k
nnoremap º :m .+1<cr>==
nnoremap ∆ :m .-2<cr>==
inoremap º <esc>:m .+1<cr>==gi
inoremap ∆ <esc>:m .-2<cr>==gi
vnoremap º :m '>+1<cr>gv=gv
vnoremap ∆ :m '<-2<cr>gv=gv

" allow to idenify colorHighlight group of current cursor position
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"=============================================================================
" Shortcut split opening
"=============================================================================

noremap <leader>f <c-w>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"=============================================================================
" Common settings
"=============================================================================

" Load help files for all plugins
silent! helptags ALL  
" Run shell in interactive mode to allow use of user alias
" set shellcmdflag=-ic
" Edit vimr configuration file
nnoremap confe :e $MYVIMRC<CR>
" Reload vims configuration file
nnoremap confr :source $MYVIMRC<CR>
" Edit vimr configuration file
nnoremap <Leader>ve :e $MYVIMRC<CR>
" Reload vimr configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR>
" toogle Goyo
nnoremap <Leader>g :Goyo<CR>

"=============================================================================
" Affichage
"=============================================================================

" Encoding par défaut
set encoding=utf-8
" Define vim's theme
set background=dark
colorscheme gruvbox
" Met a jour le titre de votre fenetre ou de votre terminal
set title                 
" Affiche le numero des lignes                         
set number                
" Affiche la position actuelle du curseur
set ruler                 
" Affiche les lignes trop longues sur plusieurs lignes
set wrap                  
" Avoid word beaing cut on wrap
set linebreak
" Affiche un minimum de 3 lignes autour du curseur (pour le scroll)
set scrolloff=3           
" Largeur par défaut d'une tabulation = 4 espaces
set tabstop=4
" Activer la coloration syntaxique
syntax enable
" Conserver systématiquement 2 lignes visibles au-dessus et
" en-dessous de la ligne courante (le défilement se fait avant que
" le curseur n'atteigne la dernière ou la première ligne affichée
" à l'écran)
set scrolloff=2
" Display all matching file when we tab complete
set wildmenu
" afficher une ligne verticale rouge à la 80e colonne
set colorcolumn=80
" set line length
set tw=0
set foldcolumn=2

"=============================================================================
" Search
"=============================================================================

" Ignore la casse lors d'une recherche
set ignorecase            
" Si une recherche contient une majuscule, re-active la sensibilite a la casse
set smartcase             
" Surligne les resultats de recherche pendant la saisie 
set incsearch             
" Surligne les resultats de recherche                         
set hlsearch              
" Permet à vim de rechercher des fichiers dans les sous répertoires du projet
set path+=**

"=============================================================================
" Beep
"=============================================================================

" Empeche Vim de beeper
set visualbell            
" Empeche Vim de beeper
set noerrorbells          

"=============================================================================
" Other
"=============================================================================

" Active le comportement 'habituel' de la touche retour en arriere
set backspace=indent,eol,start
" Cache les fichiers lors de l'ouverture d'autres fichiers
set hidden
" Autoriser les sélections visuelles à la souris, required for Coc plugin
set mouse=a
" Mémoriser les 100 dernières actions (pour annulation p. ex.)
set history=100
" Ne pas créer une sauvegarde des fichiers lors de leur enregistrement
set nobackup
set nowritebackup
" Look for a tags file recursively in parent directories. 
set tags=tags; 

"=============================================================================
" Emoji shortcuts
"=============================================================================

ab :white_check_mark: ✅
ab :warning: ⚠️
ab :bulb: 💡
ab :pushpin: 📌
ab :bomb: 💣
ab :pill: 💊
ab :construction: 🚧
ab :pencil: 📝
ab :point_right: 👉
ab :book: 📖
ab :link: 🔗
ab :wrench: 🔧
ab :telephone: 📞
ab :email: 📧
ab :computer: 💻


"        _             _           
"  _ __ | |_   _  __ _(_)_ __  ___ 
" | '_ \| | | | |/ _` | | '_ \/ __|
" | |_) | | |_| | (_| | | | | \__ \
" | .__/|_|\__,_|\__, |_|_| |_|___/
" |_|            |___/             

"=============================================================================
" Plugin vim-floaterm
"=============================================================================

let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

"=============================================================================
" Plugin UltiSnips
"=============================================================================

let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
		
"=============================================================================
" Plugin vim wiki
"=============================================================================

" enable markdown support
let g:vimwiki_list = [{'path': '~/vimwiki/',
                   \ 'syntax': 'markdown', 'ext': '.md'}]
" set to 0 to prevent vimwiki consider every md files as vimwiki files
let g:vimwiki_global_ext = 0
let g:vimwiki_folding = ''

"=============================================================================
" Plugin mkdx
"=============================================================================

let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
                        \ 'enter': { 'shift': 1 },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'fold': { 'enable': 0 } }

" allow to jump to a markdown header
nnoremap <leader>j :call mkdx#JumpToHeader()<CR>

"=============================================================================
" Plugin unimpaired
"=============================================================================

nmap è [
nmap ¨ ]
omap è [
omap ¨ ]
xmap è [
xmap ¨ ]

"=============================================================================
" Plugin vim-airline
"=============================================================================

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"=============================================================================
" Plugin markdown-preview.nvim
"=============================================================================

let g:vimwiki_table_mappings=0
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = '~/vimwiki/src/styles/github.css'

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']



