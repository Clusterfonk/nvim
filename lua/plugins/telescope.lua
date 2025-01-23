return {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.8',
    dependencies = {
        { "nvim-lua/plenary.nvim",                    build = "make" },
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },

    config = function()
        local actions = require("telescope.actions")
        require("telescope").setup {
            defaults = {
                pickers = {
                    find_files = {
                        hidden = true,
                    },
                },
                mappings = {
                    i = {
                        ["<esc>"] = actions.close
                    },
                },
            }
        }

        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
        vim.keymap.set('n', '<leader>gr', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>ec', function() builtin.find_files{cwd = vim.fn.stdpath("config")}end)
    end,
}
