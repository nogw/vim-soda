scriptencoding utf-8

if exists('b:current_syntax')
    finish
endif

syntax match sodaComment "\v\{\..*$" contains=@Spell
syntax match sodaComment "\v#!.*$"

syntax match sodaIdentifier "\v[a-z][a-zA-Z0-9]*"
syntax match sodaType "\v[A-Z][a-zA-Z0-9]*"

syntax match sodaNum "\v[0-9]+"
syntax match sodaNum "\v[0-9]+\.[0-9]+"

syntax keyword sodaKeyword true false if then else let rec in match with fun
" syntax match sodaKeyword ":set"
" syntax match sodaKeyword "@include"

syntax region sodaRegex start="/" end="/"
syntax region sodaString start="'" end="'" contains=sodaSpecial

syntax match sodaSpecial +\\['\\n]+

highlight link sodaComment Comment
highlight link sodaKeyword Keyword
highlight link sodaNum Number
highlight link sodaIdentifier Identifier
highlight link sodaSymbol Special
highlight link sodaRegex String
highlight link sodaString String
highlight link sodaSpecial Special

let b:current_syntax = 'soda'