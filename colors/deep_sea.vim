" Vim color file
" Name: 3dglasses
" Maintainer: Erik Falor <ewfalor@gmail.com>
" Version: 1.1.1
"
" 	Version 1.1.1:	Modified MatchParen group so that Matching < > in XML
" 	files stand out better.
"
" 	Version 1.1:	Added support for GetLatestVimScripts
"
" 	Version 1.0:	Initial upload
" GetLatestVimScripts: 2019 1 :AutoInstall: 3dglasses.vim

set background=dark
if version < 700 
	finish
else 
	if exists("syntax_on")
		hi clear
		syntax reset
	endif
endif

"map <F1> :echo synIDattr(synID(line("."), col("."), 1), "name")<CR>
let g:colors_name="deep_sea"

"3D Glasses palette
" {{{
let s:White			=	['#ffffff', '#dddddd', '#bbbbbb']
let s:Black			=	['#000000', '#001621', '#1B3641', '#00222B']
let s:DarkBlue		=	['#00117B', '#0D4CAD', '#01BEF6']
let s:LightBlue		=	['#004455', '#0088AA', '#00CCFF', '#55DDFF', '#80E5FF']
let s:Red			=	['#2b0000', '#800000', '#AA0000', '#FF0000', '#FF2A2A', '#FF5555']
let s:Purple        =   ['#b23aee']
" }}}



hi Normal      guibg=#00222B  guifg=#00ffff
execute "hi Normal	    gui=NONE guibg=" . s:Black[3] . " guifg=" . s:LightBlue[2]
execute "hi NonText			gui=NONE guibg=" . s:Black[3] . " guifg=" . s:LightBlue[1]


" {{
    " { syntax
" }
execute "hi Comment			gui=NONE guifg=" . s:LightBlue[1]
execute "hi Constant		gui=NONE guifg=" . s:LightBlue[2]
execute "hi Error           gui=NONE guifg=" . s:Red[3] . " guibg=NONE"
"execute "hi Error           gui=NONE guifg=" . s:Red[5] . " guibg=" . s:Red[0]
execute "hi Identifier		gui=NONE guifg=" . s:LightBlue[3]
execute "hi Ignore			gui=NONE guifg=" . s:Red[1]
execute "hi Operator		gui=NONE guifg=" . s:LightBlue[4]
execute "hi KeyWord 		gui=NONE guifg=" . s:LightBlue[4]
execute "hi Inclue			gui=NONE guifg=" . s:Red[2]
execute "hi PreProc		gui=NONE guifg=" . s:Red[2]
execute "hi Special			gui=NONE guifg=" . s:LightBlue[1]
execute "hi Statement		gui=NONE guifg=" . s:Purple[0]
execute "hi String			gui=NONE guifg=" . s:DarkBlue[2]
execute "hi Character		gui=NONE guifg=" . s:DarkBlue[2]
execute "hi Boolean			gui=NONE guifg=" . s:Purple[0]
execute "hi Title			gui=NONE guifg=" . s:White[0]
execute "hi Todo			gui=NONE guisp=NONE guibg=NONE guifg=" . s:LightBlue[1] 
execute "hi Type			gui=NONE guifg=" . s:Purple[0]
execute "hi Underlined		gui=NONE guifg=" . s:LightBlue[0]




" }}}

" {{{ grous
"
"
"
"execute "hi CursorIM		TODO
"execute "hi DiffAdd		
"execute "hi DiffChange	
"execute "hi DiffDelete	
"execute "hi DiffText	
execute "hi Directory		gui=NONE guifg=" . s:LightBlue[0]
"execute "hi Scrollbar		TODO
execute "hi SignColumn      gui=NONE guifg=" . s:Red[4]
execute "hi SpecialKey		gui=NONE guifg=" . s:LightBlue[1]
"execute "hi SpellBad	
"execute "hi SpellCap	
"execute "hi SpellLocal	
"execute "hi SpellRare	

execute "hi Cursor			gui=NONE guibg=" . s:DarkBlue[2] . " guifg=" . s:DarkBlue[0]
execute "hi CursorColumn	gui=NONE guibg=" . s:Red[0]
execute "hi CursorLine		gui=NONE guibg=" . s:Red[0]
execute "hi ErrorMsg		gui=NONE guifg=" . s:White[0] . " guibg=" . s:Red[1]
execute "hi FoldColumn		gui=NONE guibg=" . s:LightBlue[0] . " guifg=" . s:LightBlue[2]
execute "hi Folded			gui=NONE guibg=" . s:LightBlue[0] . " guifg=" . s:LightBlue[2]
execute "hi IncSearch		gui=NONE guibg=" . s:Red[2] . " guifg=" . s:Red[0] 
execute "hi LineNr			gui=NONE guibg=" . s:Black[3] . " guifg=" . s:LightBlue[1]
execute "hi MatchParen		gui=NONE guibg=" . s:Red[2] 
execute "hi ModeMsg			gui=NONE guibg=NONE guifg=NONE"
execute "hi MoreMsg			gui=NONE guibg=NONE guifg=NONE"
execute "hi Pmenu			gui=NONE guibg=" . s:LightBlue[3] . " guifg=" . s:DarkBlue[0]
execute "hi PmenuSbar		gui=NONE guibg=" . s:LightBlue[3] . " guifg=" . s:Red[0]
execute "hi PmenuSel		gui=NONE guibg=" . s:LightBlue[3] . " guifg=" . s:Red[4]
execute "hi PmenuThumb		gui=NONE guibg=" . s:LightBlue[3] . " guifg=" . s:Red[4]
execute "hi Question		gui=NONE guifg=" . s:DarkBlue[1]
execute "hi Search			gui=NONE guisp=NONE guibg=" . s:LightBlue[4] 
execute "hi StatusLine		gui=bold guibg=" . s:LightBlue[0] . " guifg=" . s:DarkBlue[2]
execute "hi StatusLineNC	gui=bold guibg=" . s:DarkBlue[1] . " guifg=" . s:Red[0]
execute "hi TabLine			gui=NONE guibg=" . s:Red[1] . " guifg=" . s:Red[3]      
execute "hi TabLineFill		gui=NONE guifg=" . s:Red[1]
execute "hi TabLineSel		gui=NONE guibg=" . s:LightBlue[3] . " guifg=" . s:DarkBlue[0]
execute "hi Title			gui=NONE guifg=" . s:Red[3]
execute "hi VertSplit		gui=NONE guibg=" . s:Red[1] . " guifg=" . s:Red[4]
execute "hi Visual			gui=NONE guibg=" . s:Red[1] . " guifg=NONE"
"execute "hi Visual			gui=NONE guibg=NONE guifg=" . s:Red[4]
execute "hi VisualNOS		gui=NONE guibg=NONE"
execute "hi WarningMsg		gui=NONE guifg=" . s:Red[3]
execute "hi WildMenu		gui=NONE guifg=" . s:Red[0] . " guibg=" . s:Red[4]
execute "augroup InsertHook"
execute "autocmd!"
execute "augroup END"

" }}}
"


"  {{{ GUI
"
"
"hi Menu      TODO
"hi Scrollbar TODO
execute "hi Tooltip			gui=NONE guibg=" . s:LightBlue[0] . " guifg=" . s:White[1]

" }}}
"
"
" vim:foldmethod=marker:

