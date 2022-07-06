" General settings for Neovim out of the box.
"
" @author Maciej Bedra

" Set leader key
let g:mapleader = "\<Space>"

" Enable syntax highlighting
syntax enable

" Keep multiple buffers open
set hidden

" Long lines not wrapped
set nowrap

" Default encoding
set encoding=utf-8
set fileencoding=utf-8

" Smaller pop up menu
set pumheight=10

" Show cursor position all the time
set ruler

" More space for messages
set cmdheight=2

" Treat dash separated words as a word text object
set iskeyword+=-

" Enable mouse
set mouse=a

" Horizontal splits on bottom
set splitbelow

" Vertical splits on right
set splitright

" 256 colors support
set t_Co=256

" More visible '`' character
set conceallevel=0

" 2 Spaces for TAB
set tabstop=2

" 2 Spaces for indention
set shiftwidth=2

" Smart TAB's
set smarttab

" Convert TAB's to Spaces
set expandtab

" Smart indents
set smartindent

" Support auto indent
set autoindent

" Status line
set laststatus=0

" Line numbers
set number relativenumber

" Highlight current line
set cursorline

" Smooth scroll
set so=999

" Max line length
set colorcolumn=120

" Background color
set background=dark

" Transparent background
autocmd VimEnter * hi Normal ctermbg=none

" Show TAB's
set showtabline=2

" Do not display mode
set noshowmode

" Disable backup
set nobackup
set nowritebackup

" Faster completion
set updatetime=300

" Short timeout
set timeoutlen=500

" Stop new line comment continuation
set formatoptions-=cro 

" Shared clipboard
set clipboard=unnamedplus

" Spell check
set spell spelllang=fr,en_us
set nospell

" Auto source while writing to init.vim
au! BufWritePost ~/dotfiles/nvim/nvim/init-ts.vim source %      
cmap w!! w !sudo tee %

" enable fold saving
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

" vim doesn't lose selection anymore when using indentation 
vnoremap < <gv
vnoremap > >gv

" PWD always follows the file I'm editing.
set autochdir

"==============================================================================
    " Search 
    "==========================================================================

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

"==============================================================================
    " Templates 
    "==========================================================================

    :autocmd BufNewFile *.md 0r ~/.vim/templates/template.md

"==============================================================================
    " Sign 
    "==========================================================================

    sign define piet text= texthl=Folded linehl=
    " :exe ":sign place 2 line=23 name=piet file=" . expand("%:p")

"==============================================================================
    " Emoji shortcuts 
    "==========================================================================

    ab :check: ✅
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
    ab :book: 📚
    ab :gem: 💎
    ab :boom: 💥
    ab :!: ❗
    ab :?: ❓
    ab :cross: 𐄂
    ab :tick: ✓

"==============================================================================
    " BufOnly command - Delete all the buffers except the current/named buffer. 
    "==========================================================================

    " Usage:

    " :Bonly / :BOnly / :Bufonly / :BufOnly [buffer]

    " Without any arguments the current buffer is kept.  With an argument the
    " buffer name/number supplied is kept.

    command! -nargs=? -complete=buffer -bang Bonly
                \ :call BufOnly('<args>', '<bang>')
    command! -nargs=? -complete=buffer -bang BOnly
                \ :call BufOnly('<args>', '<bang>')
    command! -nargs=? -complete=buffer -bang Bufonly
                \ :call BufOnly('<args>', '<bang>')
    command! -nargs=? -complete=buffer -bang BufOnly
                \ :call BufOnly('<args>', '<bang>')

    function! BufOnly(buffer, bang)
        if a:buffer == ''
            " No buffer provided, use the current buffer.
            let buffer = bufnr('%')
        elseif (a:buffer + 0) > 0
            " A buffer number was provided.
            let buffer = bufnr(a:buffer + 0)
        else
            " A buffer name was provided.
            let buffer = bufnr(a:buffer)
        endif

        if buffer == -1
            echohl ErrorMsg
            echomsg "No matching buffer for" a:buffer
            echohl None
            return
        endif

        let last_buffer = bufnr('$')

        let delete_count = 0
        let n = 1
        while n <= last_buffer
            if n != buffer && buflisted(n)
                if a:bang == '' && getbufvar(n, '&modified')
                    echohl ErrorMsg
                    echomsg 'No write since last change for buffer'
                                \ n '(add ! to override)'
                    echohl None
                else
                    silent exe 'bdel' . a:bang . ' ' . n
                    if ! buflisted(n)
                        let delete_count = delete_count+1
                    endif
                endif
            endif
            let n = n+1
        endwhile

        if delete_count == 1
            echomsg delete_count "buffer deleted"
        elseif delete_count > 2
            echomsg delete_count "buffers deleted"
        endif

    endfunction
