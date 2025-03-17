require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "<C-l>", "<cmd>lua vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')<CR>", { desc = "Copilot Accept" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-k>", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Open diagnostic float" })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
