"vimのノーマルモードを [Control + j] にキーマッピング
imap <C-j> <esc>

" <C-j> 2回でハイライト消去
nnoremap <C-j><C-j> :nohlsearch<CR>

" 行頭・行末移動を [Control+a]・[Control+e]にキーマッピング
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^i
noremap <C-e> <Esc>$
noremap <C-a> <Esc>^
vnoremap <C-e> $
vnoremap <C-a> ^

" ビジュアルモード時 [Control + c] でコピー
vnoremap <C-c> y

" インサートモードで一字削除
inoremap <C-x> <Esc>xi

" [Control + s] で保存
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

" [Control + q] で保存
nnoremap <C-q> :q<CR>
inoremap <C-q> <Esc>:q<CR>

" [Shift + o]をインサートモード時に利用できるようキーマッピング
inoremap <C-O> <Esc><S-o>
inoremap <C-o> <Esc>o

" [Control + d] で一行デリート
inoremap <C-d> <Esc>ld$a
nnoremap <C-d> <Esc>d$

" 定義ファイルへジャンプ
nnoremap <CR> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap - :split<CR> :exe("tjump ".expand('<cword>'))<CR>
