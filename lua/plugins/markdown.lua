return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" },
    opts = {},
    config = function()
        require("render-markdown").setup({
            enabled = false,
        })
        vim.keymap.set("n", "<leader>md", require("render-markdown").toggle, { desc = "toggle rendering markdown" })
    end
}
