
" Neovim initialization file.
"
" @author Maciej Bedra

" Configuration for Neovim out of the box
source /Users/sebastientraber/dotfiles/nvim/nvim/config/general/settings.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/general/keys.vim

" Neovim extensions
call plug#begin()
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'mhinz/vim-startify'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'stsewd/fzf-checkout.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'ap/vim-css-color'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'puremourning/vimspector'
call plug#end()

" Extensions configuration
source /Users/sebastientraber/dotfiles/nvim/nvim/config/gruvbox/gruvbox.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/airline/airline.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/nerdtree/nerdtree.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/nerdtree/nerdtree-git.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/startify/startify.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/telescope/telescope.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/fzf/fzf.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/git/fugitive.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/git/fzf-checkout.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/treesitter/treesitter.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/coc/coc.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/coc/extensions.vim
source /Users/sebastientraber/dotfiles/nvim/nvim/config/vimspector/vimspector.vim
