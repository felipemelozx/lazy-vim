-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- map("n")
-- ui
map("n", "<leader>uT", "<cmd>TransparentEnable<cr>", { desc = "Enable background transparency" })
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "<leader>h", "<cmd>noh<cr>", { desc = "Remove highlighting of search matches" })
map("n", "<C-p>", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fw", "<cmd>Telescope live_grep<cr>")
map("n", "tn", "<cmd>tabnew<cr>")
map("n", "<leader>-", "<cmd>Oil<cr>")
map("n", "<leader>E", "<cmd>Neotree toggle buffers<cr>", { desc = "Toggle Buffers Explorer" })
map("n", "<leader>C", function()
  require("mini.bufremove").delete(0, false)
end, { desc = "Delete Buffer" })

map("v", "p", '"_dP')
map("v", "<", "<gv")
map("v", ">", ">gv")

map("x", "J", ":m '>+1<cr>gv=gv")
map("x", "K", ":m '<-2<cr>gv=gv")
-- map("n", "<leader>ss", "<cmd>%s/<<C-r><C-w>>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "Search and Replace RegExp" })
