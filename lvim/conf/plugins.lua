-- After changing plugin config exit and reopen LunarVim,
-- Run :PackerInstall :PackerCompile
HOME = vim.fn.expand("~/Google Drive/zettelkasten")
lvim.plugins = {
  { "tpope/vim-obsession" },
  { "mattn/emmet-vim" },
  { "tpope/vim-repeat" },
  { "vifm/vifm.vim" },
  { "tpope/vim-unimpaired" },
  { "tpope/vim-surround" },
  { "ellisonleao/gruvbox.nvim" },
  { "elgiano/nvim-treesitter-angular", branch = "topic/jsx-fix" },
  { "folke/zen-mode.nvim",
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
        -- optional configuration
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
  { 'vimwiki/vimwiki',
    config = function()
      vim.g['vimwiki_global_ext'] = 0 -- 0 prevent vimwiki consider every md files as vimwiki files
      vim.g['vimwiki_folding'] = 'custom'
      vim.g['vimwiki_list'] = {
        { path = '~/Google\\ Drive/vimwiki/', syntax = 'markdown', index = 'index', ext = '.md' },
        { path = '~/Document/HEIG/', syntax = 'markdown', index = 'index', ext = '.md' },
      }
    end,
  },
  { 'renerocksai/telekasten.nvim',
    config = function()
      require("telekasten").setup({
      home = HOME,
      take_over_my_home = true,
      auto_set_filetype = false,
      auto_set_syntax = false,
      dailies = HOME .. '/' .. 'daily',
      weeklies  = HOME .. '/' .. 'weekly',
      templates = HOME .. '/' .. 'templates',
      image_subdir = "img",
      extension = ".md",
      new_note_filename = "title",
      uuid_type = "%Y%m%d%H%M",
      uuid_sep = "-",
      filename_space_subst = nil,
      follow_creates_nonexisting = true,
      dailies_create_nonexisting = true,
      weeklies_create_nonexisting = true,
      journal_auto_open = false,
      template_new_note = HOME .. '/' .. 'templates/new_note.md',
      template_new_daily = HOME .. '/' .. 'templates/daily.md',
      template_new_weekly = HOME .. '/' .. 'templates/weekly.md',
      image_link_style = "markdown",
      sort = "filename",
      plug_into_calendar = true,
      calendar_opts = {
        weeknm = 4,
        calendar_monday = 1,
        calendar_mark = 'left-fit',
      },
      close_after_yanking = false,
      insert_after_inserting = true,
      tag_notation = ":tag:",
      command_palette_theme = "ivy",
      show_tags_theme = "ivy",
      subdirs_in_links = true,
      template_handling = "smart",
      new_note_location = "smart",
      rename_update_links = true,
      media_previewer = "telescope-media-files",
      follow_url_fallback = nil,
      })
    end,
  }
}
