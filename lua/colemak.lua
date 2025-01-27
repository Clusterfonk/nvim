-------------------
-- general
-------------------
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', function() vim.cmd('write!') end)

-- escape
vim.keymap.set({ 'i', 'v' }, ',.', '<Esc>', {})

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
vim.keymap.set('n', 'E', "v:m '<-2<CR>gv=gv<ESC>")
vim.keymap.set('v', 'E', ":m '<-2<CR>gv=gv")

vim.keymap.set({ 'n', 'v', 'o', 'x' }, 'i', 'l', {})
vim.keymap.set({ 'n', 'v', 'o', 'x' }, 'I', 'L', {})

-- half page jumping
vim.keymap.set('n', '<C-n>', "<C-d>zz")
vim.keymap.set('n', '<C-e>', "<C-u>zz")

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
vim.keymap.set('n', '<c-u>', "<cmd>cprev<cr>zz")
vim.keymap.set('n', '<c-u>', "<cmd>lprev<cr>zz")

vim.keymap.set('n', '<c-d>', "<cmd>cnext<cr>zz")
vim.keymap.set('n', '<c-d>', "<cmd>lnext<cr>zz")

-------------------
-- jumplist
-------------------
vim.keymap.set('n', "<c-f>", "<C-i>")
vim.keymap.set('n', "<c-b>", "<C-o>")

-------------------
-- misc
-------------------
-- switch cwd to the directory of the open buffer
vim.keymap.set({ 'n', 'o', 'x' }, '<leader>cd', function()
    vim.cmd("cd %:p:h")
    vim.cmd("pwd")
end)

-- TodoLocList
vim.keymap.set({'n'}, '<leader>tl', function() vim.cmd("TodoLocList") end)

-------------------
-- Refactor
-------------------
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- switch projects
--vim.keymap.set('n', '<leader>tm', "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set('n', '<leader>l', function()
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
vim.keymap.set('', '<C-o>', '<Nop>')
vim.keymap.set('', 'q', '<Nop>')
vim.keymap.set('n', '<leader>ww', '<Nop>')
