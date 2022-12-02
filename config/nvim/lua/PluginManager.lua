-- Auto install plugin manager
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.cmd('echo "Downloading wbthomason/packer.nvim to manage plugins..."')
    vim.cmd('silent !git clone --depth 1 https://github.com/wbthomason/packer.nvim '..install_path)
    vim.cmd('packadd packer.nvim')
    vim.cmd('autocmd VimEnter * PackerCompile')
    vim.cmd('autocmd VimEnter * PackerSync')
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'navarasu/onedark.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'windwp/nvim-autopairs'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    use 'saadparwaiz1/cmp_luasnip'
    use 'terrortylor/nvim-comment'
    use 'akinsho/toggleterm.nvim'
    use 'neovim/nvim-lspconfig'
    use 'nvim-treesitter/nvim-treesitter'
end)

