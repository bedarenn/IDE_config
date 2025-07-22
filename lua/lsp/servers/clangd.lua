return {
  cmd = { "clangd", "--background-index", "--clang-tidy" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = function(fname)
    return require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt", ".git")(fname)
  end,
}
