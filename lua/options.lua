-- lua/options.lua

local opt = vim.opt

-- Line numbers
opt.number = true -- Show line numbers
opt.relativenumber = true -- Relative line numbers

-- Indentation
opt.tabstop = 4 -- Number of spaces per tab
-- opt.shiftwidth = 4		-- Number of spaces for each indent
-- opt.expandtab = false	-- Convert tabs to spaces
opt.smartindent = true -- Smart autoindentation

-- UI
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.cursorline = true -- Highlight current line
opt.signcolumn = "yes" -- Always show sign column

-- Search
opt.ignorecase = true -- Ignore case in search
opt.smartcase = true -- Override ignorecase if uppercase is used
opt.incsearch = true -- Show results as you type
opt.hlsearch = true -- Highlight all matches

-- Files
opt.undofile = true -- Enable persistent undo
opt.swapfile = false -- Disable swap file
opt.backup = false -- Disable backup file

-- Behavior
opt.scrolloff = 8 -- Keep 8 lines visible when scrolling
opt.updatetime = 300 -- Faster update time

-- Clipboard (uses system clipboard if available)
opt.clipboard = "unnamedplus"

-- Split behavior
opt.splitright = true
opt.splitbelow = true

-- Wrap
opt.wrap = true -- Do wrap long lines
opt.linebreak = true -- Break lines at word boundaries (if wrap=true)
opt.breakindent = true -- Preserve indentation on wrapped lines

-- Window UX
opt.title = true -- Show filename in terminal title
opt.confirm = true -- Confirm when closing unsaved buffers

-- White Spaces
opt.list = true
opt.listchars = {
  space = "·",
  tab = "→ ",
  trail = "·",
  extends = "›",
  precedes = "‹",
}
vim.cmd([[
  highlight Whitespace guifg=#555555 gui=nocombine
  highlight NonText guifg=#555555 gui=nocombine
]])
