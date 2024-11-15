local M = {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "b0o/SchemaStore.nvim",
    },
}

M.on_attach = function(_, bufnr)
    local map = vim.keymap.set
    local function opts(desc)
        return { buffer = bufnr, desc = "LSP " .. desc }
    end

    map("n", "gD", vim.lsp.buf.declaration, opts "Go to declaration")
    map("n", "gd", vim.lsp.buf.definition, opts "Go to definition")
    map("n", "gi", vim.lsp.buf.implementation, opts "Go to implementation")
    map("n", "gr", vim.lsp.buf.references, opts "Go to references")
    map("n", "<leader>rn", vim.lsp.buf.rename, opts "Rename")
    map("n", "<leader>sh", vim.lsp.buf.signature_help, opts "Show signature help")
    map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts "Add workspace folder")
    map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts "Remove workspace folder")
end

M.config = function()
    require("mason").setup({})
    require("mason-lspconfig").setup({
        ensure_installed = {
            "lua_ls",
            "cssls",
            "html",
            "ts_ls",
            "pyright",
            "clangd",
            "bashls",
            "jsonls",
            "yamlls",
            "gopls",
        },
    })
    local servers_settings = {
        lua_ls = {
            Lua = {
                diagnostics = {
                    globals = { "vim" },
                },
                hint = { enable = true },
            },
        },
        jsonls = {
            json = {
                schemas = require("schemastore").json.schemas(),
                validate = { enable = true },
            },
        },
        yamlls = {
            yaml = {
                schemas = require("schemastore").yaml.schemas(),
                schemaStore = { enable = false, url = "" },
            },
        },
    }
    require("mason-lspconfig").setup_handlers({
        function (server_name)
            require("lspconfig")[server_name].setup({
                on_attach = M.on_attach,
                settings = servers_settings[server_name],
            })
        end,
    })
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = "rounded",
    })
    require("lspconfig.ui.windows").default_options.border = "rounded"
end

return M
