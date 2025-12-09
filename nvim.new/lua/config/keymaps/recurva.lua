-- ── A ───────────────────────────────────────────────────────────────
vim.keymap.set({ "n", "x" }, "a", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true }) -- moves cursor up 1 line
vim.keymap.set({ "n", "v", "o", "x" }, "A", "{zz", { desc = "Prev paragraph", noremap = true }) -- moves cursor up 1 paragraph and recenter

-- ── B ───────────────────────────────────────────────────────────────
-- default
vim.keymap.set({ "n", "v", "o", "x" }, "<M-b>", "e", { desc = "End of word", noremap = true }) -- move cursor to end of word

-- ── C ───────────────────────────────────────────────────────────────
-- default

-- ── D ───────────────────────────────────────────────────────────────
-- default

-- ── E ───────────────────────────────────────────────────────────────
vim.keymap.set({ "n", "x" }, "e", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true }) -- move cursor down 1 line
vim.keymap.set({ "n", "v", "o", "x" }, "E", "}zz", { desc = "Next paragraph", noremap = true }) -- move cursor down 1 paragraph and recenter

-- ── F ───────────────────────────────────────────────────────────────
-- default

-- ── G ───────────────────────────────────────────────────────────────
-- default

-- ── H ───────────────────────────────────────────────────────────────
vim.keymap.set({ "n", "v", "o", "x" }, "h", "h", { desc = "Left", noremap = true }) -- move cursor left 1 character
vim.keymap.set({ "n", "v", "o", "x" }, "H", "^", { desc = "Far left", noremap = true }) -- move cursor to start of line (no whitespace)

-- ── I ───────────────────────────────────────────────────────────────
vim.keymap.set({ "n", "v", "o", "x" }, "i", "l", { desc = "Right", noremap = true }) -- move cursor right 1 character
vim.keymap.set({ "n", "v", "o", "x" }, "I", "$", { desc = "Far right", noremap = true }) -- move cursor to end of line

-- ── J ───────────────────────────────────────────────────────────────
vim.keymap.set({ "n", "v", "o", "x" }, "j", "i", { desc = "Insert", noremap = true }) -- enter insert mode
vim.keymap.set({ "n", "v", "o", "x" }, "J", "O", { desc = "Insert above", noremap = true }) -- insert line above cursor and enter insert mode

-- ── K ───────────────────────────────────────────────────────────────
vim.keymap.set("n", "k", "<cmd>norm gcc<CR><Down>", { desc = "comment" }) -- comment current line and move cursor down 1 line in normal mode
vim.keymap.set("v", "k", "<cmd>norm gcc<CR>gv", { desc = "comment" }) -- comment selected lines

-- ── L ───────────────────────────────────────────────────────────────
vim.keymap.set({ "n", "v", "o", "x" }, "l", "a", { desc = "Append", noremap = true }) -- append before cursor position and enter insert mode
vim.keymap.set({ "n", "v", "o", "x" }, "L", "o", { desc = "Insert below", noremap = true }) -- insert line below cursor and enter insert mode

-- ── M ───────────────────────────────────────────────────────────────
-- default

-- ── N ───────────────────────────────────────────────────────────────
-- default

-- ── O ───────────────────────────────────────────────────────────────
vim.keymap.set({ "n", "v" }, "o", function()
  local lines = math.floor(vim.api.nvim_win_get_height(0) * 0.35)
  vim.cmd("normal! " .. lines .. "kzz")
end, { desc = "scroll up 35%", noremap = true, silent = true }) -- scroll up 35%
vim.keymap.set({ "n", "v" }, "O", function()
  local lines = math.floor(vim.api.nvim_win_get_height(0) * 0.75)
  vim.cmd("normal! " .. lines .. "kzz")
end, { desc = "scroll up 75%", noremap = true, silent = true }) -- scroll up 75%

