" Configuration for Markdown-preview

let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
                        \ 'enter': { 'shift': 1 },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'fold': { 'enable': 0 } ,
                        \ 'tokens': { 'bold': '__', 'italic': '_' } }

" allow to jump to a markdown header
nnoremap <leader>j :call mkdx#JumpToHeader()<CR>
