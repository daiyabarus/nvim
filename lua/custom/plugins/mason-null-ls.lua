-- custom/plugins/mason-null-ls

require("mason-null-ls").setup {
  ensure_installed = {
    "black",
    "flake8",
    "isort",
    "mypy",
  },
}
