local map = vim.keymap.set
map("n", "<leader>ff", "<cmd>Telescope fd<CR>")
map("n", "<leader>th", "<cmd>Telescope colorscheme<CR>")
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "NvimTreeToggle window" })
map("n", "<C-h>", "<cmd>NvimTreeFocus<CR>", { desc = "NvimTreeFocus window" })

