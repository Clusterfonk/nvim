return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "sindrets/diffview.nvim",        -- optional - Diff integration
        "nvim-telescope/telescope.nvim", -- optional
    },
    config = function()
        local neogit = require("neogit")
        neogit.setup {
            highlight = {
                italic = true,
                bold = true,
                underline = true
            },
        }

        vim.keymap.set('n', '<leader>gs', neogit.open, {})
    end
}
