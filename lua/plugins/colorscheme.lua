return {
    {
        "shaunsingh/nord.nvim",

        config = function()
            vim.g.nord_italic = false
        end,
        enabled = false,
        priority = 1000
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 100,
        config = function ()
            vim.cmd[[colorscheme tokyonight-storm]]
        end
    }
}
