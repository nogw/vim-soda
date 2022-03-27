scriptencoding utf-8

if exists('b:current_syntax')
	finish
endif

syntax keyword LCommentTodo contained FIXME XXX TODO BUG NOTE HACK
syntax keyword LFunName true false if then else let rec in match with fun
syntax keyword LFunName + - * / = > >= < <= not= number? not and or

syntax region LString  start=+"+ skip=+\\\\\|\\"+ end=+"+ 
w
syntax match LComment    ";.*$" contains=LCommentTodo,@Spell
syntax match LIdentifier "\v[a-z][a-zA-Z0-9]*"
syntax match LType 	 "\v[A-Z][a-zA-Z0-9]*"
syntax match LNum 	 "\v[0-9]+"
syntax match LNum 	 "\v[0-9]+\.[0-9]+"

"syntax match LKeyword "alisson"
"syntax match LKeyword "alisson?"
"syntax match LKeyword "AlissonSay"

highlight      LComment     ctermfg=DarkGrey guifg=DarkGrey
highlight      LCommentTodo ctermfg=Black ctermbg=Yellow guifg=Black guibg=Yellow
highlight      LFunName     ctermfg=Black ctermbg=Yellow guifg=Black guibg=Yellow 
highlight link LKeyword     Keyword
highlight link LNum 	      Number
highlight link LIdentifier  Identifier
highlight link LSymbol      Special

let b:current_syntax = 'sd'