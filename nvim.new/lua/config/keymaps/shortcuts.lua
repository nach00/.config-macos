-- ── 1 ───────────────────────────────────────────────────────────────
vim.keymap.set("n", "<D-d>", "VYP<Down>", { desc = "Duplicate line", noremap = true, silent = true })
vim.keymap.set("i", "<D-d>", "<Esc>VYP<Down>i", { desc = "Duplicate line", noremap = true, silent = true })
vim.keymap.set("v", "<D-d>", "YPgv", { desc = "Duplicate block", noremap = true, silent = true })

vim.keymap.set(
  { "n", "t" },
  "<A-BS>",
  "<cmd>lua local dir = vim.fn.expand('%:p:h'); if vim.fn.isdirectory(dir) == 1 then vim.cmd.lcd(dir) end; Snacks.terminal.toggle()<CR>",
  { desc = "terminal", noremap = true, silent = true }
)

-- ── 2 ───────────────────────────────────────────────────────────────

-- ── 3 ───────────────────────────────────────────────────────────────

-- ── 4 ───────────────────────────────────────────────────────────────

-- ── 5 ───────────────────────────────────────────────────────────────

-- ── 6 ───────────────────────────────────────────────────────────────
vim.keymap.set("n", "<D-b>", "<cmd>Telescope smart_open<CR>", { desc = "smart open", noremap = true, silent = true })
vim.keymap.set("n", "<D-e>", "<cmd>Telescope frecency<CR>", { desc = "frecency", noremap = true, silent = true })
