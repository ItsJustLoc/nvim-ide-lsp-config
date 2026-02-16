return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- If the plugin isn't installed/loaded yet, don't error on startup
    local ok, configs = pcall(require, "nvim-treesitter.configs")
    if not ok then
--      vim.notify("nvim-treesitter not available yet (run :Lazy sync)", vim.log.levels.WARN)
      return
    end

    configs.setup({
      ensure_installed = { "lua", "python", "vim", "vimdoc" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
