" ,m to start vim-over
" カーソル下の単語をハイライト付きで置換
" コピーした文字列をハイライト付きで置換
nnoremap <silent> ,m :OverCommandLine<CR>
nnoremap sub :OverCommandLine<CR>%s/<C-r><C-w>//g<Left><Left>
nnoremap subp y:OverCommandLine<CR>%s!<C-r>=substitute(@0, '!', '\\!','g')<CR>!!gI<Left><Left><Left>
