vim.keymap.set("n", "`", "vi`A", { desc = "append in ``", noremap = true, silent = true }) -- ok
vim.keymap.set("n", "'", "vi'A", { desc = "append in ''", noremap = true, silent = true }) -- ok
vim.keymap.set("n", '"', 'vi"A', { desc = 'append in ""', noremap = true, silent = true }) -- ok
vim.keymap.set("n", "(", "vi(A", { desc = "append in ()", noremap = true, silent = true }) --
vim.keymap.set("n", "[", "vi[A", { desc = "append in []", noremap = true, silent = true }) --
vim.keymap.set("n", "{", "vi{A", { desc = "append in {}", noremap = true, silent = true }) --
vim.keymap.set("n", "<", "vi<A", { desc = "append in <>", noremap = true, silent = true }) --
vim.keymap.set("n", "~", "$F`i", { desc = "append before last ``", noremap = true, silent = true })
vim.keymap.set("n", "<>", "$F>i", { desc = "append before last <>", noremap = true, silent = true })
vim.keymap.set("n", "''", "$F'i", { desc = "append before last ''", noremap = true, silent = true })
vim.keymap.set("n", '""', '$F"i', { desc = 'append before last ""', noremap = true, silent = true })
vim.keymap.set("n", "()", "$F)i", { desc = "append before last ()", noremap = true, silent = true })
vim.keymap.set("n", "[]", "$F]i", { desc = "append before last []", noremap = true, silent = true })
vim.keymap.set("n", "{}", "$F}i", { desc = "append before last {}", noremap = true, silent = true })
vim.keymap.set("n", "<C-w>", "ciw", { desc = "change word", noremap = true, silent = true })
vim.keymap.set("n", "<C-t>", "cit", { desc = "change in tag", noremap = true, silent = true })
vim.keymap.set("n", "<C-`>", "ci`", { desc = "change in ``", noremap = true, silent = true })
vim.keymap.set("n", "<C-'>", "ci'", { desc = "change in ''", noremap = true, silent = true })
vim.keymap.set("n", '<C-">', 'ci"', { desc = 'change in ""', noremap = true, silent = true })
vim.keymap.set("n", "<C-S-'>", 'ci"', { desc = 'change in ""', noremap = true, silent = true })
vim.keymap.set("n", "<C-S-9>", "ci(", { desc = "change in ()", noremap = true, silent = true })
vim.keymap.set("n", "<C-[>", "ci[", { desc = "change in []", noremap = true, silent = true })
vim.keymap.set("n", "<C-S-[>", "ci{", { desc = "change in {}", noremap = true, silent = true })
vim.keymap.set("n", "<C-S-,>", "ci<", { desc = "change in <>", noremap = true, silent = true })
vim.keymap.set("n", "<A-w>", "viw", { desc = "select word", noremap = true, silent = true }) -- ok
vim.keymap.set("n", "<A-t>", "vit", { desc = "select in tag", noremap = true, silent = true })
vim.keymap.set("n", "<A-f>", "V$%", { desc = "select function", noremap = true, silent = true }) -- ok
vim.keymap.set("n", "<A-`>", "vi`", { desc = "select in ``", noremap = true, silent = true })
vim.keymap.set("n", "<A-'>", "vi'", { desc = "select in ''", noremap = true, silent = true })
vim.keymap.set("n", "<A-S-'>", 'vi"', { desc = 'select in ""', noremap = true, silent = true })
vim.keymap.set("n", "<A-S-9>", "vi(", { desc = "select in ()", noremap = true, silent = true })
vim.keymap.set("n", "<A-[>", "vi[", { desc = "select in []", noremap = true, silent = true })
vim.keymap.set("n", "<A-S-[>", "vi{", { desc = "select in {}", noremap = true, silent = true })
vim.keymap.set("n", "<A-S-,>", "vi<", { desc = "select in <>", noremap = true, silent = true })
vim.keymap.set("n", "<C-A-t>", "vat", { desc = "select around tag", noremap = true, silent = true })
vim.keymap.set("n", "<C-A-`>", "va`", { desc = "select around ``", noremap = true, silent = true })
vim.keymap.set("n", "<C-A-'>", "va'", { desc = "select around ''", noremap = true, silent = true })
vim.keymap.set("n", "<C-A-S-'>", 'va"', { desc = 'select around ""', noremap = true, silent = true })
vim.keymap.set("n", "<C-A-S-9>", "va(", { desc = "select around ()", noremap = true, silent = true })
vim.keymap.set("n", "<C-A-[>", "va[", { desc = "select around []", noremap = true, silent = true })
vim.keymap.set("n", "<C-A-S-[>", "va{", { desc = "select around {}", noremap = true, silent = true })
vim.keymap.set("n", "<C-A-S-,>", "va<", { desc = "select around <>", noremap = true, silent = true })
--
vim.keymap.set("n", "<leader>h", "", { desc = "custom quick edit", noremap = true, silent = true })
vim.keymap.set("n", "<leader>ha", "", { desc = "append", noremap = true, silent = true })
vim.keymap.set("n", "<leader>ha`", "vi`A", { desc = "append ``", noremap = true, silent = true }) --
vim.keymap.set("n", "<leader>ha'", "vi'A", { desc = "append ''", noremap = true, silent = true }) --
vim.keymap.set("n", '<leader>ha"', 'vi"A', { desc = 'append ""', noremap = true, silent = true }) --
vim.keymap.set("n", "<leader>ha(", "vi(A", { desc = "append ()", noremap = true, silent = true }) --
vim.keymap.set("n", "<leader>ha[", "vi[A", { desc = "append []", noremap = true, silent = true }) --
vim.keymap.set("n", "<leader>ha{", "vi{A", { desc = "append {}", noremap = true, silent = true }) --
vim.keymap.set("n", "<leader>ha<", "vi<A", { desc = "append <>", noremap = true, silent = true }) --
vim.keymap.set("n", "<leader>hl", "", { desc = "append last", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hl`", "$F`i", { desc = "append last ``", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hl'", "$F'i", { desc = "append last ''", noremap = true, silent = true })
vim.keymap.set("n", '<leader>hl"', '$F"i', { desc = 'append last ""', noremap = true, silent = true })
vim.keymap.set("n", "<leader>hl(", "$F)i", { desc = "append last ()", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hl[", "$F>i", { desc = "append last []", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hl{", "$F}i", { desc = "append last {}", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hl<", "$F>i", { desc = "append last <>", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hc", "", { desc = "change", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hcw", "ciw", { desc = "change word", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hct", "cit", { desc = "change in tag", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hc`", "ci`", { desc = "change in ``", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hc'", "ci'", { desc = "change in ''", noremap = true, silent = true })
vim.keymap.set("n", '<leader>hc"', 'ci"', { desc = 'change in ""', noremap = true, silent = true })
vim.keymap.set("n", "<leader>hc(", "ci(", { desc = "change in ()", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hc[", "ci[", { desc = "change in []", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hc{", "ci{", { desc = "change in {}", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hc<", "ci<", { desc = "change in <>", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hi", "", { desc = "select inside", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hiw", "viw", { desc = "select word", noremap = true, silent = true }) --
vim.keymap.set("n", "<leader>hit", "vit", { desc = "select in tag", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hif", "V$%", { desc = "select function", noremap = true, silent = true }) --
vim.keymap.set("n", "<leader>hi`", "vi`", { desc = "select in ``", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hi'", "vi'", { desc = "select in ''", noremap = true, silent = true })
vim.keymap.set("n", '<leader>hi"', 'vi"', { desc = 'select in ""', noremap = true, silent = true })
vim.keymap.set("n", "<leader>hi(", "vi(", { desc = "select in ()", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hi[", "vi[", { desc = "select in []", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hi{", "vi{", { desc = "select in {}", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hi<", "vi<", { desc = "select in <>", noremap = true, silent = true })
vim.keymap.set("n", "<leader>ho", "", { desc = "select around", noremap = true, silent = true })
vim.keymap.set("n", "<leader>hot", "vat", { desc = "select around tag", noremap = true, silent = true })
vim.keymap.set("n", "<leader>ho`", "va`", { desc = "select around ``", noremap = true, silent = true })
vim.keymap.set("n", "<leader>ho'", "va'", { desc = "select around ''", noremap = true, silent = true })
vim.keymap.set("n", '<leader>ho"', 'va"', { desc = 'select around ""', noremap = true, silent = true })
vim.keymap.set("n", "<leader>ho(", "va(", { desc = "select around ()", noremap = true, silent = true })
vim.keymap.set("n", "<leader>ho[", "va[", { desc = "select around []", noremap = true, silent = true })
vim.keymap.set("n", "<leader>ho{", "va{", { desc = "select around {}", noremap = true, silent = true })
vim.keymap.set("n", "<leader>ho<", "va<", { desc = "select around <>", noremap = true, silent = true })
