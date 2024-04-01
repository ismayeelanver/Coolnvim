local map = vim.keymap.set
map("n", "<leader>ff", "<cmd>Telescope fd<CR>")
map("n", "<leader>th", "<cmd>Telescope colorscheme<CR>")
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Nvimtree Toggle window" })
map("n", "<C-h>", "<cmd>NvimTreeFocus<CR>", { desc = "Nvimtree Focus window" })

