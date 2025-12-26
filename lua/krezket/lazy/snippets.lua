return {
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        build = "make install_jsregexp",
        dependencies = { 
            "rafamadriz/friendly-snippets",
            "mlaursen/vim-react-snippets", opts = {}
        },
        config = function()
            local ls = require("luasnip")

            require("luasnip.loaders.from_vscode").lazy_load()

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
    {
        "eldritch-theme/eldritch.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("eldritch").setup({
                vim.cmd('colorscheme eldritch'),
                transparent = true
            })
        end
    }
    -- {
    --     "Mofiqul/vscode.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {},
    --     config = function()
    --         require("vscode").setup({
    --             vim.cmd('colorscheme vscode'),
    --             transparent = true
    --         })
    --     end
    -- },
    -- {
    --     "HoNamDuong/hybrid.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {},
    --     config = function()
    --         require("hybrid").setup({
    --             vim.cmd('colorscheme hybrid'),
    --             transparent = true
    --         })
    --     end,
    -- },
    -- {
    --     "fneu/breezy.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {},
    --     config = function()
    --         require("hybrid").setup({
    --             vim.cmd('colorscheme breezy'),
    --             transparent = true
    --         })
    --     end
    -- },
    -- {
    --     'rose-pine/neovim',
    --     name = 'rose-pine',
    --     config = function()
    --         vim.cmd('colorscheme rose-pine')
    --     end
    -- },
}

