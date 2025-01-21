-------------------
-- general
-------------------
vim.g.mapleader = ' '

-- escape
vim.keymap.set({ 'i', 'v' }, ',.', '<Esc>', {})

-- file explorer
vim.keymap.set('n', "<leader>pv", vim.cmd.Ex)

-- repeat singular command
vim.keymap.set('n', '.', "<Nop>")
vim.keymap.set('n', '\\', '.')

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
vim.keymap.set('n', 'E', "v:m '<-2<CR>gv=gv<ESC>")
vim.keymap.set('v', 'E', ":m '<-2<CR>gv=gv")

vim.keymap.set('', 'i', 'l', {})
vim.keymap.set('', 'I', 'L', {})

-- half page jumping
vim.keymap.set('n', '<C-n>', "<C-d>zz")
vim.keymap.set('n', '<C-e>', "<C-u>zz")


-------------------
-- word navigation
-------------------
-- b B -> beginning of previous word/WORD
-- w W -> beginning of next word/WORD
-- <C-I> I end of word/WORD
-- <C-m> M end of previous word/WORD
vim.keymap.set({ 'n', 'o', 'x' }, '<C-m>', 'ge')
vim.keymap.set({ 'n', 'o', 'x' }, 'M', 'gE')
vim.keymap.set({ 'n', 'o', 'x' }, '<C-i>', 'e')
vim.keymap.set({ 'n', 'o', 'x' }, 'I', 'E')

vim.keymap.set({ 'n', 'o', 'x' }, 'ge', '<Nop>')
vim.keymap.set({ 'n', 'o', 'x' }, 'gE', '<Nop>')

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
vim.keymap.set({ 'n', 'o', 'x' }, 'a', 'i', {})
-------------------
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
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-------------------
-- copy paste
-------------------
-- paste over selection and keep clipboard
vim.keymap.set('x', '<leader>p', "\"_dP")

-- delete into void register
vim.keymap.set('n', '<leader>d', "\"_d")
vim.keymap.set('v', '<leader>d', "\"_d")

--copy to system clipboard
vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

-------------------
-- buffer
-------------------
vim.keymap.set('n', '<leader>q', ":q<cr>")
vim.keymap.set('n', '<C-b>', '<C-o>') -- jump backwards
vim.keymap.set('n', '<C-f>', '<C-i>') -- jump forwads

-------------------
-- quickfix nav.
-------------------
--vim.keymap.set('n', '<c-k>', "<cmd>cnext<cr>zz") -- todo: diff. keybind
--vim.keymap.set('n', '<c-k>', "<cmd>lnext<cr>zz") -- todo: diff. keybind
--
--vim.keymap.set('n', '<c-j>', "<cmd>cprev<cr>zz") -- todo: diff. keybind
--vim.keymap.set('n', '<c-k>', "<cmd>lprev<cr>zz") -- todo: diff. keybind

-------------------
-- misc
-------------------
-- switch cwd to the directory of the open buffer
vim.keymap.set({ 'n', 'o', 'x' }, '<leader>cd', function()
    vim.cmd("cd %:p:h")
    vim.cmd("pwd")
end)

-- switch projects
--vim.keymap.set('n', '<leader>tm', "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set('n', '<leader>f', function()
    vim.lsp.buf.format()
end)

-------------------
-- UNUSED
-------------------
vim.keymap.set('', '<C-h>', '<Nop>')
vim.keymap.set('', 'k', '<Nop>')
vim.keymap.set('', 'K', '<Nop>')
vim.keymap.set('', 'j', '<Nop>')
vim.keymap.set('', 'J', '<Nop>')
vim.keymap.set('', 'l', '<Nop>')
vim.keymap.set('', 'L', '<Nop>')
vim.keymap.set('', '<C-o>', '<Nop>')
