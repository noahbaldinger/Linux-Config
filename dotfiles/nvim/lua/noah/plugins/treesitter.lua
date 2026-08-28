return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	branch = "master",
	main = "nvim-treesitter.configs",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	opts = {
		-- ensure these language parsers are installed
		ensure_installed = {
			"bash",
			"c",
			"cpp",
			"css",
			"dockerfile",
			"gitignore",
			"html",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"query",
			"vim",
			"vimdoc",
			"yaml",
		},

		-- install parsers synchronously (only applied to `ensure_installed`)
		sync_install = false,

		-- automatically install missing parsers when entering buffer
		auto_install = true,

		-- enable syntax highlighting
		highlight = {
			enable = true,
			-- disable slow treesitter highlight for large files
			disable = function(_, buf)
				local max_filesize = 100 * 1024 -- 100 KB
				local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
				if ok and stats and stats.size > max_filesize then
					return true
				end
			end,
		},

		-- enable indentation
		indent = {
			enable = true,
		},

		-- enable autotagging (w/ nvim-ts-autotag plugin)
		autotag = {
			enable = true,
		},

		-- incremental selection based on the named nodes from the grammar
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<C-space>",
				node_incremental = "<C-space>",
				scope_incremental = false,
				node_decremental = "<bs>",
			},
		},
	},
}
