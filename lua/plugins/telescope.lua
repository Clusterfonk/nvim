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
        mappings = {
          i = {
            ["<esc>"] = actions.close,
            ["<C-s>"] = actions.select_horizontal,
            ["<C-v>"] = actions.select_vertical,
          },
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        }
      },
      pickers = {
        find_files = {
          hiddn = true,
        },
        git_files = {
          theme = "ivy"
        },
        help_tags = {
          theme = "ivy"
        },
        oldfiles = {
          theme = "dropdown"
        }
      },
    }
    require("telescope").load_extension("fzf")

    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
    vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
    vim.keymap.set('n', '<leader>fk', ":Telescope keymaps<CR>", { silent = true })

    vim.keymap.set('n', '<leader>gr', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
    --vim.keymap.set('n', '<leader>gr', function()
    --  builtin.grep_string({ search = vim.fn.input("Grep > ") })
    --end)
    vim.keymap.set('n', '<leader>gb', function()
      builtin.grep_string({
        search = vim.fn.input("Grep (current buffer) > "),
        only_sort_text = true,
        search_dirs = { vim.fn.expand('%:p') } -- Limit search to the current buffer
      })
    end)
  end,
}
