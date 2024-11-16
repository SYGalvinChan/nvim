local function make_opts(desc)
    return { 
        noremap = true,
        silent = true,
        desc = desc
    }
end

-- navigate between windows
vim.keymap.set("n", "<C-h>", "<C-w>h", make_opts("switch window left"))
vim.keymap.set("n", "<C-l>", "<C-w>l", make_opts("switch window right"))
vim.keymap.set("n", "<C-j>", "<C-w>j", make_opts("switch window down"))
vim.keymap.set("n", "<C-k>", "<C-w>k", make_opts("switch window up"))
-- Resize with arrows
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<CR>", make_opts("resize window vertical"))
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<CR>", make_opts("resize window vertical"))
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", make_opts("resize window horizontal"))
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", make_opts("resize window horizontal"))
-- move while in insert mode
vim.keymap.set("i", "<C-a>", "<ESC>^i", make_opts("move to start of line"))
vim.keymap.set("i", "<C-e>", "<End>", make_opts("move to end of line"))
vim.keymap.set("i", "<C-h>", "<Left>", make_opts("move left"))
vim.keymap.set("i", "<C-j>", "<Down>", make_opts("move down"))
vim.keymap.set("i", "<C-k>", "<Up>", make_opts("move up"))
vim.keymap.set("i", "<C-l>", "<Right>", make_opts("move right"))
-- clear highlighting after search
vim.keymap.set("n", "<leader>ch", "<cmd>noh<CR>", make_opts("clear highlighting"))
