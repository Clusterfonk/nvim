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

-------------------
-- navigation
-------------------
vim.keymap.set({ 'n', 'x' }, 'm', 'h', {})
vim.keymap.set({ 'n', 'x' }, 'M', 'H', {})

vim.keymap.set({ 'n', 'o', 'x' }, 'n', 'j', {})
vim.keymap.set({ 'n', 'o', 'x' }, 'gn', 'gj', {}) -- display line

vim.keymap.set({ 'n', 'o', 'x' }, 'e', 'k', {})
vim.keymap.set({ 'n', 'o', 'x' }, 'ge', 'gk', {}) -- display line

vim.keymap.set({ 'n', 'v', 'x' }, 'i', 'l', {})
vim.keymap.set({ 'n', 'v', 'x' }, 'I', 'L', {})

-- half page jumping
vim.keymap.set({ 'n', 'v' }, '<C-e>', "<C-u>zz")
vim.keymap.set({ 'n', 'v' }, '<C-n>', "<C-d>zz")

-------------------
-- word navigation
-------------------
-- b B -> beginning of previous word/WORD
-- w W -> beginning of next word/WORD
-- <C-I> I end of next word/WORD
-- <C-m> M end of previous word/WORD
vim.keymap.set({ 'n', 'o', 'v', 'x' }, '<C-m>', 'ge')
vim.keymap.set({ 'n', 'o', 'v', 'x' }, 'M', 'gE')
vim.keymap.set({ 'n', 'o', 'v', 'x' }, '<C-i>', 'e')
vim.keymap.set({ 'n', 'o', 'v', 'x' }, 'I', 'E')

vim.keymap.set({ 'n', 'o', 'v', 'x' }, 'ge', '<Nop>')
vim.keymap.set({ 'n', 'o', 'v', 'x' }, 'gE', '<Nop>')

-------------------
-- find / to
-------------------
vim.keymap.set({ 'n', 'v', 'x' }, 'l', 't')
vim.keymap.set({ 'n', 'v', 'x' }, 'L', 'T')

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
vim.keymap.set({ 'n' }, 'a', 'i', {})
vim.keymap.set({ 'n', 'v' }, 'A', 'I', {})

vim.keymap.set({ 'n' }, 't', 'a', {})
vim.keymap.set({ 'n', 'v' }, 'T', 'A', {})

-------------------
-- highlight
-------------------
vim.keymap.set({ 'n', 'x' }, 'h', 'n')
vim.keymap.set({ 'n', 'x' }, 'H', 'N')

vim.keymap.set('n', 'gh', 'gn')
vim.keymap.set('n', 'gH', 'gN')

vim.keymap.set('n', '<C-l>', function()
  vim.cmd.nohlsearch()
  vim.cmd('normal! <C-l>')
end, { desc = 'Clear search highlight and redraw screen' })

-------------------
-- line manipulation
-------------------
-- Stay inplace and append bottom line to current
vim.keymap.set('n', 'J', "mzJ`z") -- TODO: doesnt work ?

-- move line
vim.keymap.set('n', 'E', "v:m '<-2<CR>gv=gv<ESC>")
vim.keymap.set('v', 'E', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'N', "v:m '>+1<CR>gv=gv<ESC>")
vim.keymap.set('v', 'N', ":m '>+1<CR>gv=gv")

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
vim.keymap.set({ 'n', 'x' }, '<leader>d', "\"_d")

--copy to system clipboard
vim.keymap.set({ 'n', 'x' }, '<leader>y', "\"+y")
vim.keymap.set({ 'n', 'x' }, '<leader>Y', "\"+Y")

-------------------
-- buffer
-------------------
vim.keymap.set('n', '<leader>q', ":q<cr>")

