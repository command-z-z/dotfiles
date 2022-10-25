" Important!!
if has('termguicolors')
	set termguicolors
endif
" For dark version.
set background=dark
" For light version.
"set background=light
" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'hard'
" 使用try，如果配色方案不存在，也不会报错
try
	colorscheme gruvbox-material
catch /^Vim\%((\a\+)\)\=:E185/
    " deal with it
endtry

