return {
"nvim-telescope/telescope.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        -- Make Telescope feel snappier and more IDE-like
        prompt_prefix = "  ",
        selection_caret = "❯ ",
        path_display = { "smart" },

        -- Don’t waste time searching junk
        file_ignore_patterns = {
          "^.git/",
          "^.venv/",
          "^venv/",
          "^__pycache__/",
          "%.pyc$",
          "^node_modules/",
          "^dist/",
          "^build/",
        },

        -- Nice layout defaults
        layout_strategy = "horizontal",
        layout_config = {
          width = 0.95,
          height = 0.9,
          preview_width = 0.55,
        },

        -- Better in-picker navigation
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            ["<Esc>"] = actions.close,
          },
          n = {
            ["q"] = actions.close,
          },
        },
      },

      pickers = {
        find_files = {
          hidden = true, -- still ignores .gitignore
        },
      },
    })

    -- Load fzf extension if available (faster sorting)
    pcall(telescope.load_extension, "fzf")
  end,
}
