set runtimepath+=~/.vim.d

" 設定の読み込み
runtime setting.vim
" キーマッピングの読み込み
runtime mapping.vim

if &compatible
  set nocompatible
endif

" プラグインがインストールされるディレクトリ
let s:dein_dir = expand('~/.vim/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github からダウンロード
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  " 設定開始
  call dein#begin(s:dein_dir)

    " TOML ファイルの読み込みとキャシュ
    let g:rc_dir    = expand("~/.vim/dein")
    let s:toml      = g:rc_dir . '/dein.toml'
    let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
    call dein#load_toml(s:toml,      {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" 未インストールプラグインをインストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

" runtimepath に含まれる設定をもとにシンタックスを生成するので、runtimepath 初期化後に color 設定を読み込む
runtime color.vim
