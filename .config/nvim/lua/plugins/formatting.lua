return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				css = { "prettier" },
				go = { "gofumpt" },
				html = { "prettier" },
				javascript = { "biome" },
				json = { "biome" },
				lua = { "stylua" },
				python = { "black", "isort" },
				rust = { "rustfmt" },
				svelte = { "rustywind" },
				vue = { "prettier", "rustywind" },
			},
			format_on_save = {
				lsp_format = "fallback",
				timeout_ms = 500,
			},
		})
	end,
}
