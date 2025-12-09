vim.keymap.set("n", "|", "<cmd>q!<CR>", { desc = "Quit", noremap = true, silent = true }) -- quick quit (no save)

vim.keymap.set("n", "rr", "<cmd>cq<CR>", { desc = "Reload", noremap = true, silent = true }) -- relaod neovim

vim.keymap.set("n", "?", "~", { desc = "toggle letter case", noremap = true, silent = true }) -- uppercase/lowercase

-- Move line or block of code up/down and indent
vim.keymap.set(
  "n",
  "<A-e>",
  "<cmd>execute 'move .+' . v:count1<cr>==",
  { desc = "Move Down", noremap = true, silent = true }
)
vim.keymap.set(
  "v",
  "<A-e>",
  ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv",
  { desc = "Move Down", noremap = true, silent = true }
)
vim.keymap.set(
  "n",
  "<A-a>",
  "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==",
  { desc = "Move Up", noremap = true, silent = true }
)
vim.keymap.set(
  "v",
  "<A-a>",
  ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv",
  { desc = "Move Up", noremap = true, silent = true }
)

-- Indent selection and reselect
vim.keymap.set("n", "<M-h>", "V<gv", { desc = "shift left", noremap = true, silent = true })
vim.keymap.set("v", "<M-h>", "<gv", { desc = "shift left", noremap = true, silent = true })
vim.keymap.set("n", "<M-i>", "V>gv", { desc = "shift right", noremap = true, silent = true })
vim.keymap.set("v", "<M-i>", ">gv", { desc = "shift right", noremap = true, silent = true })

-- Delete key
vim.keymap.set("n", "<Del>", '<Right>"_x<Left>', { desc = "Delete next character", noremap = true, silent = true })
vim.keymap.set("i", "<Del>", "<Right><BS>", { desc = "Delete next character", noremap = true, silent = true })
vim.keymap.set("v", "<Del>", '"_d', { desc = "Delete selection", noremap = true, silent = true })

-- Delete word backward
vim.keymap.set("i", "<M-BS>", "<C-w>", { desc = "Delete WORD backward", noremap = true, silent = true })
vim.keymap.set("n", "<M-BS>", "db", { desc = "Delete WORD backward", noremap = true, silent = true })

-- Insert 3 blank lines below cursor - Shift-enter
vim.keymap.set(
  "n",
  "<S-CR>",
  "o<CR><space><CR><Esc><Up>^",
  { desc = "insert 3 lines below", noremap = true, silent = true }
)
vim.keymap.set("i", "<S-CR>", "<CR><CR><Up><BS><CR>", { desc = "insert 3 lines below", noremap = true, silent = true })

-- Insert 3 blank lines above cursor - Cmd-Alt-enter
vim.keymap.set(
  "n",
  "<D-A-CR>",
  "O<CR><space><CR><Esc><Up>^",
  { desc = "insert 3 lines above", noremap = true, silent = true }
)
vim.keymap.set(
  "i",
  "<D-A-CR>",
  "<Esc>O<CR><space><CR><Esc><Up>^i<Del>",
  { desc = "insert 3 lines above", noremap = true, silent = true }
)

-- Folding
vim.keymap.set("n", "<BS>", "za", { desc = "toggle fold/unfold", noremap = true, silent = true }) -- single fold
vim.keymap.set("n", "<C-BS>", function()
  if vim.wo.foldlevel == 0 then
    vim.cmd("normal! zR") -- unfold all
  else
    vim.cmd("normal! zM") -- fold all
  end
end, { desc = "toggle fold/unfold all", noremap = true, silent = true }) -- fold all

-- Fyler
vim.keymap.set(
  { "n", "v" },
  "_",
  "<CMD>Fyler kind=split_right<CR>",
  { desc = "Fyler explorer", noremap = true, silent = true }
)

-- Open oil with preview
vim.keymap.set("n", "-", function()
  local oil = require("oil")
  local util = require("oil.util")
  oil.open_float()
  util.run_after_load(0, function()
    oil.open_preview()
  end)
end, { desc = "oil: open file explorer with preview", noremap = true, silent = true })
