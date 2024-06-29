return {
    "nvim-telescope/telescope.nvim",
    event = "BufReadPre",
    dependencies = {
        { "nvim-lua/plenary.nvim", build="make" },
    },
    opts = function()
        local actions = require("telescope.builtin")

        return {
            pickers = {
                find_files = {
                    hidden = true,
                },
                defaults = {
                    mappings = { i = { ["<esc>"] = actions.close}},
                },
            }}
    end,
    config = function(_, opts)
        require("telescope").setup(opts)
        local builtin = require("telescope.builtin")

        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
        vim.keymap.set('n', '<leader>gr', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end,
}
