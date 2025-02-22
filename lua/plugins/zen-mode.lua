return {
    "folke/zen-mode.nvim",
    version = false,
    opts = {
        window = {
            backdrop = 1
        },
        plugins = {
            alacritty = {
                enabled = true,
                font = "12"
            }
        }
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    keys = {
        { "<leader>z", "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
    }
}
