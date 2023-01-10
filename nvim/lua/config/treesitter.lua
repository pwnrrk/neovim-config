require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "lua", "vim", "help", "typescript", "tsx", "javascript", "html", "css", "json" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
}
