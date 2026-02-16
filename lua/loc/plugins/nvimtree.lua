return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      filters = { dotfiles = false },
      renderer = { group_empty = true },
      view = {
        width = 30,
        side = "left",
      },
    })

  end,
}
