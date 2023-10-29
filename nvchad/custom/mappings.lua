---@types MappingsTable
local M = {}

M.disabled = {
  i = {-- インサートモードに関するキーマッピング
    ["<C-b>"] = "", -- { "<ESC>^i", "beginning of line" },
    ["<C-e>"] = "", -- { "<End>", "end of line" },
    ["<C-h>"] = "", -- { "<Left>", "move left" },
    ["<C-l>"] = "", -- { "<Right>", "move right" },
    ["<C-j>"] = "", -- { "<Down>", "move down" },
    ["<C-k>"] = "", -- { "<Up>", "move up" },
  },
  n = { -- ノーマルモードに関するキーマッピング
    ["<C-s>"] = "", -- { "<cmd> w <CR>", "save file" },
 },
}

M.general = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
    ["<C-a>"] = { "<Home>", "beginning of line" },
    ["<C-e>"] = { "<End>", "end of line" },
    ["<C-b>"] = { "<Left>", "move left" },
    ["<C-f>"] = { "<Right>", "move right" },
    ["<C-n>"] = { "<Down>", "move down" },
    ["<C-p>"] = { "<Up>", "move up" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

return M