-------------------
-- (a)outside/inside(t)
-------------------
local inner_mappings = {
  ['w'] = 'w',   -- word
  ['W'] = 'W',   -- WORD
  ['s'] = 's',   -- sentence
  ['p'] = 'p',   -- paragraph
  ['"'] = '"',   -- double quotes
  ["'"] = "'",   -- single quotes
  ['`'] = '`',   -- backtick
  ['('] = '(',   -- parentheses
  [')'] = ')',
  ['['] = '[',   -- square brackets
  [']'] = ']',
  ['{'] = '{',   -- curly braces
  ['}'] = '}',
  ['<'] = '<',   -- angle brackets
  ['>'] = '>',
  ['t'] = 't',   -- tag
  ['T'] = 'T',   -- Tag
  ['b'] = 'b',   -- block (parentheses)
  ['B'] = 'B',   -- block (curly braces)
  [','] = ',',   -- comma
  ['.'] = '.',   -- period
  [':'] = ':',   -- colon
  [';'] = ';',   -- semicolon
  ['?'] = '?',   -- question mark
  ['!'] = '!',   -- exclamation mark
  ['/'] = '/',   -- slash
  ['\\'] = '\\', -- backslash
  ['n'] = 'n',   -- next (for plugins like vim-surround)
  ['l'] = 'l',   -- line (for plugins)
  ['h'] = 'h',   -- heading (for plugins)
  -- Additional mappings
  ['i'] = 'i',   -- inner (generic, often used in combinations like `iw`, `i"`, etc.)
  ['a'] = 'a',   -- argument (for plugins like targets.vim)
  ['f'] = 'f',   -- function (for plugins like targets.vim)
  ['c'] = 'c',   -- comment (for plugins like commentary.vim)
  ['m'] = 'm',   -- method (for plugins like targets.vim)
  ['o'] = 'o',   -- object (for plugins like targets.vim)
}

for key, value in pairs(inner_mappings) do
  vim.keymap.set('o', 't' .. key, 'i' .. value, { noremap = true, silent = true })
end

vim.keymap.set('n', 'vt', 'vi')

-------------------
-- quickfix / location nav.
-----------------
vim.keymap.set('n', '[l', function()
  local success, _ = pcall(function()
    vim.cmd(vim.v.count1 .. 'lprev')
  end)
  if success then vim.cmd('normal! zz') end
end, { noremap = true, silent = true })

vim.keymap.set('n', ']l', function()
  local success, _ = pcall(function()
    vim.cmd(vim.v.count1 .. 'lnext')
  end)
  if success then vim.cmd('normal! zz') end
end, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>lo', function()
  local loclist = vim.fn.getloclist(0, { winid = 0 })
  if loclist.winid == 0 then
    pcall(function() vim.cmd('lopen') end)
  else
    pcall(function() vim.cmd('lclose') end)
  end
end, { noremap = true, silent = true })

-- quickfix
vim.keymap.set('n', '[q', function()
  local success, _ = pcall(function()
    vim.cmd(vim.v.count1 .. 'cprev')
  end)
  if success then vim.cmd('normal! zz') end
end, { noremap = true, silent = true })

vim.keymap.set('n', ']q', function()
  local success, _ = pcall(function()
    vim.cmd(vim.v.count1 .. 'cnext')
  end)
  if success then vim.cmd('normal! zz') end
end, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>qo", function()
  local qf_winid = vim.fn.getqflist({ winid = 0 }).winid
  if qf_winid == 0 then
    if #vim.fn.getqflist() > 0 then
      pcall(function() vim.cmd('copen') end)
    end
  else
    pcall(function() vim.cmd('cclose') end)
  end
end, { noremap = true, silent = true })

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

-------------------
-- UNUSED
-------------------
vim.keymap.set('', '<C-h>', '<Nop>')
vim.keymap.set('', 'k', '<Nop>')
vim.keymap.set('', 'j', '<Nop>')
vim.keymap.set('', 'J', '<Nop>')
vim.keymap.set('', '<C-o>', '<Nop>')
vim.keymap.set('n', '<leader>ww', '<Nop>')
vim.keymap.set('n', '<C-u>', '<Nop>')
vim.keymap.set('n', '<C-d>', '<Nop>')
