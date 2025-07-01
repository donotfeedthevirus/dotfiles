return {
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
          opts.ensure_installed = opts.ensure_installed or {}
          table.insert(opts.ensure_installed, "http")
        end,
      },
    },
    init = function()
      vim.g.rest_nvim = {
        skip_ssl_verification = true,
        highlight = { enable = true, timeout = 750 },
      }
    end,
    config = function()
      pcall(require("telescope").load_extension, "rest")

      local map = vim.keymap.set
      map("n", "<leader>rr", "<Cmd>Rest run<CR>",    { desc = "Run REST request" })
      map("n", "<leader>rl", "<Cmd>Rest last<CR>",   { desc = "Run last REST request" })
      map("n", "<leader>ro", "<Cmd>Rest open<CR>",   { desc = "Open REST results panel" })
      map("n", "<leader>re", "<Cmd>Rest env select<CR>", { desc = "Select .env file" })
    end,
  },
}
