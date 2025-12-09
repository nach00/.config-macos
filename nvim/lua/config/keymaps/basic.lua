-- Arrows
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })

-- Delete key
vim.keymap.set("n", "<Del>", '<Right>"_x<Left>', { desc = "Delete next character", noremap = true, silent = true })
vim.keymap.set("i", "<Del>", "<Right><BS>", { desc = "Delete next character", noremap = true, silent = true })
vim.keymap.set("v", "<Del>", '"_d', { desc = "Delete selection", noremap = true, silent = true })

-- Tab
vim.keymap.set({ "n", "v" }, "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer", noremap = true, silent = true }) -- focus next tab
vim.keymap.set({ "n", "v" }, "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer", noremap = true, silent = true }) -- focus prev tab
