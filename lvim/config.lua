--                   __ _         _
--   ___ ___  _ __  / _(_) __ _  | |_   _  __ _
--  / __/ _ \| '_ \| |_| |/ _` | | | | | |/ _` |
-- | (_| (_) | | | |  _| | (_| |_| | |_| | (_| |
--  \___\___/|_| |_|_| |_|\__, (_)_|\__,_|\__,_|
--                        |___/

--===========================================================================
-- Lvim options
--=======================================================================

lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.colorscheme = "gruvbox"
lvim.use_icons = true
lvim.leader = "space"

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

--===========================================================================
-- Telescope Settings
--=======================================================================

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   i = {
--   -- for input mode
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

--===========================================================================
-- Which-key
--=======================================================================

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }

--===========================================================================
-- TreeSitter
--=======================================================================

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "markdown",
  "markdown_inline",
  "astro"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

--===========================================================================
-- Generic LSP settings
--=======================================================================

-- require'lspconfig'.astro.setup{}
-- require("lvim.lsp.manager").setup("astro")

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumneko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

--===========================================================================
-- Formatter
--=======================================================================

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  -- { command = "black", filetypes = { "python" } },
  { command = "isort", filetypes = { "python" } },
  {
    -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
    extra_args = { "--print-with", "100" },
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    filetypes = { "typescript", "typescriptreact" },
  },
}

--===========================================================================
-- Linters
--=======================================================================

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  -- { command = "flake8", filetypes = { "python" } },
  -- {
  --   -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
  --   command = "shellcheck",
  --   ---@usage arguments to pass to the formatter
  --   -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
  --   extra_args = { "--severity", "warning" },
  -- },
  -- {
  --   command = "codespell",
  --   ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
  --   filetypes = { "javascript", "python" },
  -- },
  {
    command = "eslint",
    filetypes = { "javascript", "typescript" },
  },
}

--===========================================================================
-- Additionals Plugins
--=======================================================================

lvim.plugins = {
  -- { "wuelnerdotexe/vim-astro",
  --   config = function()
  --   vim.go['astro_typescript'] = 'enable'
  --   end
  -- },
  { "mattn/emmet-vim" },
  { "tpope/vim-repeat" },
  { "vifm/vifm.vim" },
  { "tpope/vim-unimpaired" },
  { "tpope/vim-surround" },
  { "ellisonleao/gruvbox.nvim" },
  { "nvim-treesitter/nvim-treesitter-angular",
    config = function()
      require("lvim.lsp.manager").setup("angularls")
    end
  },
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
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 0
    end,
  },
  { 'vimwiki/vimwiki',
    config = function()
      -- set to 0 to prevent vimwiki consider every md files as vimwiki files
      vim.g['vimwiki_global_ext'] = 0
      vim.g['vimwiki_folding'] = 'custom'
      vim.g['vimwiki_list'] = {
        { path = '~/Google\\ Drive/vimwiki/', syntax = 'markdown', index = 'index', ext = '.md' },
        { path = '~/Document/HEIG/', syntax = 'markdown', index = 'index', ext = '.md' },
      }
    end,
  }
}

--===========================================================================
-- Usercommands
--=======================================================================

vim.api.nvim_create_user_command('SayHello', function()
  vim.cmd(':!echo hello')
end, { nargs = '*' })

--===========================================================================
-- Autocommands
--=======================================================================

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*" },
  command = "set nospell",
})
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.md" },
  -- set bold and italics color highlight
  command = ":hi VimwikiBold  cterm=bold ctermfg=208 gui=bold guifg=#fe8019 | " ..
      ":hi VimwikiItalic cterm=bold ctermfg=175 guifg=#d3869b"
})
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*" },
  command = "silent! lua vim.keymap.set('n', '<leader>J', ':SayHello<CR>')",
})
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.md" },
  command = "silent! lua vim.keymap.set('n', '<leader>J', ':call mkdx#JumpToHeader()<CR>')",
})
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.lua" },
--   command = "set foldmethod=indent |" ..
--       "set foldcolumn=2 |" ..
--       "set foldnestmax=1"
-- })

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
--

--===========================================================================
-- Remapings
--=======================================================================

-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")

-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- local function map(mode, lhs, rhs, opts)
--     local options = { noremap = true, silent = true }
--     if opts then
--         if opts.desc then
--             opts.desc = "keymaps.lua: " .. opts.desc
--         end
--         options = vim.tbl_extend('force', options, opts)
--     end
--     vim.keymap.set(mode, lhs, rhs, options)
-- end

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<Leader>z"] = ":ZenMode<cr>"
lvim.keys.normal_mode["<Leader><Leader>"] = "/"
lvim.keys.normal_mode["<C-j>"] = ":ToggleTerm<cr>"

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('c', 'jk', '<Esc>')

vim.cmd("nmap è [")
vim.cmd("nmap ¨ ]")
vim.cmd("omap è [")
vim.cmd("omap ¨ ]")
vim.cmd("xmap è [")
vim.cmd("xmap ¨ ]")

--===========================================================================
-- My own config options
--=======================================================================

vim.opt.rnu = true
vim.opt.clipboard = ""
vim.opt.wrap = true -- Display long lines on multiples lines
vim.opt.linebreak = true -- Avoid word beaing cut on wrap
-- vim.opt.smartcase = true
-- vim.opt.ignorecase = false
-- vim.opt.shiftwidth = 4 -- Indentation insert x spaces
-- vim.opt.tabstop = 4 -- default width of a tab

--===========================================================================
-- Usefull stuff to know
--=======================================================================

-- launch live-server with autoreload
-- npx live-server --quiet &

lvim.builtin.dap.active = true

--===========================================================================
-- Abreviations
--=======================================================================

vim.cmd('ab :check: ✅')
vim.cmd('ab :warning: ⚠️')
vim.cmd('ab :bulb: 💡')
vim.cmd('ab :pushpin: 📌')
vim.cmd('ab :bomb: 💣')
vim.cmd('ab :pill: 💊')
vim.cmd('ab :construction: 🚧')
vim.cmd('ab :pencil: 📝')
vim.cmd('ab :point_right: 👉')
vim.cmd('ab :book: 📖')
vim.cmd('ab :link: 🔗')
vim.cmd('ab :wrench: 🔧')
vim.cmd('ab :telephone: 📞')
vim.cmd('ab :email: 📧')
vim.cmd('ab :computer: 💻')
vim.cmd('ab :book: 📚')
vim.cmd('ab :gem: 💎')
vim.cmd('ab :boom: 💥')
vim.cmd('ab :!: ❗')
vim.cmd('ab :?: ❓')
vim.cmd('ab :cross: ❌')
vim.cmd('ab :cross2: 𐄂')
vim.cmd('ab :tick: ✓')
vim.cmd('ab :key: 🔑')
vim.cmd('ab :lock: 🔒')
vim.cmd('ab :lock+key: 🔐')

vim.g['loaded_perl_provider'] = 0
vim.g['loaded_ruby_provider'] = 0
