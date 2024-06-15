
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
require("user.options")
-- Which-key
require("user.which-key")
-- TreeSitter
require("user.treesitter")
-- Generic LSP settings
require("user.lsp")
-- Formatter
require("user.formatter")
-- Linters
require("user.linters")
-- Additionals Plugins
require("user.plugins")
-- Usercommands
require("user.usercommands")
-- Autocommands
require("user.autocommands")
-- Remapings
require("user.remapping")
-- Abreviations
require("user.abbreviations")
-- Debbuger
require("user.debbugers")

local notify = vim.notify
vim.notify = function(msg, ...)
    if msg:match("warning: multiple different client offset_encodings") then
        return
    end

    notify(msg, ...)
end

