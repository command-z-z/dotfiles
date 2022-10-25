" 让Ranger取代Netrw并成为文件浏览器
let g:rnvimr_enable_ex = 1
" 选择文件后隐藏游侠
let g:rnvimr_enable_picker = 1
" 使用multipane模式启动(单列)可以按~手动切换
let g:rnvimr_ranger_cmd = ['ranger', '--cmd=set draw_borders both']
" 设置<F3> 启动文件管理器
nnoremap <F3> :RnvimrToggle<CR>
nnoremap sr :RnvimrToggle<CR>

