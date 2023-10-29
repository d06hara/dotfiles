local overrides = require "custom.configs.overrides"
local plugins = {

  --------------------------------------------------default plugin ---------------------------------
  {
    "hrsh7th/nvim-cmp",
    opts = {
      resources = {
        { name = "nvim_lsp", trigger_characters = {"-"} },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "codeium"},
        { name = "path" },
        { name = "nvim_lua"}
      },
      experimental = {
        ghost_text = true,
      },
    },
    dependencies = {
      -- ai based completion
      {
        "Exafunction/codeium.vim",
        event = 'BufEnter'
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
      },
    },
  },

  ------ go --------
  {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "dreamsofcode-io/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
      require("core.utils").load_mappings("dap_go")
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },


}

return plugins
