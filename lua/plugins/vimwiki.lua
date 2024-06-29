return {
    "vimwiki/vimwiki",
    init = function()
        vim.g.vimwiki_list = {
            {
            path = '~/Documents/Notes',
            syntax = 'default',
            ext = '.wiki',
            },
        }
    end,
}
