-- After changing plugin config exit and reopen LunarVim,
-- Run :PackerInstall :PackerCompile
lvim.plugins = {
  { "tpope/vim-obsession" },

  { "github/copilot.vim" },

  { "mattn/emmet-vim" },

  { "tpope/vim-repeat" },

  { "vifm/vifm.vim" },

  { "tpope/vim-unimpaired" },

  { "tpope/vim-surround" },

  { "ellisonleao/gruvbox.nvim" },

  { "elgiano/nvim-treesitter-angular", branch = "topic/jsx-fix" },

  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
        window = {
          width = 85
        }
      }
    end
  },

  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit"
    },
    ft = { "fugitive" }
  },

  {
    "SidOfc/mkdx",
    config = function()
      vim.g['mkdx#settings'] = {
        highlight = { enabled = 1 },
        enter = { shift = 1 },
        links = { external = { enable = 1 } },
        toc = { text = 'Summary', update_on_write = 1 },
        fold = { enable = 0 },
        tokens = { bold = '__', italic = '_' }
      }
    end,
  },

  {
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup({
      })
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },

  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 0
    end,
  },

  {
    'vimwiki/vimwiki',
    config = function()
      vim.g['vimwiki_global_ext'] = 0 -- 0 prevent vimwiki consider every md files as vimwiki files
      vim.g['vimwiki_folding'] = 'custom'
      vim.g['vimwiki_list'] = {
        { path = '~/Google\\ Drive/vimwiki/', syntax = 'markdown', index = 'index', ext = '.md' },
        { path = '~/Document/HEIG/',          syntax = 'markdown', index = 'index', ext = '.md' },
      }
    end,
  },

  {
    "tiagovla/scope.nvim",
    config = function()
      require("scope").setup()
    end
  },

}
