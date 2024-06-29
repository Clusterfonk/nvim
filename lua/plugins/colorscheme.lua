return {
    "ellisonleao/gruvbox.nvim",
    enabled = true,
    event = "VeryLazy",
    priority = 1000,
    opts = {
        contrast = "soft",
        inverse = false,
        overrides = {
            GitSignsAdd = { link = "GruvboxGreenSign" },
            GitSignsChange = { link = "GruvboxOrangeSign" },
            GitSignsDelete = { link = "GruvboxRedSign" },
            SignColumn = { link = "LineNr" },
        },
        --palette_overrides = {
        --    dark0_soft = "#282828",
        --}
    }
}
