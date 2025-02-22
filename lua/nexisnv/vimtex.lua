return {
	"lervag/vimtex",
	lazy = false,
	init = function()
		vim.g.vimtex_compiler_method = 'latexmk'
		vim.g.vimtex_compiler_latexmk = {
			build_dir = '',
			continuous = 1,
			callback = 1,
			executable = 'latexmk',
			options = {
				'-pdf',
				'-pdflatex=pdflatex',
				'-interaction=nonstopmode',
				'-synctex=1'
			},
		}
		vim.g.vimtex_view_method = 'zathura'
	end
}
