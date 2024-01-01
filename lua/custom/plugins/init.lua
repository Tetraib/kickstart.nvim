-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'catppuccin-mocha'
        end,
    },
    {
        "zbirenbaum/copilot.lua",
        config = function()
            require("copilot").setup({})
        end
    },
    {
        "debugloop/telescope-undo.nvim",
        dependencies = {
            {
                "nvim-telescope/telescope.nvim",
                dependencies = { "nvim-lua/plenary.nvim" },
            },
        },
        keys = {
            {
                "<leader>u",
                "<cmd>Telescope undo<cr>",
                desc = "undo history",
            },
        },
        config = function(_, opts)
            require("telescope").setup(opts)
            require("telescope").load_extension("undo")
        end,
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
    }
}
