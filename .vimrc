colorscheme deep_sea
set transparency=100
"新しいントを現在行と同じにする
set autoindent
"バックアップファイルを作るディレクトリ
set backupdir=$HOME/vimbackup
"ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set browsedir=buffer
"クリップボードをWindowsと連携
set clipboard=unnamed
"Vi互換をオフ
set nocompatible
"スワップファイル用のディレクトリ
set directory=$HOME/vimbackup
"タブの代わりに空白文字を挿入する
set expandtab
"変更中のファイルでも、保存しないで他のファイルを表示
set hidden
"インクリメンタルサーチを行う
set incsearch
"タブ文字、行末など不可視文字を表示する
set list
"listで表示される文字のフォーマットを指定する
set listchars=eol:⏎,tab:>\ ,extends:<
"行番号を表示する
set number
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
"ファイル内のタブが対応する空白の数
set tabstop=4
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
""検索をファイルの先頭へループしない
set nowrapscan
""ステータスバーの表示
set statusline=0
set statusline=%f%m%r%h%w\ [Format:%{&ff}]\ [Encode:%{&fenc}]\ [Type:%Y]\ [%l/%LL,%vC]
set fuoptions=maxvert,maxhorz
""日本語入力をリセット
au BufNewFile,BufRead * set iminsert=1
"タブ幅をリセット
au BufNewFile,BufRead * set tabstop=4 shiftwidth=4
au GUIEnter * set fullscreen
""キーマッピング
imap <c-o> <END>
imap <c-t> <HOME>
imap <c-h> <LEFT>
imap <c-j> <DOWN>
imap <c-k> <UP>
imap <c-l> <RIGHT>
inoremap <expr><CR> <SID>Enter()
""補完自動起動
"let g:neocomplcache_enable_at_startup=1
""エクスプローラー自動起動
"let g:opsplorer_enable_at_startup=1

"java設定
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1

"中括弧スクリプト
function! s:Enter()
    let str = getline(".")[col(".")-2]
    if str == '{'
        return "\<CR>\<End>\<CR>}\<UP>\<HOME>\<END>"
    endif
    return "\<CR>"
endfunction


"プラグイン管理
set rtp+=~/dotfiles/vimfiles/vundle.git/
call vundle#rc()
Bundle "vundle"
Bundle "neocomplcache"
Bundle "opsplorer"
Bundle "quickrun.vim"
Bundle "CSApprox"
Bundle "java_getset.vim"

