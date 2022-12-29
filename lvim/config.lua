--                   __ _         _
--   ___ ___  _ __  / _(_) __ _  | |_   _  __ _
--  / __/ _ \| '_ \| |_| |/ _` | | | | | |/ _` |
-- | (_| (_) | | | |  _| | (_| |_| | |_| | (_| |
--  \___\___/|_| |_|_| |_|\__, (_)_|\__,_|\__,_|
--                        |___/

--=======================================================================
-- Usefull stuff to know
--=======================================================================

-- launch live-server with autoreload
-- npx live-server --quiet &

--=======================================================================
-- Separeted config files
--=======================================================================

-- Lvim options
vim.cmd("source ~/.config/lvim/conf/options.lua")
-- Which-key
vim.cmd("source ~/.config/lvim/conf/which-key.lua")
-- TreeSitter
vim.cmd("source ~/.config/lvim/conf/treesitter.lua")
-- Generic LSP settings
vim.cmd("source ~/.config/lvim/conf/lsp.lua")
-- Formatter
vim.cmd("source ~/.config/lvim/conf/formatter.lua")
-- Linters
vim.cmd("source ~/.config/lvim/conf/linters.lua")
-- Additionals Plugins
vim.cmd("source ~/.config/lvim/conf/plugins.lua")
-- Usercommands
vim.cmd("source ~/.config/lvim/conf/usercommands.lua")
-- Autocommands
vim.cmd("source ~/.config/lvim/conf/autocommands.lua")
-- Remapings
vim.cmd("source ~/.config/lvim/conf/remapping.lua")
-- Abreviations
vim.cmd("source ~/.config/lvim/conf/abbreviations.lua")
-- Debbuger
vim.cmd("source ~/.config/lvim/conf/debbugers.lua")

vim.opt.tags.append = { "~/Google\\ Drive/vimwiki/tags.global" }
