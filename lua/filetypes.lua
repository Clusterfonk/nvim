vim.filetype.add {
    extension = {
        h = "c",
        service = "systemd",
    },
    pattern = {
        [".*%.lua%.test"] = "lua",
    }
}
