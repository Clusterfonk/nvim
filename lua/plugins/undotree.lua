return {
    "mbbill/undotree",

    config = function()
        vim.keymap.set('n', "<leader>u", vim.cmd.UndotreeToggle)
        vim.g.undotree_WindowLayout = 2
        vim.g.undotree_SplitWidth = 50
        vim.g.undotree_diffpanelHeight = 20
        vim.g.undotree_SetFocusWhenToggle = 1
    end,
}
