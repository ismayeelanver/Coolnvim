require("config.init")
require("keymap.key")
vim.cmd('set number')
vim.keymap.set('v', '<Leader>1f', vim.lsp.buf.format, bufopts)