-- ── P ───────────────────────────────────────────────────────────────
vim.keymap.set({ "n", "v" }, "p", '"+p', { desc = "paste" }) -- paste from clipboard below cursor position
vim.keymap.set({ "n", "v" }, "P", '"+P', { desc = "paste" }) -- paste from clipboard abowe cursor position

-- ── Q ───────────────────────────────────────────────────────────────
vim.keymap.set("n", "Q", "<cmd>bdelete<cr>", { desc = "Close buffer", noremap = true, silent = true })

-- ── R ───────────────────────────────────────────────────────────────
-- default

-- ── S ───────────────────────────────────────────────────────────────

-- ── T ───────────────────────────────────────────────────────────────

-- ── U ───────────────────────────────────────────────────────────────
vim.keymap.set({ "n", "v" }, "u", function()
  local lines = math.floor(vim.api.nvim_win_get_height(0) * 0.35)
  vim.cmd("normal! " .. lines .. "jzz")
end, { desc = "scroll down 35%", noremap = true, silent = true }) -- scroll down 35%
vim.keymap.set({ "n", "v" }, "U", function()
  local lines = math.floor(vim.api.nvim_win_get_height(0) * 0.75)
  vim.cmd("normal! " .. lines .. "jzz")
end, { desc = "scroll down 75%", noremap = true, silent = true }) -- scroll down 75%

-- ── V ───────────────────────────────────────────────────────────────
-- Swap v and V for convenience
vim.keymap.set({ "n" }, "v", "V", { desc = "Visual line mode", noremap = true, silent = true }) -- visual line mode
vim.keymap.set({ "n" }, "V", "v", { desc = "Visual", noremap = true, silent = true }) -- visual mode

-- ── W ───────────────────────────────────────────────────────────────
vim.keymap.set({ "n", "v", "o", "x" }, "<M-w>", "E", { desc = "End of WORD", noremap = true }) -- move cursor to end of WORD

-- ── X ───────────────────────────────────────────────────────────────
vim.keymap.set({ "v" }, "x", '"+x', { desc = "cut", noremap = true, silent = true }) -- cut selection to clipboard
vim.keymap.set({ "n" }, "X", "Vx", { desc = "cut", noremap = true, silent = true }) -- cut current line

-- ── Y ───────────────────────────────────────────────────────────────
vim.keymap.set({ "n" }, "y", 'V"+y', { desc = "copy", noremap = true, silent = true }) -- copy current line to clipboard
vim.keymap.set({ "v" }, "y", '"+ygv', { desc = "copy", noremap = true, silent = true }) -- copy selection to clipboard

-- ── Z ───────────────────────────────────────────────────────────────
vim.keymap.set("n", "z", "<C-x>", { desc = "Decrement Integer", noremap = true, silent = true }) -- reduce next interger by 1
vim.keymap.set("n", "Z", "<C-a>", { desc = "Increment Integer", noremap = true, silent = true }) -- increase next interger by 1

-- ── Custom navigation ───────────────────────────────────────────────
vim.keymap.set("i", "<D-y>", "<End>", { desc = "Go to end (insert)", noremap = true, silent = true })
vim.keymap.set("i", "<D-l>", "<C-o>^", { desc = "Go to start (insert)", noremap = true, silent = true })

vim.keymap.set("n", "<D-u>", "<C-o>", { desc = "Go to previous cursor position", noremap = true, silent = true })
vim.keymap.set("n", "<D-o>", "<C-i>", { desc = "Go to next cursor position", noremap = true, silent = true })

-- vim.keymap.set("i", "<C-M-S-h>", "<Left>", { desc = "Left" })
-- vim.keymap.set("i", "<C-M-S-e>", "<Down>", { desc = "Down" })
-- vim.keymap.set("i", "<C-M-S-a>", "<Up>", { desc = "Up" })
-- vim.keymap.set("i", "<C-M-S-i>", "<Right>", { desc = "Right" })
