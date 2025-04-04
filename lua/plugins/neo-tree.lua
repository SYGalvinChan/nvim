return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "s1n7ax/nvim-window-picker",
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            filesystem = {
                follow_current_file = true,
                filtered_items = {
                    hide_dotfiles = false
                }
            },
            window = {
                mappings = {
                    ["h"] = "close_node",
                    ["l"] = "open",
                    ["|"] = "open_vsplit",
                    ["_"] = "open_split",
                    ["<BS>"] = "none",
                    ["o"] = "add",
                    ["oc"] = "none",
                    ["od"] = "none",
                    ["og"] = "none",
                    ["om"] = "none",
                    ["on"] = "none",
                    ["os"] = "none",
                    ["ot"] = "none",

                }
            }
        })
        vim.cmd([[
        command! -nargs=* Ex Neotree toggle
        ]])
        vim.keymap.set("n", "<C-n>", "<cmd>Neotree focus<CR>", { desc = "jump Neotree" })
    end
}
