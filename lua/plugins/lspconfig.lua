return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = {
                enabled = false, -- vaitomamocu
            },
            servers = {
                tsserver = {},
                htmx = {
                    filetypes = { "html", "templ" },
                },
                html = {
                    filetypes = { "html", "templ" },
                },
                templ = {
                    format = {
                        enable = false,
                    },
                },
            },
        },
    },
}
