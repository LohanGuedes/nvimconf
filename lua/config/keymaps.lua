-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps

-- Map function for better readability
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    vim.keymap.set(mode, lhs, rhs, opts)
    opts.silent = opts.silent ~= false
  end
end

-- Window Stuff --
-- Splitting windows:
map("n", "<leader>wv", "<C-w>v", { desc = "Create vertical split" })
map("n", "<leader>wq", "<C-w>q", { desc = "Delete window" })
map("n", "<leader>ws", "<C-w>s", { desc = "Create horizontal split" })
map("n", "<leader>wd", "<C-w>q", { desc = "Delete window" })

-- Moving between windows using doom emacs style
map("n", "<leader>wh", "<C-w>h", { desc = "Go to left window" })
map("n", "<leader>wj", "<C-w>j", { desc = "Go to lower window" })
map("n", "<leader>wk", "<C-w>k", { desc = "Go to upper window" })
map("n", "<leader>wl", "<C-w>l", { desc = "Go to right window" })

