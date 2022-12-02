local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap( "n",   "<C-s>",      ":w<CR>", opts)
keymap( "n",   "<C-x>",      ":q!<CR>", opts)

-- Better window navigation
keymap( "n",   "<C-h>",      "<C-w>h", opts)
keymap( "n",   "<C-l>",      "<C-w>l", opts)

-- Nvim-tree
keymap( "n",   "<leader>n",  ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap( "n",   "<leader>f",  ":Telescope find_files<CR>", opts)

-- LuaSnip
keymap( "i",   "<Tab>",      "v:lua.tab_complete()", {expr = true})
keymap( "s",   "<Tab>",      "v:lua.tab_complete()", {expr = true})
keymap( "i",   "<S-Tab>",    "v:lua.s_tab_complete()", {expr = true})
keymap( "s",   "<S-Tab>",    "v:lua.s_tab_complete()", {expr = true})
keymap( "i",   "<C-E>",      "<Plug>luasnip-next-choice", {})
keymap( "s",   "<C-E>",      "<Plug>luasnip-next-choice", {})

-- Run code
keymap( "n",   "<leader>rc", "<cmd>lua _RUN_C()<CR>", opts)
keymap( "n",   "<leader>rg", "<cmd>lua _RUN_GO()<CR>", opts)
keymap( "n",   "<leader>rp", "<cmd>lua _RUN_PYTHON()<CR>", opts)
