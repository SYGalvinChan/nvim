return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make"
        }
    },
    config = function()
        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-j>"] = "move_selection_next",
                        ["<C-k>"] = "move_selection_previous"
                    }
                }
            },
            pickers = {
                buffers = {
                    initial_mode = "normal",
                    mappings = {
                        n = {
                            ["d"] = require("telescope.actions").delete_buffer
                        }
                    }
                }
            },
        })
        local telescope_builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, { desc = "Telescope find files" })
        vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, { desc = "Telescope live grep" })
        vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, { desc = "Telescope buffers" })
        vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, { desc = "Telescope help tags" })
        vim.keymap.set("n", "<leader>fc", telescope_builtin.colorscheme, { desc = "Telescope colorscheme" })
        vim.keymap.set("n", "<leader>fs", telescope_builtin.grep_string, { desc = "Telescope grep string" })
        vim.keymap.set("n", "<leader>fd", telescope_builtin.lsp_definitions, { desc = "Telescope lsp definitions" })
        vim.keymap.set("n", "<leader>fr", telescope_builtin.lsp_references, { desc = "Telescope lsp references" })
    end
}
