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
lvim.builtin.which_key.mappings["a"] = {
  name = "harpoon",
  a = { "<cmd>lua require('harpoon.mark').add_file()<cr>", "add file" },
  m = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "menu" },
  n = { "<cmd>lua require('harpoon.ui').nav_next()<cr>", "next" },
  p = { "<cmd>lua require('harpoon.ui').nav_prev()<cr>", "prev" },
  ['1'] = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", "1" },
  ['2'] = { "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", "2" },
  ['3'] = { "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", "3" },
  ['4'] = { "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", "4" },
  ['5'] = { "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", "5" },
  ['6'] = { "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", "6" },
}

lvim.builtin.which_key.mappings["<Leader>"] = { "/", "search" }
lvim.builtin.which_key.mappings["H"] = { ":let @@=<C-R><C-W><CR>", "copy Hex" }
