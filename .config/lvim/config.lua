--                   __ _         _
--   ___ ___  _ __  / _(_) __ _  | |_   _  __ _
--  / __/ _ \| '_ \| |_| |/ _` | | | | | |/ _` |
-- | (_| (_) | | | |  _| | (_| |_| | |_| | (_| |
--  \___\___/|_| |_|_| |_|\__, (_)_|\__,_|\__,_|
--                        |___/

require("user.options")
require("user.which-key")
require("user.treesitter")
require("user.lsp")
require("user.formatter")
require("user.linters")
require("user.plugins")
require("user.usercommands")
require("user.autocommands")
require("user.remapping")
require("user.abbreviations")
require("user.debbugers")

local notify = vim.notify
vim.notify = function(msg, ...)
    if msg:match("warning: multiple different client offset_encodings") then
        return
    end

    notify(msg, ...)
end

