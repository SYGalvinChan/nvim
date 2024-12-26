return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "leoluz/nvim-dap-go",
        "nvim-neotest/nvim-nio",
        "rcarriga/nvim-dap-ui"
    },
    config = function()
        require("dap-go").setup()
        local dap, dapui = require("dap"), require("dapui")
        local dapgo = require("dap-go")
        dapui.setup()
        dapgo.setup()
        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        vim.keymap.set("n", "<C-d>c", function() require("dap").continue() end)
        vim.keymap.set("n", "<C-d>n", function() require("dap").step_over() end)
        vim.keymap.set("n", "<C-d>i", function() require("dap").step_into() end)
        vim.keymap.set("n", "<C-d>o", function() require("dap").step_out() end)
        vim.keymap.set("n", "<Leader>db", function() require("dap").toggle_breakpoint() end)
        vim.keymap.set("n", "<Leader>dr", function() require("dap").repl.open() end)
        vim.keymap.set("n", "<Leader>dl", function() require("dap").run_last() end)

        vim.keymap.set("n", "<Leader>dd", function() dapui.open() end)
        vim.keymap.set("n", "<Leader>dD", function() dapui.close() end)
    end
}
