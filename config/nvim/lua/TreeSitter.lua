local status_ok, nvim_treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

nvim_treesitter.setup {
	ensure_installed = { "bash", "c", "go", "markdown", "python", "yaml" },
	sync_install = false,
}
