-- After changing plugin config exit and reopen LunarVim,
-- Run :PackerInstall :PackerCompile

-- vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache', '*.o' }

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
  {
    "David-Kunz/gen.nvim",
    opts = {
      model = "mistral",        -- The default model to use.
      display_mode = "split",   -- The display mode. Can be "float" or "split".
      show_prompt = false,      -- Shows the Prompt submitted to Ollama.
      show_model = true,       -- Displays which model you are using at the beginning of your chat session.
      no_auto_close = false,    -- Never closes the window automatically.
      init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
      -- Function to initialize Ollama
      command = "curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d $body",
      -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
      -- This can also be a lua function returning a command string, with options as the input parameter.
      -- The executed command must return a JSON object with { response, context }
      -- (context property is optional).
      list_models = '<omitted lua function>',   -- Retrieves a list of model names
      debug = false                             -- Prints errors and the command which is run.
    }
  },

  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },

  { "folke/todo-comments.nvim", },

  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require("copilot").setup({
  --       suggestion = {
  --         keymap = {
  --           accept = "<c-l>",
  --           next = "<c-j>",
  --           prev = "<c-k>",
  --           dismiss = "<c-h>",
  --         },
  --       },
  --     })
  --   end,
  -- },

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
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  {
    'vimwiki/vimwiki',
    init = function()                 --replace 'config' with 'init'
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
    config = function()
      local modes = {
        search = {
          enables = false
        }
      }
    end,
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

lvim.builtin.nvimtree.filters = {
  custom = { ".git", "node_modules", ".cache", "*.o" }
}
