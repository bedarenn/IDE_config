local lspconfig = require("lspconfig")
local handlers = require("lsp.handlers")

local servers = {

  "lua_ls",
  "pyright",
  "clangd",
}

for _, name in ipairs(servers) do
  local ok, config = pcall(require, "lsp.servers." .. name)
  if not ok then
    config = {}
  end

  lspconfig[name].setup(vim.tbl_deep_extend("force", {
    on_attach = handlers.on_attach,
    capabilities = handlers.capabilities,
  }, config))
end
