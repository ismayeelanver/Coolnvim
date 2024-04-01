return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	opts = function()
		local logo = [[
░█████╗░░█████╗░░█████╗░██╗░░░░░  ███╗░░██╗██╗░░░██╗██╗███╗░░░███╗
██╔══██╗██╔══██╗██╔══██╗██║░░░░░  ████╗░██║██║░░░██║██║████╗░████║
██║░░╚═╝██║░░██║██║░░██║██║░░░░░  ██╔██╗██║╚██╗░██╔╝██║██╔████╔██║
██║░░██╗██║░░██║██║░░██║██║░░░░░  ██║╚████║░╚████╔╝░██║██║╚██╔╝██║
╚█████╔╝╚█████╔╝╚█████╔╝███████╗  ██║░╚███║░░╚██╔╝░░██║██║░╚═╝░██║
░╚════╝░░╚════╝░░╚════╝░╚══════╝  ╚═╝░░╚══╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
]]

		logo = string.rep("\n", 8) .. logo .. "\n\n"

		local opts = {
			theme = "doom",
			hide = {
				statusline = false,
			},
			config = {
				header = vim.split(logo, "\n"),
        center = {
          { action = "ene | startinsert",                                        desc = " New file",        icon = "📄 ", key = "n" },
          { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = "📝 ", key = "<leader>r" },
	  { action = "Mason",                                                    desc = " Mason",           icon = "🪨 ", key = "m" },
	  { action = "Telescope colorscheme",                                    desc = " Theme",           icon = "🔮 ", key = "<leader>th" },
          { action = "qa",                                                       desc = " Quit",            icon = "❌ ", key = "q" },
	  { action = "help",                                                     desc = " Help",            icon = "❓ ",  key = "h" },
        },
				footer = function()
					local stats = require("lazy").stats()
					local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
					return { "Cool Nvim" }
				end,
			},
		}

		for _, button in ipairs(opts.config.center) do
			button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
			button.key_format = "  %s"
		end

		-- close Lazy and re-open when the dashboard is ready
		if vim.o.filetype == "lazy" then
			vim.cmd.close()
			vim.api.nvim_create_autocmd("User", {
				pattern = "DashboardLoaded",
				callback = function()
					require("lazy").show()
				end,
			})
		end

		return opts
	end,
}
