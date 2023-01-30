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
lvim.builtin.which_key.mappings["z"] = {
  name = "+Zetelkasten",
  p = { "<cmd>lua require('telekasten').panel()<CR>", "open panel" },
  d = { "<cmd>lua require('telekasten').find_daily_notes()<CR>", "find daily notes" },
  z = { "<cmd>lua require('telekasten').follow_link()<CR>", "follow link" },
  r = { "<cmd>lua require('telekasten').rename_note()<CR>", "rename note" },
  n = { "<cmd>lua require('telekasten').new_note()<CR>", "new note" },
  y = { "<cmd>lua require('telekasten').yank_notelink()<CR>", "yank notelink" },
  i = { "<cmd>lua require('telekasten').insert_link()<CR>", "insert link" },
  v = { "<cmd>lua require('telekasten').switch_vault()<CR>", "switch vault" },
  f = { "<cmd>lua require('telekasten').follow_link()<CR>", "follow link" },
  t = { "<cmd>lua require('telekasten').new_templated_note()<CR>", "new templated note" },
  s = {
    name = "+search",
    g = { "<cmd>lua require('telekasten').search_notes()<CR>", "grep notes" },
    t = { "<cmd>lua require('telekasten').find_notes()<CR>", "find notes by title" },
    k = { "<cmd>lua require('telekasten').show_tags()<CR>", "show keywords" },
    w = { "<cmd>lua require('telekasten').find_weekly_notes()<CR>", "find weekly notes by title" },
    f = { "<cmd>lua require('telekasten').find_friends()<CR>", "show linked notes to note under cursor" },
    b = { "<cmd>lua require('telekasten').show_backlinks()<CR>", "show linked notes" },
  },
  g = {
    name = "+goto",
    w = { "<cmd>lua require('telekasten').goto_thisweek()<CR>", "Open this week's notes" },
    t = { "<cmd>lua require('telekasten').goto_today()<CR>", "Open daily's note" },
  }
}

