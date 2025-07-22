return {
  "mfussenegger/nvim-lint",
  event = { "FileType", "BufWritePost", "InsertLeave" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      python = { "flake8" },
      lua = { "luacheck" },
      c = { "clangtidy" },
      cpp = { "clangtidy" },
    }

    -- Automatically lint on save, open, or insert leave
    vim.api.nvim_create_autocmd({ "BufWritePost", "FileType", "InsertLeave" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
