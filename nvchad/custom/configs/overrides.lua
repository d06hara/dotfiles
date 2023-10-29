local M = {}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    -- "typescript-language-server",
    "deno",
    "emmet-ls",
    "json-lsp",
    -- "tailwindcss-language-server",
    "unocss-language-server",

    -- server
    "gopls",

    -- shell
    "shfmt",
    "shellcheck",
    "bash-language-server",

    -- "clangd",
    -- "clang-format",
  },
}

return M
