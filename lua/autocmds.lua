-- quit even when empty buffers has things to save
vim.api.nvim_create_autocmd("QuitPre", {
    callback = function()
        local bufs = vim.api.nvim_list_bufs()
        for _, buf in ipairs(bufs) do
            -- Check if the buffer is loaded
            if vim.api.nvim_buf_is_loaded(buf) then
                local buf_name = vim.api.nvim_buf_get_name(buf)
                local is_empty = vim.api.nvim_buf_line_count(buf) == 1 and vim.api.nvim_buf_get_lines(buf, 0, 1, true)[1] == ""
                local is_unnamed = buf_name == ""

                -- Force-delete the buffer if it's empty or unnamed
                if is_empty or is_unnamed then
                    vim.api.nvim_buf_delete(buf, { force = true })
                end
            end
        end
    end,
})

-- delete trailing spaces when saving
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
