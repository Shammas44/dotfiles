
" Neovim initialization file.

" Configuration for Neovim out of the box
source /Users/sebastientraber/dotfiles/nvim/nvim/config/general/settings.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/general/keys.vim

" Neovim extensions
call plug#begin()
  "========================================   
  "=== Common extensions  
  "========================================   

  "=== File Management

  "    File manager
  Plug 'vifm/vifm.vim'
  "    Fuzzy finder
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
  "    plenary.vim is required for telescope
  Plug 'nvim-lua/plenary.nvim'
  "    File manager
  Plug 'preservim/nerdtree'

  "=== Aesthetic

  "    Color theme
  Plug 'morhetz/gruvbox'
  "    Display footer informations
  Plug 'vim-airline/vim-airline'
  "    Color theme for the footer
  Plug 'vim-airline/vim-airline-themes'
  "    Show git status in nerdtree
  Plug 'Xuyuanp/nerdtree-git-plugin'
  "    Provide icons multiple extensions
  Plug 'kyazdani42/nvim-web-devicons'
  "    Display color for css
  Plug 'ap/vim-css-color'

  "=== Git

  "    Allow to easily use git on cmd mode 
  Plug 'tpope/vim-fugitive'
  "    Shows git diff markers in the sign column
  Plug 'airblade/vim-gitgutter'

  "=== Life improvements

  "    Allow easily Block commenting
  Plug 'tpope/vim-commentary'
  "    Terminal 
  Plug 'voldikss/vim-floaterm'
  "    Pairs of handy bracket mappings
  Plug 'tpope/vim-unimpaired'
  "    Better reading experience
  Plug 'junegunn/goyo.vim'
  "    Starting menu
  Plug 'mhinz/vim-startify'

  "=== Markdown

  "    Provide a custom viki
  Plug 'vimwiki/vimwiki'
  "    Helpers for Markdown
  Plug 'SidOfc/mkdx'
  "    Markdown preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

  "========================================   
  "=== For python only
  "========================================   

  "    An autocompletion engine
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " Plug 'zchee/deoplete-jedi'
  "    Code jump to ...
  " Plug 'davidhalter/jedi-vim'
  "    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  "    Automatic quote and bracket completion
  " Plug 'jiangmiao/auto-pairs'
  "    Auto-formating
  " Plug 'sbdchd/neoformat'
  "    code syntax check
  " Plug 'neomake/neomake'
  "    Multiple cursor
  " Plug 'terryma/vim-multiple-cursors'
  "    Code folding
  " Plug 'tmhedberg/SimpylFold'
  "    LSP config for neovim
  Plug 'neovim/nvim-lspconfig'

call plug#end()

" Extensions configuration

  "========================================   
  "=== Common extensions  
  "========================================   

  "=== File Management

source /Users/sebastientraber/dotfiles/nvim/nvim/config/nerdtree/nerdtree.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/nerdtree/nerdtree-git.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/telescope/telescope.vim

  "=== Aesthetic

source /Users/sebastientraber/dotfiles/nvim/nvim/config/gruvbox/gruvbox.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/airline/airline.vim

  "=== Git

source /Users/sebastientraber/dotfiles/nvim/nvim/config/git/fugitive.vim


  "=== Life improvements

source /Users/sebastientraber/dotfiles/nvim/nvim/config/startify/startify.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/floaterm/floaterm.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/goyo/goyo.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/unimpaired/unimpaired.vim

  "=== Markdown

source /Users/sebastientraber/dotfiles/nvim/nvim/config/markdown-preview/markdown-preview.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/vimwiki/vimwiki.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/mkdx/mkdx.vim

  "========================================   
  "=== For python only
  "========================================   

" source /Users/sebastientraber/dotfiles/nvim/nvim/config/deoplete/deoplete.vim
" source /Users/sebastientraber/dotfiles/nvim/nvim/config/neoformat/neoformat.vim
" source /Users/sebastientraber/dotfiles/nvim/nvim/config/neomake/neomake.vim
" source /Users/sebastientraber/dotfiles/nvim/nvim/config/jedi-vim/jedi-vim.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/nvim-lspconfig/nvim-lspconfig.vim

" Edit vim configuration file
nnoremap confe :e ~/dotfiles/nvim/nvim/init-py.vim<CR>
nnoremap <Leader>ve :e ~/dotfiles/nvim/nvim/init-py.vim<CR>
" Reload vim configuration file
nnoremap confr :source ~/dotfiles/nvim/nvim/init-py.vim<CR>
nnoremap <Leader>vr :source ~/dotfiles/nvim/nvim/init-py.vim<CR>
