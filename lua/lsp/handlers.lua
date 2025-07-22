local M = {}

-- 🧩 Global diagnostic UI config
vim.diagnostic.config({
  virtual_text = true,
  signs = true, -- signs in the gutter
  underline = true, -- underline errors
  update_in_insert = false, -- don't update while typing
  severity_sort = true, -- sort by error level
})

M.on_attach = function(_, bufnr)
  -- 🎯 Keymaps
  local map = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true })
  end

  map("n", "gd", vim.lsp.buf.definition)
  map("n", "gr", vim.lsp.buf.references)
  map("n", "K", vim.lsp.buf.hover)
  map("n", "<leader>rn", vim.lsp.buf.rename)
  map("n", "<leader>ca", vim.lsp.buf.code_action)
end

-- 🧠 LSP client capabilities (used by nvim-cmp)
M.capabilities = require("cmp_nvim_lsp").default_capabilities()

return M
