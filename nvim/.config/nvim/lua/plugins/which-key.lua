return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")
    wk.setup()
    wk.register({
      ["<leader>f"] = { name = "+file" },
      ["<leader>g"] = { name = "+git" },
      ["<leader>l"] = { name = "+lsp" },
    })
  end,
}
