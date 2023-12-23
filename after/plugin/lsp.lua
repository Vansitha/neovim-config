local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

---
-- Replace these language servers
-- with the ones you have installed in your system
---

-- Uncomment if lua lsp is installed
require('lspconfig').lua_ls.setup({})

-- Uncommentif rust lsp if installed
-- require('lspconfig').rust_analyzer.setup({})

require('lspconfig').tsserver.setup({}) 
