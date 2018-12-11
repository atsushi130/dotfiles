" ctermfg=文字色 ctermbg=背景色
" Pmenu=ノーマル PmenuSel 選択時 PmenuSbar=ステータスバー
" 補完自動選択
" シンタックスをキャッシュするときの最小文字長を3に指定
" 補完候補の数
" autocloseで片方のカッコを削除しても対のカッコが削除されなくなる
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 1
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : ''
  \ }
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
inoremap <expr><CR>  pumvisible() ? neocomplcache#close_popup() : "<CR>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

if !exists('g:neocomplcache_omni_functions')
  let g:neocomplcache_omni_functions = {}
endif
autocmd FileType javascript setlocal omnifunc=nodejscomplete#CompleteJS
let g:neocomplcache_omni_functions.javascript = 'nodejscomplete#CompleteJS'
hi Pmenu ctermfg=0 ctermbg=231
hi PmenuSel ctermbg=25
hi PMenuSbar ctermbg=235
hi PmenuThumb ctermfg=0 ctermbg=231
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_max_list = 5
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-c>  neocomplcache#close_popup()
