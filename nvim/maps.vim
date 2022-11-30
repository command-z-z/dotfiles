"-------------------------------------------------------------------------------
" window
"-------------------------------------------------------------------------------
" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
" 在mac/linux中使用Alt键，在webssh
" 中alt没用，就使用Ctrl,WEBSSH主要的WINDOWS中使用
nmap <M-left> <C-w><
nmap <C-left> <C-w><
nmap s<left> <C-w><

nmap <M-right> <C-w>>
nmap <C-right> <C-w>>
nmap s<right> <C-w>>

nmap <M-up> <C-w>+
nmap <C-up> <C-w>+
nmap s<up> <C-w>+

nmap <M-down> <C-w>-
nmap <C-down> <C-w>-
nmap s<down> <C-w>-

" 插入模式移动光标
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <Delete>
" hh在我用的单词里出现的频率极低，其实感觉home用的没有end多，统一风都用大写的吧
"inoremap HH <Home>
" 单词中包含ll的太多了，所以用大写LL
"inoremap LL <End>
" jk <Esc>
inoremap jk <Esc>
" 插入模式鼠标滚轮抵消,不然会出现滚动鼠标录入了一堆5j5k
" inoremap 5k <Esc>
" inoremap 5j <Esc>
" inoremap 9<CR> <Esc>a
" 快速跳转行首与行尾  
nnoremap L $
nnoremap H ^
" 向下5行
noremap <C-j> 5j
" 向上5行
noremap <C-k> 5k
noremap <C-h> 5h
noremap <C-l> 5l
" 保 存
noremap s :w<CR>
" Coc智能处理，使用IDEA Alt+Enter 同样按键
inoremap <C-s> <ESC> :w<CR>
" 代码格式化
noremap <leader>f :Format<CR> 
noremap <leader>r :luafile ~/.wp/lua/run.lua<CR>

" 强制退出
map Q :q<CR>
"map qq :q<CR>
"自动关闭标签
inoremap <buffer> <C-v> <esc>yiwi<lt><esc>ea></><esc>hpF>i
set iskeyword+=<,>
iab <h1> <lt>h1> <lt>/h1><esc>5ha

" 全选
nmap <C-a> gg<S-v>G
" 加/减数字1
nnoremap + <C-a>
nnoremap - <C-x>
"-------------------------------------------------------------------------------
" Buffers
"-------------------------------------------------------------------------------
" Open current directory
" 插入模式移动光标
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <Delete>
" hh在我用的单词里出现的频率极低，其实感觉home用的没有end多，统一风格都用大写的吧
"inoremap HH <Home>
" 单词中包含ll的太多了，所以用大写LL
"inoremap LL <End>
" jk <Esc>
inoremap jk <Esc>
" 插入模式鼠标滚轮抵消,不然会出现滚动鼠标录入了一堆5j5k
" inoremap 5k <Esc>
" inoremap 5j <Esc>
" inoremap 9<CR> <Esc>a
" 快速跳转行首与行尾  
nnoremap L $
nnoremap H ^
" 向下5行
noremap <C-j> 5j
" 向上5行
noremap <C-k> 5k
" 保存
noremap <C-s> :w<CR>
" noremap <C-s> ggVG=:w<CR>
" Coc智能处理，使用IDEA Alt+Enter 同样按键
noremap <M-Enter> :CocAction<CR>
inoremap <C-s> <ESC> :w<CR>
" 代码格式化
"noremap <leader>f :Format<CR> 

" 强制退出
map Q :q<CR>
"自动关闭标签
inoremap <buffer> <C-v> <esc>yiwi<lt><esc>ea></><esc>hpF>i
set iskeyword+=<,>
iab <h1> <lt>h1> <lt>/h1><esc>5ha

" 全选
nmap <C-a> gg<S-v>G
" 加/减数字1
nnoremap + <C-a>
nnoremap - <C-x>
"-------------------------------------------------------------------------------
" Buffers
"-------------------------------------------------------------------------------
" Open current directory
"nmap te :tabedit
"nmap <S-Tab> :tabprev<Return>
nmap <S-Tab> :bprev<Return>
"nmap <Tab> :tabnext<Return>
nmap <Tab> :bnext<Return>
nmap <leader>b :bd<Return>
" 窗口管理器
" invoke with '-'
nmap  -  <Plug>(choosewin)

" 系统剪贴板
noremap <leader>y "+y
noremap <leader>p "+p
" 文件大纲
noremap <leader>o :SymbolsOutline<Return>
