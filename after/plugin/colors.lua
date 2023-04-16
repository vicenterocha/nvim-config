require('rose-pine').setup({
    disable_background = false
})

function ColorMeVim(color) 
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

ColorMeVim()
