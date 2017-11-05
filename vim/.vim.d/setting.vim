" 行番号表示
set number

" tab をスペース 4つに設定
set tabstop=4

" 前行に合わせてインデント
set autoindent

" タブの代わりにスペース
set expandtab

" インデント幅
set shiftwidth=4

" 256色対応
set t_Co=256

" swap ファイルを生成しない
set noswapfile

" 不可視文字を非表示
set nolist

" 全角記号（○、□等）の位置ズレ対応
set ambiwidth=double

" 折り返し有り
set wrap

" 折り返し無し
" set nowrap

" テキストの最大幅を無効にする
set textwidth=0

" 左右スクロールは 1文字ずつ行う
set sidescroll=1

" 矩形選択でカーソル位置の制限を解除
set virtualedit+=block

" lightline 表示
set laststatus=2

" 検索結果をハイライト
set hlsearch

" スクロール速度を速く設定
set lazyredraw

" カレント行を強調
set cursorline

" カーソルが何行目の何列目に置かれているかを表示する
set ruler

" クリップボードにコピー
set clipboard=unnamed,autoselect

"ビープ音すべてを無効にする
set visualbell t_vb=

"エラーメッセージの表示時にビープを鳴らさない
set noerrorbells

" Delete キー入力時に 制御文字が入力される現象の対応
set backspace=indent,eol,start

"補完辞書の設定
autocmd FileType javascript :set dictionary=javascript.dict<CR>
autocmd FileType php :set dictionary=PHP.dict<CR>

autocmd BufRead,BufNewFile *.jsx set filetype=javascript.jsx
autocmd BufRead,BufNewFile *.scss set filetype=sass

" ファイルタイプ別プラグイン・インデントのロードを on
filetype plugin indent on

" 自動 paste モード
if &term =~ "xterm"
    let &t_ti .= "\e[?2004h"
    let &t_te .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    noremap <special> <expr> <Esc>[200~ XTermPasteBegin("0i")
    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
    cnoremap <special> <Esc>[200~ <nop>
    cnoremap <special> <Esc>[201~ <nop>
endif
