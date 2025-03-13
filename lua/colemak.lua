-------------------
-- general
-------------------
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', function() vim.cmd('write!') end)

-- source
vim.keymap.set('n', '<leader><space>x', "<cmd>source %<CR>")
vim.keymap.set('n', '<leader>x', ":.lua<CR>")
vim.keymap.set('v', '<leader>x', ":lua<CR>")

-- file explorer
vim.keymap.set('n', "<leader>fp", vim.cmd.Ex)

-- repeat
vim.keymap.set({ 'n', 'v' }, '.', ';')
vim.keymap.set({ 'n', 'v' }, '\\', '.')

-------------------
-- navigation
-------------------
vim.keymap.set('', 'm', 'h', {})
vim.keymap.set('', 'M', 'H', {})

vim.keymap.set({ 'n', 'o', 'x' }, 'n', 'j', {})
vim.keymap.set({ 'n', 'o', 'x' }, 'N', '', {})
vim.keymap.set('n', 'N', "v:m '>+1<CR>gv=gv<ESC>")
vim.keymap.set('v', 'N', ":m '>+1<CR>gv=gv")

vim.keymap.set({ 'n', 'o', 'x' }, 'e', 'k', {})
vim.keymap.set({ 'n', 'o', 'x' }, 'E', '', {})
vim.keymap.set('v', 'E', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'E', "v:m '<-2<CR>gv=gv<ESC>")

vim.keymap.set({ 'n', 'v', 'o', 'x' }, 'i', 'l', {})
vim.keymap.set({ 'n', 'v', 'o', 'x' }, 'I', 'L', {})

-- half page jumping
vim.keymap.set({ 'n', 'v' }, '<C-n>', "<C-d>zz")
vim.keymap.set({ 'n', 'v' }, '<C-e>', "<C-u>zz")

-------------------
-- word navigation
-------------------
-- b B -> beginning of previous word/WORD
-- w W -> beginning of next word/WORD
-- <C-I> I end of next word/WORD
-- <C-m> M end of previous word/WORD
vim.keymap.set({ 'n', 'o', 'x' }, '<C-m>', 'ge')
vim.keymap.set({ 'n', 'o', 'x' }, 'M', 'gE')
vim.keymap.set({ 'n', 'o', 'x' }, '<C-i>', 'e')
vim.keymap.set({ 'n', 'o', 'x' }, 'I', 'E')

vim.keymap.set({ 'n', 'o', 'x' }, 'ge', '<Nop>')
vim.keymap.set({ 'n', 'o', 'x' }, 'gE', '<Nop>')

-------------------
-- find / to
-------------------
vim.keymap.set({ 'n', 'v', 'o', 'x' }, 'l', 't')
vim.keymap.set({ 'n', 'v', 'o', 'x' }, 'L', 'T')

-------------------
-- window navigation
-------------------
vim.keymap.set({ 'n' }, '<C-w>m', '<C-w>h')
vim.keymap.set({ 'n' }, '<C-w>n', '<C-w>j')
vim.keymap.set({ 'n' }, '<C-w>e', '<C-w>k')
vim.keymap.set({ 'n' }, '<C-w>i', '<C-w>l')

vim.keymap.set({ 'n' }, '<C-w>M', '<C-w>H')
vim.keymap.set({ 'n' }, '<C-w>N', '<C-w>J')
vim.keymap.set({ 'n' }, '<C-w>E', '<C-w>K')
vim.keymap.set({ 'n' }, '<C-w>I', '<C-w>L')

vim.keymap.set({ 'n' }, '<C-w><C-m>', '<Nop>')
vim.keymap.set({ 'n' }, '<C-w><C-n>', '<Nop>')
vim.keymap.set({ 'n' }, '<C-w><C-e>', '<Nop>')
vim.keymap.set({ 'n' }, '<C-w><C-i>', '<Nop>')

-------------------
-- insert
-------------------
vim.keymap.set({ 'n', 'o', 'x' }, 'a', 'i', {})
vim.keymap.set({ 'n', 'o', 'x' }, 'A', 'I', {})
vim.keymap.set({ 'n', 'o', 'x' }, 't', 'a', {})
vim.keymap.set({ 'n', 'o', 'x' }, 'T', 'A', {})

-------------------
-- highlight
-------------------
vim.keymap.set({ 'n', 'o', 'x' }, 'h', 'n')
vim.keymap.set({ 'n', 'o', 'x' }, 'H', 'N')
vim.keymap.set({ 'n', 'o', 'x' }, '<leader>/', ":nohlsearch<CR>")

-------------------
-- line manipulation
-------------------
-- Stay inplace and append bottom line to current
vim.keymap.set('n', 'J', "mzJ`z")

-- replace current word
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-------------------
-- spelling
-------------------
vim.api.nvim_set_keymap('n', 'zo', ':set invspell<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'zn', ']s', {})
vim.api.nvim_set_keymap('n', 'ze', '[s', {})

