return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/neotest-go",
    },
    config = function()
    require("neotest").setup({
      -- your neotest config here
      adapters = {
        require("neotest-go"),
      },
    })
    end
}
