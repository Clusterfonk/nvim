return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      'saghen/blink.cmp',
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      require("lspconfig").lua_ls.setup { capabilities = capabilities }

      vim.keymap.set('n', 'grn', vim.lsp.buf.rename)
      vim.keymap.set('n', 'gra', vim.lsp.buf.code_action)
      vim.keymap.set('n', 'grr', vim.lsp.buf.references)
      vim.keymap.set('n', 'gri', vim.lsp.buf.implementation)
      vim.keymap.set('n', 'gO', vim.diagnostic.open_float)
      vim.keymap.set('n', '<C-S>', vim.lsp.buf.signature_help)
      vim.keymap.set('n', 'gl', vim.lsp.buf.format)
      vim.keymap.set('n', 'gd', vim.diagnostic.setqflist)
    end,
  }
}
