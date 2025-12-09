vim.keymap.set("n", "<M-j>", ":BufferLineMoveNext<CR>", { desc = "Move buffer right", noremap = true, silent = true })
vim.keymap.set("n", "<M-;>", ":BufferLineMovePrev<CR>", { desc = "Move buffer left", noremap = true, silent = true })
-- Navigate focus
vim.keymap.set("n", "<C-A-h>", "<C-w><C-h>", { desc = "focus left", noremap = true, silent = true })
vim.keymap.set("n", "<C-A-e>", "<C-w><C-j>", { desc = "focus down", noremap = true, silent = true })
vim.keymap.set("n", "<C-A-a>", "<C-w><C-k>", { desc = "focus up", noremap = true, silent = true })
vim.keymap.set("n", "<C-A-i>", "<C-w><C-l>", { desc = "focus right", noremap = true, silent = true })

-- Resize split view
vim.keymap.set(
  "n",
  "<C-A-Left>",
  ":vertical resize -2<CR>",
  { desc = "Decrease window width", noremap = true, silent = true }
)
vim.keymap.set("n", "<C-A-Down>", ":resize -2<CR>", { desc = "Decrease window height", noremap = true, silent = true })
vim.keymap.set("n", "<C-A-Up>", ":resize +2<CR>", { desc = "Increase window height", noremap = true, silent = true })
vim.keymap.set(
  "n",
  "<C-A-Right>",
  ":vertical resize +2<CR>",
  { desc = "Increase window width", noremap = true, silent = true }
)

-- Add new split view
vim.keymap.set("n", "<C-S-A-h>", function()
  vim.cmd("vsplit")
  vim.cmd("wincmd h")
end, { desc = "split left", noremap = true, silent = true })

vim.keymap.set("n", "<C-S-A-e>", function()
  vim.cmd("split")
  vim.cmd("wincmd j")
end, { desc = "split down", noremap = true, silent = true })

vim.keymap.set("n", "<C-S-A-a>", function()
  vim.cmd("split")
  vim.cmd("wincmd k")
end, { desc = "split up", noremap = true, silent = true })

vim.keymap.set("n", "<C-S-A-i>", function()
  vim.cmd("vsplit")
  vim.cmd("wincmd l")
end, { desc = "split right", noremap = true, silent = true })
