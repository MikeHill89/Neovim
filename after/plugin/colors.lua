function ColorMyPencils(color)
	color = color or "rose-pine" 
	vim.cmd.colorscheme(color)
  vim.cmd.t_Co=256
end

ColorMyPencils()

