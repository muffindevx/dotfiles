
function SetThemeColor(color) 
	color = color or "catppuccin-frappe"
	vim.cmd.colorscheme(color)

    -- those lines disabled background
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetThemeColor()

