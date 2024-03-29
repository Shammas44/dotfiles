-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}
lvim.builtin.which_key.mappings["m"] = {
  name = "+Session Management",
  w = { "<cmd>mks! <cr>", "Save" },
  r = { "<cmd>source Session.vim<cr>", "Reload" },
}

lvim.builtin.which_key.mappings["<Leader>"] = { "/", "search" }
lvim.builtin.which_key.mappings["H"] = { ":let @@=<C-R><C-W><CR>", "copy Hex" }
