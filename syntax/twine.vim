" Vim syntax file
" Language: Twine
" Maintainer: Mozart Petter (mozart.petter@gmail.com)

if exists("b:current_syntax")
	finish
endif

" Section definition
syn match twSectionDef "([A-Za-z0-9]*)"
" Symbols
syn match twSymbol "="

" Section region
syn region twSection start="^\s*\[\[[^\[]" end="]]\s*$" keepend oneline contains=twSectionDef
" String region
syn region twString start="^\s*\[[^\[]" end="]\s*" oneline contains=twSectionDef

" Define default highlighting
hi def link twSection	Todo
hi def link twString	Statement
hi def link twSymbol	Special

