local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    -- { command = "black", filetypes = { "python" } },
    -- { command = "isort", filetypes = { "python" } },
    { command = "prettier",     extra_args = { "--print-with", "100" }, filetypes = { "typescript", "typescriptreact", "css", "scss" } },
    { command = "markdownlint", extra_args = {}, filetypes = { "markdown", "vimwiki" } },
    { command = "yamlfmt", extra_args = {}, filetypes = { "yml", "yaml" } }
}
