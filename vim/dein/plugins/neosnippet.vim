"「neosnippet default snippets cannot be loaded」のエラーを回避する為に、default snippets を無効にする
let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/snippets/'
let g:neosnippet#disable_runtime_snippets = {
    \'_': 1
\ }

imap <C-u> <Plug>(neosnippet_expand_or_jump)
smap <C-u> <Plug>(neosnippet_expand_or_jump)
xmap <C-u> <Plug>(neosnippet_expand_target)
