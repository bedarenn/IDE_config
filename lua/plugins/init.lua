-- bootstrap lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  -- UI
  require("plugins.ui.tokyonight"),
  require("plugins.ui.lualine"),
  -- require("plugins.ui.tree"),
  require("plugins.ui.indentation"),
  require("plugins.ui.todo"),
  require("plugins.ui.alpha"),

  -- LSP
  require("plugins.lsp.lspconfig"),
  require("plugins.lsp.mason"),
  require("plugins.lsp.mason-lspconfig"),

  -- CMP
  require("plugins.cmp.cmp"),
  require("plugins.cmp.sources"),

  -- EDITOR
  require("plugins.editor.snipset"), -- TODO: add snipset
  require("plugins.editor.lint"),
  require("plugins.editor.treesitter"),
  require("plugins.editor.conform"),
  require("plugins.editor.trouble"),
  require("plugins.editor.comment"),
  require("plugins.editor.surround"),
  require("plugins.editor.aerial"),

  -- TOOLS
  require("plugins.tools.telescope"),
  require("plugins.tools.gitsigns"),
})
