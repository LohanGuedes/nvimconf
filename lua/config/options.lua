-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
local opt = vim.opt

opt.spell = false

-- Indenting
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

-- UI looks & feel
opt.number = false
opt.relativenumber = false
-- opt.cc = "120"

opt.wrap = true
vim.o.showbreak = "↳ "

-- File extensions (for further configs)
vim.filetype.add({
    extension = {
        templ = "templ",
    },
})

-- Disable LSP completition on git-commit editing integration
vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "gitcommit",
    },
    callback = function()
        require("cmp").setup({
            enabled = false,
        })
    end,
})

-- Disable spelling/enable wrapping on specific filetypes
vim.api.nvim_create_autocmd("FileType", {
    -- group = augroup("wrap_spell"),
    pattern = {
        "gitcommit",
        "pandoc",
    },
    callback = function()
        vim.opt_local.wrap = true
    end,
})
