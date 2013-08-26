colorscheme deep_sea
"プラグイン管理
set rtp+=~/.vim/vundle.git/
call vundle#rc()
Bundle 'git://github.com/Shougo/neocomplcache.git'
Bundle 'CSApprox'
Bundle 'thinca/vim-quickrun'
Bundle 'quickfixstatus.vim'
Bundle 'jceb/vim-hier'
Bundle 'Shougo/vimproc'
Bundle 'tpope/vim-surround'
Bundle 'Shougo/unite.vim'
Bundle 'h1mesuke/unite-outline'
Bundle 'taglist.vim'
Bundle 'tyru/open-browser.vim'



"VIM設定
set enc=utf-8
set fileencoding=utf-8
"新しいントを現在行と同じにする
set autoindent
"バックアップファイルを作るディレクトリ
set nobackup
"ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set browsedir=buffer
"クリップボードをWindowsと連携
set clipboard=unnamed
"Vi互換をオフ
set nocompatible
"スワップファイル用のディレクトリ
set noswapfile
"タブの代わりに空白文字を挿入する
set expandtab
"変更中のファイルでも、保存しないで他のファイルを表示
set hidden
"インクリメンタルサーチを行う
set incsearch
"タブ文字、行末など不可視文字を表示する
set list
"listで表示される文字のフォーマットを指定する
set listchars=eol:$,tab:>\ ,extends:<
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

""日本語入力をリセット
au BufNewFile,BufRead * set iminsert=1
"タブ幅をリセット
au BufNewFile,BufRead * set tabstop=4 shiftwidth=4
""au GUIEnter * set fullscreen


""キーマッピング
imap <c-h> <LEFT>
imap <c-j> <DOWN>
imap <c-k> <UP>
imap <c-l> <RIGHT>
imap <F5> <ESC>:w<ENTER>:QuickRun<ENTER><ENTER>

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
map <F5> <ESC>:w<ENTER>:QuickRun<ENTER><ENTER>
vnoremap { "zdi{<C-R>z}<ESC>
vnoremap [ "zdi[<C-R>z]<ESC>
vnoremap ( "zdi(<C-R>z)<ESC>

""補完自動起動
let g:neocomplcache_enable_at_startup=1

"シンタックスチェック
let s:silent_quickfix = quickrun#outputter#quickfix#new()
function! s:silent_quickfix.finish(session)
    exe "sign unplace *"
    call call(quickrun#outputter#quickfix#new().finish, [a:session], self)
    :cclose
    " vim-hier の更新
    :HierUpdate
    " quickfix への出力後に quickfixstatus を有効に
    :QuickfixStatusEnable
    "Sign表示
    exe "sign define error text=>> texthl=Error"
    for type in ['qf','lo']
        for i in s:Getlist(0, type)
            if i.bufnr == bufnr('%')
                if i.lnum > 0
                    exe "sign place " . i.lnum . " line=" . i.lnum " name=error buffer=" . bufnr('%')
                endif
            endif
        endfor
    endfor
endfunction

function! s:Getlist(winnr, type)
    if a:type == 'qf'
        return getqflist()
    else
        return getloclist(a:winnr)
    endif
endfunction


" quickrun に登録
call quickrun#register_outputter("silent_quickfix", s:silent_quickfix)
let g:quickrun_config = {}

" デフォルトの設定
let g:quickrun_config["_"] = {
    \ "errorformat" : &g:errorformat,
    \ "outputter" : "silent_quickfix",
    \ "runner/vimproc/updatetime" : 1000,
    \ "split": 'rightbelow 8sp'
\ }
let g:quickrun_config["java"] = {
    \ "exec"      : "jikes +E %s", 
    \ "command"   : "jikes +E",    
\ }
let g:quickrun_config["html"] = {
    \ "command"   : "open",    
    \ "exec"      : "%c %s", 
    \ "outputter" : "browser",
\ }
let g:quickrun_config["php"] = {
    \ "command"   : "open",    
    \ "exec"      : "%c %s", 
    \ "outputter" : "browser",
\ }
let g:quickrun_config["jsp"] = {
    \ "command"   : "open",    
    \ "exec"      : "%c %s", 
    \ "outputter" : "browser",
\ }
autocmd BufWritePost *.java,*.cpp :QuickRun
autocmd BufRead *.java,*.cpp :Tlist | :QuickRun
