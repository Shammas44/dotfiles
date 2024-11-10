local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("region", {
    t({"// #region "}),
    i(1, "name"),
    t({"", ""}),
    i(0),
    t({"", "// #endregion"})
  }),

  s("c-section", {
    t({
      "// ==========================================================================",
      "//   0. DESCRIPTION",
      "// =========================================================================="
    })
  }),

  s("c-subsection", {
    t({
      "// comment",
      "// =========================================================================="
    })
  }),

  s("c-subsub", {
    t({
      "// 1.1.1 Comment",
      "// ====================================== "
    })
  }),

  s("c-fun", {
    t({
      "//[[",
      "// description",
      "// @param name - label",
      "// @return label",
      "//]]"
    })
  }),

  s("c-sumary", {
    t({
      "//  Description: Short description.",
      "//  Version: 1.0.0",
      "//  Last update: YYYY/MM/DD",
      "//  Author: User Name <contact@sebastientraber.com>",
      "//  ",
      "//  Summary:",
      "//  ",
      "//  0. ELEMENT",
      "//      - 0.1. TYPE ELEMENT",
      "//      - 0.2. TYPE ELEMENT",
      "//          - 0.2.1. TYPE ELEMENT",
      "//          - 0.2.2. TYPE ELEMENT",
      "//  1. ELEMENT",
      "//      - 1.1. TYPE ELEMENT",
      "//      - 1.2. TYPE ELEMENT",
      "//          - 1.2.1. TYPE ELEMENT",
      "//          - 1.2.2. TYPE ELEMENT  "
    })
  })
}
