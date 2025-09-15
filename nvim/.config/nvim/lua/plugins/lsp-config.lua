return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright",
        "vtsls",
        "eslint",
        "html",
        "cssls",
        "tailwindcss",
        "jsonls",
        "yamlls",
        "bashls",
        "dockerls",
        "docker_compose_language_service",
        "marksman",
        "taplo",
      },
      automatic_installation = true,
    },
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    lazy = false,
    opts = {
      ensure_installed = { "prettier", "stylua", "black", "isort", "eslint_d" },
      run_on_start = true,
      start_delay = 3000,
    },
  },

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local on_attach = function(_, bufnr)
        local map = function(m, l, r, d) vim.keymap.set(m, l, r, { buffer = bufnr, desc = d }) end
        map("n", "K", vim.lsp.buf.hover, "Hover")
        map("n", "gd", vim.lsp.buf.definition, "Go to definition")
        map("n", "gr", vim.lsp.buf.references, "References")
        map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
        map("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
      end

      vim.diagnostic.config({ virtual_text = false, severity_sort = true })

      local servers = {
        "lua_ls",
        "pyright",
        "vtsls",
        "eslint",
        "html",
        "cssls",
        "tailwindcss",
        "jsonls",
        "yamlls",
        "bashls",
        "dockerls",
        "docker_compose_language_service",
        "marksman",
        "taplo",
      }

      for _, server in ipairs(servers) do
        if server == "lua_ls" then
          lspconfig.lua_ls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
              Lua = {
                diagnostics = { globals = { "vim" } },
                workspace = { checkThirdParty = false },
              },
            },
          })
        else
          lspconfig[server].setup({
            capabilities = capabilities,
            on_attach = on_attach,
          })
        end
      end
    end,
  },
}
