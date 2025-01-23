vim.filetype.add {
    extension = {
        h = "c",
    },
    pattern = {
        [".*%.lua%.test"] = "lua",
    }
}
