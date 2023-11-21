-- test with a new branch
--
return {
	{
		"folke/tokyonight.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				transparent = false,
				style = "storm",
			}
		end,
	},
}
