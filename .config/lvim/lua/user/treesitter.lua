-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "markdown",
  "markdown_inline",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

vim.filetype.add({
  extension = {
    wat = "rust",  -- closest syntax
  },
})

-- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

-- parser_config.wit = {
--   install_info = {
--     url = "https://github.com/liamwh/tree-sitter-wit",
--     files = { "src/parser.c", "src/scanner.c" },
--     maintainers = { "@liamwh" },
--     branch = "main",
--   },
--   filetype = "wit",
-- }

