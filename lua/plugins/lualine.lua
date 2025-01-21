return {
"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	opts = function()
		local location = { "location", padding = 0 }
		local filename = { "filename", path = 4}
		return {
			options = {
				icons_enabled = false,
				theme = "auto",
				section_separators = "",
				component_separators = "",
				disabled_filetypes = {},
				always_divide_middle = true,
				globalstatus = true,
			},
         sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {
                    {
                        'filename',
                        file_status = true,
                        newfile_status = true,
                        path = 4,
                        shorting_target = 40,

                        symbols = {
                                modified = '[+]',
                                readonly = '[-]',
                                unnamed = '[No Name]',
                                newfile = '[New]',
                        }
                    }
                },
            lualine_x = {'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
          },
          inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
          },
          tabline = {},
          winbar = {},
          inactive_winbar = {},
			extensions = { "lazy" },
		}
	end,
}
