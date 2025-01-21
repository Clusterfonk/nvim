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
            --vim.keymap.set('n', '<leader>ww', "<Plug>VimwikiIndex", {})
            vim.keymap.set('n', '<leader>ww', "<Plug>VimwikiIndex", {})

              --let g:vimwiki_key_mappings =
              --  \ {
              --  \ 'headers': 0,
              --  \ 'text_objs': 0,
              --  \ }
        }
    end,
}
