return {
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        build = "make install_jsregexp",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function()
            local ls = require("luasnip")
            ls.filetype_extend("javascript", { "jsdoc" })

            -- TODO: What is expand?
            vim.keymap.set({"i"}, "<C-s>e", function() ls.expand() end, {silent = true})

            vim.keymap.set({"i", "s"}, "<C-s>;", function() ls.jump(1) end, {silent = true})
            vim.keymap.set({"i", "s"}, "<C-s>,", function() ls.jump(-1) end, {silent = true})

            vim.keymap.set({"i", "s"}, "<C-E>", function()
                if ls.choice_active() then
                    ls.change_choice(1)
                end
            end, {silent = true})
        end,
    },
    -- {
    --     "ellisonleao/gruvbox.nvim",
    --     name = "gruvbox",
    --     config = function()
    --         vim.cmd('colorscheme gruvbox')
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --     end,
    -- },
    --
    {
        "HoNamDuong/hybrid.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd('colorscheme hybrid')
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            require("hybrid").setup({
                transparent = true,
            })
        end,
    },
    --
    -- {
    --     "miikanissi/modus-themes.nvim", priority = 1000,
    --     config = function()
    --         vim.cmd('colorscheme modus')
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --     end,
    -- },
    -- {
    --     "erikbackman/brightburn.vim",
    --     config = function()
    --         vim.cmd('colorscheme brightburn')
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --     end
    -- },
    --
    --
    -- {
    --     'rose-pine/neovim',
    --     name = 'rose-pine',
    --     config = function()
    --         vim.cmd('colorscheme rose-pine')
    --     end
    -- },
}
