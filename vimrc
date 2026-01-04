syntax on

nnoremap y "+y
vnoremap y "+y
nnoremap p "+p
nnoremap P "+P
vnoremap p "+p
vnoremap x "+x

vnoremap < <gv
vnoremap > >gv

vnoremap y "+ygv<esc>

inoremap jj <Esc>

nnoremap gl ^v$

" g + { : 跳转到当前代码块的【起始花括号】{
nnoremap gb [{

" g + } : 跳转到当前代码a代码块的【结束花括号】}
nnoremap ge ]}

" g + p (Go to Pair): 在配对的括号间跳转，使用 %
nnoremap gp %

" 在当前行下方新建一行，不进入插入模式
nnoremap go o<ESC>k

" 用 Ctrl+k 替代 Ctrl+u (向上滚动)
nnoremap <C-k> <C-u>
vnoremap <C-k> <C-u>
" (可选) 用 Ctrl+j 替代 Ctrl+d (向下滚动)
nnoremap <C-j> <C-d>
vnoremap <C-j> <C-d>
