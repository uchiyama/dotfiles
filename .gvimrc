colorscheme deep_sea
""set ScreenMode 5
set transparency=0
set guifont=Ricty\ Discord\:h16
"フォント設定
"set guifontwide=Osaka:h12
"set guifont=Osaka-Mono:h14
""全角スペースを視覚化
set imdisable
highlight ZenkakuSpace cterm=NONE ctermfg=NONE gui=NONE guifg=NONE
au BufNewFile,BufRead * match ZenkakuSpace /　/
"常にタブを表示
set showtabline=2
""透明度を変更
map  gw :macaction selectNextWindow:
map  gW :macaction selectPreviousWindow:

let g:hier_highlight_group_qf  = "qf_error_ucurl"
execute "highlight qf_error_ucurl gui=undercurl guisp=Red"

