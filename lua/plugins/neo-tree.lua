return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "s1n7ax/nvim-window-picker",
    },
    config = function ()
        require("neo-tree").setup({
            close_if_last_window = true,
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false
                }
            },
            window = {
                mappings = {
                    ["h"] = "close_node",
                    ["l"] = "open",
                }
            }
        })
        vim.keymap.set("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "toggle Neotree" })
    end
}
