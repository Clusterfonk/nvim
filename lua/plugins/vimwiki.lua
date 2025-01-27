return {
    "vimwiki/vimwiki",
    init = function()
        vim.g.vimwiki_list = {
            {
            path = '~/Documents/Notes',
            syntax = 'default',
            ext = '.wiki',
            },

            -- keymaps
            vim.keymap.set('n', '<leader>vw', "<Plug>VimwikiIndex", {}),
            vim.keymap.set('n', '<leader>w<leader>w', "<Nop>", {}),
            vim.keymap.set('n', '<leader>w<leader>y', "<Nop>", {}),
            vim.keymap.set('n', '<leader>w<leader>m', "<Nop>", {}),
            vim.keymap.set('n', '<leader>w<leader>i', "<Nop>", {}),
            vim.keymap.set('n', '<leader>w<leader>t', "<Nop>", {}),
            vim.keymap.set('n', '<leader>wi', "<Nop>", {}),
            vim.keymap.set('n', '<leader>wt', "<Nop>", {}),
            vim.keymap.set('n', '<leader>ws', "<Nop>", {}),
            vim.keymap.set('n', '<leader>ww', "<Nop>", {}),
        }
    end,
}