-------------------
-- copy paste
-------------------
-- paste over selection and keep clipboard
vim.keymap.set('x', '<leader>p', "\"_dP")

-- delete into void register
vim.keymap.set('n', '<leader>d', "\"_d")
vim.keymap.set('v', '<leader>d', "\"_d")

--copy to system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

-------------------
-- buffer
-------------------
vim.keymap.set('n', '<leader>q', ":q<cr>")

-------------------
-- (a)outside/inside(t)
-------------------
vim.keymap.set('n', 'ct', 'ci')
vim.keymap.set('n', 'dt', 'di')
vim.keymap.set('n', 'vt', 'vi')
vim.keymap.set('n', 'yt', 'yi')

vim.keymap.set('n', 'ca', 'ca')
vim.keymap.set('n', 'da', 'da')
vim.keymap.set('n', 'va', 'va')
vim.keymap.set('n', 'ya', 'ya')

vim.keymap.set('n', '=a', '=a')

-------------------
-- quickfix nav.
-------------------
vim.keymap.set('n', '<c-u>', "<cmd>lprev<cr>zz")
vim.keymap.set('n', '<c-d>', "<cmd>lnext<cr>zz")

vim.keymap.set('n', '<D-e>', "<cmd>cprev<cr>zz")
vim.keymap.set('n', '<D-n>', "<cmd>cnext<cr>zz")

vim.keymap.set("n", "<D-o>", function()
  local qf_winid = vim.fn.getqflist({ winid = 0 }).winid
  if qf_winid == 0 then
    vim.cmd('copen')
  else
    vim.cmd('cclose')
  end
end)

-------------------
-- tag nav
-------------------
-- <C-] forward
vim.api.nvim_set_keymap('n', '<C-[>', '<C-t>', { noremap = true, silent = true })

-------------------
-- jumplist
-------------------
vim.keymap.set('n', "<c-f>", "<C-i>")
vim.keymap.set('n', "<c-b>", "<C-o>")

-------------------
-- misc
-------------------
-- switch cwd to the directory of the open buffer
vim.keymap.set('n', '<leader>cd', function()
  vim.cmd("cd %:p:h")
  vim.cmd("pwd")
end)

-- TodoLocList
vim.keymap.set({ 'n' }, '<leader>tl', function() vim.cmd("TodoLocList") end)

-- switch projects
--vim.keymap.set('n', '<leader>tm', "<cmd>silent !tmux neww tmux-sessionizer.sh<CR>")

-------------------
-- Terminal
-------------------
vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
  end
})

-- Function to toggle terminal
local terminal_channel = nil
-- Open a new term-- Function to toggle terminal
local function toggle_terminal()
  local prev_win = vim.api.nvim_get_current_win()
  -- Check if any buffer is a terminal
  local has_terminal = false
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.bo[buf].buftype == 'terminal' then
      has_terminal = true
      terminal_channel = vim.bo[buf].channel
      break
    end
  end

  if has_terminal then
    -- Close all terminal buffers
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
      if vim.bo[buf].buftype == 'terminal' then
        vim.api.nvim_buf_delete(buf, { force = true })
      end
    end
    terminal_channel = nil
  else
    vim.cmd('belowright split | terminal')
    vim.api.nvim_win_set_height(0, 15)
    local buf = vim.api.nvim_get_current_buf()
    terminal_channel = vim.bo[buf].channel
    vim.api.nvim_win_set_cursor(0, { vim.api.nvim_buf_line_count(0), 0 })

    if prev_win then
      vim.api.nvim_set_current_win(prev_win) -- Move focus to that window
    end
  end
end

local function send_to_terminal(command)
  if terminal_channel then
    vim.api.nvim_chan_send(terminal_channel, command .. '\n')
  else
    print('No terminal is open.')
  end
end

vim.keymap.set("n", "<D-t>", function() toggle_terminal() end)

-- Function to check if awmtt is running
local function is_awmtt_running()
  local handle = io.popen("pgrep -u $USER -x Xephyr")
  if handle then
    local result = handle:read("*a")
    handle:close()
    return result ~= ""
  end
end

-- Function to start or restart awmtt
local function start_or_restart_awmtt()
  if is_awmtt_running() then
    send_to_terminal("awmtt restart")
  else
    send_to_terminal("awmtt start")
  end
end

vim.keymap.set("n", "<D-r>", function() start_or_restart_awmtt() end)
-------------------
-- UNUSED
-------------------
vim.keymap.set('', '<C-h>', '<Nop>')
vim.keymap.set('', 'k', '<Nop>')
vim.keymap.set('', 'j', '<Nop>')
vim.keymap.set('', 'J', '<Nop>')
vim.keymap.set('', '<C-o>', '<Nop>')
vim.keymap.set('', 'q', '<Nop>')
vim.keymap.set('n', '<leader>ww', '<Nop>')
