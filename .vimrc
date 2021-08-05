"=============================================================================
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
" (_)_/ |_|_| |_| |_|_|  \___|
"=============================================================================

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
" autocmpletion
Plugin 'https://github.com/neoclide/coc.nvim'
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
" Remmaping
"=============================================================================

let mapleader = "\<space>"
noremap <leader>n :NERDTreeToggle<cr>              
" Remap in command mode 
cnoremap jk <C-C>         
" Remap in Insert and Replace mode
inoremap jk <esc>         

" Shortcut split opening
"=============================================================================

noremap <leader>w <c-w>
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
set shellcmdflag=-ic

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
" Affiche un minimum de 3 lignes autour du curseur (pour le scroll)
set scrolloff=3           
" Largeur par défaut d'une tabulation = 4 espaces
set tabstop=4
" Insérer des espaces au lieu de tabulations
" set expandtab
" Chaque indentation insère 4 caractères (4 espaces)
set shiftwidth=4
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
"set colorcolumn=80

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

" Beep
"=============================================================================

" Empeche Vim de beeper
set visualbell            
" Empeche Vim de beeper
set noerrorbells          

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
" Coc plugin configuration
"=============================================================================

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
