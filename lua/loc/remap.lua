-- Leader key (main command prefix)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Basic keymaps
local map = vim.keymap.set
map("n", "<leader>w", ":w<CR>", { desc = "Save file" })
map("n", "<leader>q", ":q<CR>", { desc = " Quit " })

-- Telescope keymaps
map("n", "<leader>pf", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<C-p>", "<cmd>Telescope git_files<CR>", { desc = "Git files" })
map("n", "<leader>ps", "<cmd>Telescope grep_string<CR>", { desc = "Grep string" })

-- Oil keymaps
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Undotree keymaps
map("n", "<leader>u", "<cmd>UndotreeToggle<CR>", { desc = "Toggle UndoTreee" })

-- NvimTree keymaps
map("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Fugitive (Git) keymaps
map("n", "<leader>gs", "<cmd>Git<CR>", { desc = "Git status" })

-- LSP keymaps (buffer-local, only when LSP attaches)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, {
        buffer = ev.buf,
        desc = desc,
      })
    end

    map("n", "gd", vim.lsp.buf.definition, "Go to definition")
    map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
    map("n", "gr", vim.lsp.buf.references, "References")
    map("n", "gi", vim.lsp.buf.implementation, "Implementation")
    map("n", "K", vim.lsp.buf.hover, "Hover docs")

    map("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
    map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
    map("n", "<leader>f", function()
      vim.lsp.buf.format({ async = true })
    end, "Format")

    map("n", "[d", vim.diagnostic.goto_prev, "Prev diagnostic")
    map("n", "]d", vim.diagnostic.goto_next, "Next diagnostic")
    map("n", "<leader>dd", vim.diagnostic.open_float, "Line diagnostics")
  end,
})
