return {
  "vimwiki/vimwiki",
  init = function()
    function OpenVimwikiIndexInVerticalSplit()
      -- Check if any buffer in the current tab has the filetype 'vimwiki'
      local wiki_buf = nil
      for _, winid in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
        local buf = vim.api.nvim_win_get_buf(winid)
        local filetype = vim.api.nvim_get_option_value('filetype', { buf = buf })
        if filetype == 'vimwiki' then
          wiki_buf = buf
          break
        end
      end

      -- If the wiki is already open, close its buffer
      if wiki_buf then
        vim.api.nvim_buf_delete(wiki_buf, { force = true }) -- Force close the buffer
      else
        -- Create a new vertical split and run :VimwikiIndex
        vim.cmd.vnew()        -- Create a new vertical split
        vim.cmd('VimwikiIndex') -- Execute :VimwikiIndex in the new split
      end
    end

    function OpenVimwikiInBrowser()
      local wiki_buf = nil
      for _, winid in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
        local buf = vim.api.nvim_win_get_buf(winid)
        local filetype = vim.api.nvim_get_option_value('filetype', { buf = buf })
        if filetype == 'vimwiki' then
          wiki_buf = buf
          break
        end
      end

      if wiki_buf then
        vim.api.nvim_set_current_buf(wiki_buf)
        vim.cmd("Vimwiki2HTMLBrowse")
      end

    end

    vim.g.vimwiki_list = {
      {
        path = '~/Documents/Notes',
        syntax = 'default',
        ext = '.wiki',
      },


      --"<Plug>VimwikiIndex"
      -- keymaps
      vim.keymap.set('n', '<leader>vw', OpenVimwikiIndexInVerticalSplit),
      vim.keymap.set('n', '<leader>vb', OpenVimwikiInBrowser),
      vim.keymap.set('n', '<leader>w<leader>y', "<Nop>", {}),
      vim.keymap.set('n', '<leader>w<leader>m', "<Nop>", {}),
      vim.keymap.set('n', '<leader>w<leader>i', "<Nop>", {}),
      vim.keymap.set('n', '<leader>w<leader>t', "<Nop>", {}),
      vim.keymap.set('n', '<leader>wt', "<Nop>", {}),
      vim.keymap.set('n', '<leader>wn', "<Nop>", {}),
      vim.keymap.set('n', '<leader>wi', "<Nop>", {}),
      vim.keymap.set('n', '<leader>ws', "<Nop>", {}),
      vim.keymap.set('n', '<leader>ww', "<Nop>", {}),
    }
  end,
}
