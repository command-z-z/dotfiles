if !exists('g:loaded_lspsaga') | finish | endif

lua << EOF
local saga = require 'lspsaga'

--[[
saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}
]]--
saga.init_lsp_saga {
  error_sign = ' ',
  warn_sign = ' ',
  hint_sign = '',
  infor_sign = ' ',
  border_style = "round",
}
EOF
"nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> <leader>j <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" scroll up hover doc
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action).smart_scroll_with_saga(-1)<CR>
"inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> <leader>k <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>

" code action
" 智能处理，使用IDEA Alt+Enter 同样按键
nnoremap <silent><M-Enter> <cmd>lua require('lspsaga.codeaction').code_action()<CR>
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>

" 重命名 感觉没有lsp自带的功能好用，因为名称要从头输入
nnoremap <silent><leader>rn <cmd>lua require('lspsaga.rename').rename()<CR>
"预览定义
nnoremap <silent> <leader>gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
"Jump Diagnostic and Show Diagnostics
nnoremap <silent> <leader>cd <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>
   
" 打开终端
nnoremap <silent> <A-d> :Lspsaga open_floaterm<CR>
" 关闭终端
tnorema <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>
