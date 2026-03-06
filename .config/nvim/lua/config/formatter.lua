require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "ruff" },
		rust = { "rustfmt", lsp_format = "fallback" },
		kdl = { "kdlfmt" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
	},
	formatters = {
		kdlfmt = {
			args = { "format", "--kdl-version", "v1", "--stdin" },
			stdin = true,
		},
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
