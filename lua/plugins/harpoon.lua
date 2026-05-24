return {
    "ThePrimeagen/harpoon",
    config = function()
        local harpoon = require("harpoon")
        local ui = require("harpoon.ui")
        local mark = require("harpoon.mark")

        harpoon.setup()

        vim.keymap.set("n", "<leader>a", mark.add_file)
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

        vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<C-;>", function() ui.nav_file(4) end)

        vim.keymap.set("n", "<leader><C-h>", function() mark.set_current_at(1) end)
        vim.keymap.set("n", "<leader><C-t>", function() mark.set_current_at(2) end)
        vim.keymap.set("n", "<leader><C-n>", function() mark.set_current_at(3) end)
        vim.keymap.set("n", "<leader><C-s>", function() mark.set_current_at(4) end)
    end
}
