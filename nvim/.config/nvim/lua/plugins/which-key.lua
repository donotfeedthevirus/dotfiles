return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")
    wk.setup()
    wk.register({
      ["<leader>"] = {
        b = { name = "+buffer" },
        c = { name = "+code" },
        f = { name = "+find" },
        g = { name = "+goto" },
        r = { name = "+rest" },
      },
    })
  end,
}
