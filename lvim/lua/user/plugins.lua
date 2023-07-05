-- After changing plugin config exit and reopen LunarVim,
-- Run :PackerInstall :PackerCompile

lvim.plugins = {
  { "mxsdev/nvim-dap-vscode-js", dependencies = { "mfussenegger/nvim-dap" } },

  {
    "microsoft/vscode-js-debug",
    lazy = true,
    build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
  },

  {
    "ThePrimeagen/harpoon",
    config = function()
      require("harpoon").setup({
      })
    end
  },

  { "folke/todo-comments.nvim", },

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          keymap = {
            accept = "<c-l>",
            next = "<c-j>",
            prev = "<c-k>",
            dismiss = "<c-h>",
          },
        },
      })
    end,
  },

  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },

  { "tpope/vim-obsession" },

  { "mattn/emmet-vim" },

  { "tpope/vim-repeat" },

  { "vifm/vifm.vim" },

  { "tpope/vim-unimpaired" },

  { "tpope/vim-surround" },

  { "ellisonleao/gruvbox.nvim" },

  {
    "elgiano/nvim-treesitter-angular",
    branch = "topic/jsx-fix",
    config = function()
      require("lvim.lsp.manager").setup("angularls")
    end,
  },

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
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 0
    end,
  },

  {
    'vimwiki/vimwiki',
    init = function() --replace 'config' with 'init'
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
  {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "s",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "S",
      mode = { "n", "o", "x" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
    {
      "r",
      mode = "o",
      function()
        require("flash").remote()
      end,
      desc = "Remote Flash",
    },
    {
      "R",
      mode = { "o", "x" },
      function()
        require("flash").treesitter_search()
      end,
      desc = "Flash Treesitter Search",
    },
    {
      "<c-s>",
      mode = { "c" },
      function()
        require("flash").toggle()
      end,
      desc = "Toggle Flash Search",
    },
  },
}

}
