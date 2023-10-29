---@type ChadrcConfig
local M = {}

M.ui = { theme = 'catppuccin' }

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"



-- M.mappings = {
--   -- 無効化するデフォルトのキーマッピング
--   disabled = {
--     i = {-- インサートモードに関するキーマッピング
--       ["<C-b>"] = "", -- { "<ESC>^i", "beginning of line" },
--       ["<C-e>"] = "", -- { "<End>", "end of line" },
--       ["<C-h>"] = "", -- { "<Left>", "move left" },
--       ["<C-l>"] = "", -- { "<Right>", "move right" },
--       ["<C-j>"] = "", -- { "<Down>", "move down" },
--       ["<C-k>"] = "", -- { "<Up>", "move up" },
--     },
--     n = { -- ノーマルモードに関するキーマッピング
--       ["<C-s>"] = "", -- { "<cmd> w <CR>", "save file" },
--    },
--   },
--   -- 追加するキーマッピング
--   general = {
--     i = {
--       ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
--       ["<C-a>"] = { "<Home>", "beginning of line" },
--       ["<C-e>"] = { "<End>", "end of line" },
--       ["<C-b>"] = { "<Left>", "move left" },
--       ["<C-f>"] = { "<Right>", "move right" },
--       ["<C-n>"] = { "<Down>", "move down" },
--       ["<C-p>"] = { "<Up>", "move up" },
--     },
--   },
--   dap = {
--     plugin = true,
--     n = {
--       ["<leader>db"] = {
--         "<cmd> DapToggleBreakpoint <CR>",
--         "Add breakpoint at line"
--       },
--       ["<leader>dus"] = {
--         function ()
--           local widgets = require("dap.ui.widgets")
--           local sidebar = widgets.sidebar(widgets.scopes)
--           sidebar.open()
--         end,
--         "Open debug sidebar",
--       }
--     }
--   },
--   dap_go = {
--     plugin = true,
--     n = {
--       ["<leader>dgt"] = {
--         function ()
--           require("dap-go").debug_test()
--         end,
--         "Debug go test"
--       },
--       ["<leader>dgl"] = {
--         function ()
--           require("dap-go").debug_last()
--         end,
--         "Debug last go test"
--       }
--     }
--   }
-- }

return M
