"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 全般の設定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
syntax on
set smartindent
set nobackup
set laststatus=2
set tabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"キーバインド
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Uniteのショートカット
noremap <Space>f :<C-u>Unite file<CR>

"ghcmod haskell型チェック
nnoremap <F1> :<C-u>GhcModType<CR>
nnoremap <F2> :<C-u>GhcModTypeClear<CR>

"vimrcへの書き込み
nnoremap <F5> :<C-u>split $MYVIMRC<CR>
nnoremap <F6> :<C-u>source  $MYVIMRC<CR>

"コマンドモードを1.5倍速で
noremap ; :
noremap : ;

"バッファ操作ショートカット
nnoremap <Space>l :ls<CR>:buf 
nnoremap <Space>n :bn<CR>
nnoremap <Space>m :bp<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neobundleの設定
" プラグインの追加
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" 読み込むプラグインを記載
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
  \ }
 
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'kana/vim-filetype-haskell'
NeoBundle 'dag/vim2hs'

" 読み込んだプラグインも含め、ファイルタイプの検出、
" ファイルタイプ別プラグイン/インデントを有効化する
filetype plugin indent on
NeoBundleCheck

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim2hs の設定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:haskell_conceal = 0

