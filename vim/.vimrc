set runtimepath+=~/.vim.d

" 設定の読み込み
runtime setting.vim

" キーマッピングの読み込み
runtime mapping.vim

" dein の読み込み
source ~/.vim/dein/.deinrc

if &compatible
  set nocompatible
endif

" runtimepath に含まれる設定をもとにシンタックスを生成するので、runtimepath 初期化後に color 設定を読み込む
runtime color.vim
