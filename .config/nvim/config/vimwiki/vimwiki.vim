" Configuration for Neovim debugger.

" set to 0 to prevent vimwiki consider every md files as vimwiki files
let g:vimwiki_global_ext = 0
let g:vimwiki_folding = 'custom'

let wiki_1 = {}
let wiki_1.path = '~/Google\ Drive/vimwiki/'
let wiki_1.index = 'index'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'

let wiki_2 = {}
let wiki_2.path = '~/Documents/HEIG/'
let wiki_2.index = 'index'
let wiki_2.syntax = 'markdown'
let wiki_2.ext = '.md'

let g:vimwiki_list = [wiki_1, wiki_2]

" set bold color highlight for md file at launch
au BufEnter *.md :hi VimwikiBold  cterm=bold ctermfg=208 gui=bold guifg=#fe8019 
" set italic color highlight for md file at launch
au BufEnter *.md :hi VimwikiItalic cterm=bold ctermfg=175 guifg=#d3869b 
