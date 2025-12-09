-- vim.keymap.set("n", "<A-3>", "ggVG", { desc = "Select all (⌘A)", noremap = true, silent = true })
-- vim.keymap.set("i", "<A-3>", "<Esc>ggVG", { desc = "Select all (⌘A)", noremap = true, silent = true })

vim.keymap.set("n", "<A-3>", function()
  vim.cmd("normal! gg")
  vim.wait(50)
  vim.cmd("normal! V")
  vim.wait(50)
  vim.cmd("normal! G")
end, { desc = "Select all with delay", silent = true })

vim.keymap.set("i", "<A-3>", function()
  vim.cmd("stopinsert") -- Exit insert mode
  vim.wait(50)
  vim.cmd("normal! gg")
  vim.wait(50)
  vim.cmd("normal! V")
  vim.wait(50)
  vim.cmd("normal! G")
end, { desc = "Select all with delay", silent = true })

-- Undo/Redo
vim.keymap.set({ "n", "v", "i" }, "<D-z>", "<cmd>undo<CR>", { desc = "Undo", noremap = true })
vim.keymap.set({ "n", "v", "i" }, "<D-S-z>", "<cmd>redo<CR>", { desc = "Redo", noremap = true })

-- save file
vim.keymap.set({ "x", "n", "s" }, "<D-s>", "<cmd>w<cr><esc>", { desc = "Save File", noremap = true, silent = true })
vim.keymap.set(
  { "i" },
  "<D-s>",
  "<Esc><cmd>w<CR>i<Right>",
  { desc = "Save file (⌘S)", noremap = true, silent = true }
)

-- cursor navigation
vim.keymap.set("n", "<A-Left>", "b", { desc = "Move to previous word (⌥←)", noremap = true, silent = true })
vim.keymap.set("i", "<A-Left>", "<C-o>b", { desc = "Move to previous word (⌥←)", noremap = true, silent = true })
vim.keymap.set("v", "<A-Left>", "b", { desc = "Move to previous word (⌥←)", noremap = true, silent = true })

vim.keymap.set("n", "<A-Right>", "e", { desc = "Move to next word (⌥→)", noremap = true, silent = true })
vim.keymap.set("i", "<A-Right>", "<C-o>e", { desc = "Move to next word (⌥→)", noremap = true, silent = true })
vim.keymap.set("v", "<A-Right>", "e", { desc = "Move to next word (⌥→)", noremap = true, silent = true })

vim.keymap.set("n", "<D-Left>", "B", { desc = "Move to previous WORD (⌘←)", noremap = true, silent = true })
vim.keymap.set("i", "<D-Left>", "<C-o>B", { desc = "Move to previous WORD (⌘←)", noremap = true, silent = true })
vim.keymap.set("v", "<D-Left>", "B", { desc = "Move to previous WORD (⌘←)", noremap = true, silent = true })

vim.keymap.set("n", "<D-Right>", "E", { desc = "Move to next WORD (⌘→)", noremap = true, silent = true })
vim.keymap.set("i", "<D-Right>", "<C-o>E", { desc = "Move to next WORD (⌘→)", noremap = true, silent = true })
vim.keymap.set("v", "<D-Right>", "E", { desc = "Move to next WORD (⌘→)", noremap = true, silent = true })

-- Copy/Cut/Paste
vim.keymap.set({ "n" }, "<D-c>", 'V"+y', { desc = "copy", noremap = true, silent = true })
vim.keymap.set({ "v" }, "<D-c>", '"+y', { desc = "copy", noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<D-x>", '"+x', { desc = "cut", noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<D-v>", '"+p', { desc = "paste", noremap = true, silent = true })
