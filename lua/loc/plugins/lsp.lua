return {
  -- Optional but still useful: provides server defaults + docs for many servers
  { "neovim/nvim-lspconfig" },

  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
        float = { border = "rounded" },
      })

      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "ruff" }, -- mason installs these
      })

      -- Completion-ready capabilities (works once you install nvim-cmp)
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.general = capabilities.general or {}
      capabilities.general.positionEncodings = { "utf-16" }

      local ok_cmp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
      if ok_cmp then
        capabilities = cmp_lsp.default_capabilities(capabilities)
      end

      -- Define configs (Neovim 0.11+)
      vim.lsp.config("pyright", {
        capabilities = capabilities,
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
            },
          },
        },
      })

      vim.lsp.config("ruff", {
        capabilities = capabilities,
      })

      -- Enable them
      vim.lsp.enable("pyright")
      vim.lsp.enable("ruff")
    end,
  },
}
