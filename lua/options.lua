--[[
 Sections:
    -> General
    -> Lazy
    -> Theme
]]--
local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.scrolloff = 8           -- Surrounds the cursor by N lines
opt.cmdheight = 1           -- Height of the command bar
opt.hid = true              -- Hide buffers when abandoned
opt.showmatch = true        -- Show matching parentheses
opt.matchtime = 2           -- N tenth of a second showmatch

opt.completeopt = 'menuone,noinsert,noselect'   -- Autocomplete options
opt.showmode = false                            -- Hide current mode

opt.ignorecase = true       -- Ignore case letters when search
opt.smartcase = true        -- Cancle ignorecase when uppercase in search pattern
opt.linebreak = true        -- Wrap on word boundary
opt.termguicolors = true    -- Enable 24-bit RGB colors
opt.laststatus = 2          -- Always show statusline
opt.hlsearch = false
opt.hlsearch = true

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 4          -- Shift N spaces when tab
opt.tabstop = 4             -- 1 tab == N spaces
opt.softtabstop = 4
opt.smartindent = true      -- Autoindent new lines
opt.tw = 200                -- Linebreak on N characters

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true           -- Enable background buffers
opt.history = 500           -- Remember N lines in history
opt.lazyredraw = true       -- Faster scrolling
opt.updatetime = 100        -- ms to wait for trigger an event
opt.swapfile = false        -- Don't use swapfile
opt.undodir = os.getenv("XDG_CACHE_HOME") .. "/nvim/undodir"
opt.undofile = true

opt.backspace = [[indent,eol,start]]
opt.whichwrap:append "<>hl"

opt.list = true
opt.listchars = {eol='¬', tab='¦ ', nbsp='⎵'}

opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.colorcolumn = "100"

-----------------------------------------------------------
-- Mouse
-----------------------------------------------------------
opt.mouse = ""

-----------------------------------------------------------
-- Spell
-----------------------------------------------------------
opt.spelllang = 'en_us'
opt.spell = true

-----------------------------------------------------------
-- netrw
-----------------------------------------------------------
vim.g.netrw_home = os.getenv("XDG_CACHE_HOME") .. "/nvim/"

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize=25
