local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- set <space> as leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- set jj as <Esc> key
keymap.set('i', 'jj', '<Esc>')

-- set CTRL + s to save file
keymap.set('n', '<C-s>', '<cmd>w<cr>')

-- select all
keymap.set('n', '<C-a>', 'ggVG', { desc = 'Select all', silent = true })

-- delete single character without copying into register
keymap.set('n', 'x', '"_x', opts )

-- clear highlight after search
keymap.set('n', '<C-c>', ':nohl<cr>', { desc = 'Clear search hl', silent = true })

-- move line up and down
keymap.set('v', 'J', ':m ">+1<cr>gv=gv', { desc = 'Move line down in visual selection' })
keymap.set('v', 'K', ':m ">-1<cr>gv=gv', { desc = 'Move line up in visual selection' })

-- find and center
keymap.set('n', 'n', 'nzzzv', opts )
keymap.set('n', 'N', 'Nzzzv', opts )

-- resize with arrows
keymap.set('n', '<C-up>', ':resize +2<cr>', opts)
keymap.set('n', '<C-down>', ':resize -2<cr>', opts)
keymap.set('n', '<C-left>', ':vertical resize +2<cr>', opts)
keymap.set('n', '<C-right>', ':vertical resize -2<cr>', opts)

-- buffers
keymap.set('n', '<Tab>', ':bnext<cr>', opts)
keymap.set('n', '<S-Tab>', ':bprevious<cr>', opts)
keymap.set('n', '<leader>x', ':bdelete<cr>', opts)
keymap.set('n', '<leader>b', ':<cmd>enew<cr>', opts)

-- window management
keymap.set('n', '<leader>v', '<C-w>v', opts)
keymap.set('n', '<leader>h', '<C-w>s', opts)
keymap.set('n', '<leader>se', '<C-w>=', opts)
keymap.set('n', '<leader>xs', ':close<cr>', opts)

-- split window
keymap.set('n', 'ss', ':split<CR>', opts)
keymap.set('n', 'sv', ':vsplit<CR>', opts)

-- navigate between splits
keymap.set('n', '<C-k>', ':wincmd k<cr>', opts)
keymap.set('n', '<C-j>', ':wincmd j<cr>', opts)
keymap.set('n', '<C-h>', ':wincmd h<cr>', opts)
keymap.set('n', '<C-l>', ':wincmd l<cr>', opts)
