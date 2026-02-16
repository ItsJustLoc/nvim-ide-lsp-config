return {
  "mbbill/undotree",
  config = function()
    -- strongly recommended so undo history persists after closing nvim
    vim.opt.undofile = true
    vim.opt.undodir = vim.fn.stdpath("state") .. "/undo"
  end,
}
