-- ── A ───────────────────────────────────────────────────────────────

-- ── B ───────────────────────────────────────────────────────────────
-- vim.keymap.set("n", "<leader>bh", ":BufferLineMovePrev<CR>", { desc = "Move buffer left" })
-- vim.keymap.set("n", "<leader>bi", ":BufferLineMoveNext<CR>", { desc = "Move buffer right" })

-- vim.keymap.set("n", "<leader>bH", ":lua require'bufferline'.move_to(-1)<CR>", { desc = "Move buffer start" })
-- vim.keymap.set("n", "<leader>bI", ":lua require'bufferline'.move_to(1)<CR>", { desc = "Move buffer end" })

-- ── C ───────────────────────────────────────────────────────────────

-- ── D ───────────────────────────────────────────────────────────────

-- ── E ───────────────────────────────────────────────────────────────

-- ── F ───────────────────────────────────────────────────────────────
-- Copy filepath to clipboard
vim.keymap.set("n", "<leader>F", function()
  local filePath = vim.fn.expand("%:~") -- Gets the file path relative to the home directory
  vim.fn.setreg("+", filePath) -- Copy the file path to the clipboard register
  vim.notify("File path copied to clipboard: " .. filePath, vim.log.levels.INFO)
end, { desc = "copy filepath to clipboard", noremap = true, silent = true })

-- ── G ───────────────────────────────────────────────────────────────

-- ── H ───────────────────────────────────────────────────────────────

-- ── I ───────────────────────────────────────────────────────────────
vim.keymap.set("n", "<leader>I", function()
  local filePath = vim.fn.expand("%:~") -- Gets the file path relative to the home directory
  local lineToInsert = filePath
  local row, _ = unpack(vim.api.nvim_win_get_cursor(0)) -- Get the current row number
  -- Insert line, leave cursor current position
  vim.api.nvim_buf_set_lines(0, row - 1, row - 0, false, { lineToInsert })
  -- Comment out the newly inserted line using the plugin's 'gcc' command
  vim.cmd("normal gcc")
  -- Insert a blank line below the current line
  vim.api.nvim_buf_set_lines(0, row, row, false, { "" })
end, { desc = "insert filepath name and location", noremap = true, silent = true }) -- Insert file name (commented)

vim.keymap.set(
  "n",
  "<leader>i",
  "<cmd>Telescope import<CR>",
  { desc = "telescope import", noremap = true, silent = true }
)

-- ── J ───────────────────────────────────────────────────────────────

-- ── K ───────────────────────────────────────────────────────────────
-- Styled comments
vim.keymap.set({ "n", "v" }, "<leader>k", "<cmd><CR>", { desc = "+comment", noremap = true, silent = true })
vim.keymap.set(
  { "n", "v" },
  "<leader>kk",
  "<cmd>CBllline<CR>",
  { desc = "comment line", noremap = true, silent = true }
)
vim.keymap.set({ "n", "v" }, "<leader>kb", "<cmd>CBccbox<CR>", { desc = "box", noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<leader>kl", "<cmd>CBline<CR>", { desc = "solid line", noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<leader>km", "<cmd>CBllbox14<CR>", { desc = "marked", noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<leader>kt", "<cmd>CBd<CR>", { desc = "remove box", noremap = true, silent = true })

-- ── L ───────────────────────────────────────────────────────────────

-- ── M ───────────────────────────────────────────────────────────────

-- ── N ───────────────────────────────────────────────────────────────

-- ── O ───────────────────────────────────────────────────────────────

-- ── P ───────────────────────────────────────────────────────────────

-- ── Q ───────────────────────────────────────────────────────────────

-- ── R ───────────────────────────────────────────────────────────────
vim.keymap.set(
  "n",
  "<leader>R",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "replace", noremap = true, silent = true }
) -- find and replace

-- ── S ───────────────────────────────────────────────────────────────

-- ── T ───────────────────────────────────────────────────────────────

-- ── U ───────────────────────────────────────────────────────────────

-- ── V ───────────────────────────────────────────────────────────────

-- ── W ───────────────────────────────────────────────────────────────
-- vim.keymap.set({ "n", "v" }, "<leader>W", function()
--   require("nvim-emmet").wrap_with_abbreviation()
-- end, { desc = "wrap html tag" }) -- old way, with plugin
vim.keymap.set("n", "<leader>W", "gsat<CR>", { desc = "wrap in html tag", noremap = true, silent = true })

-- ── X ───────────────────────────────────────────────────────────────

-- ── Y ───────────────────────────────────────────────────────────────

-- ── Z ───────────────────────────────────────────────────────────────

-- ── " ───────────────────────────────────────────────────────────────
vim.keymap.set(
  "n",
  "<leader>'",
  "<cmd>LiveServerStart<CR>",
  { desc = "start live server", noremap = true, silent = true }
)

-- ── ' ───────────────────────────────────────────────────────────────
vim.keymap.set(
  "n",
  '<leader>"',
  "<cmd>LiveServerStop<CR>",
  { desc = "stop live server", noremap = true, silent = true }
)

-- ── ; ───────────────────────────────────────────────────────────────
vim.keymap.set("n", "<leader>;", vim.diagnostic.setloclist, { desc = "quickfix list", noremap = true, silent = true })

-- ── / ───────────────────────────────────────────────────────────────
vim.keymap.set(
  "n",
  "<leader>/",
  "<cmd>lua Snacks.notifier.hide()<CR>",
  { desc = "dismiss notifications", noremap = true, silent = true }
)

-- ── ? ───────────────────────────────────────────────────────────────
vim.keymap.set(
  "n",
  "<leader>?",
  "<cmd>lua Snacks.notifier.show_history()<CR>",
  { desc = "show notifications", noremap = true, silent = true }
)
