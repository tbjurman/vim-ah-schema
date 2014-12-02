"
" Vim syntax file for AH:s schema format
"
if exists("b:current_syntax")
	finish
endif

syn keyword kdocumentStart document
syn keyword kdocumentHeader encoding service host namespace elementFormDefault import
syn keyword kkeyword enumeration documentation member parameter
syn keyword koperation simpleType structure operation
syn keyword kreturn return

" comments
syn region rcomment start='^//' end='$'
syn region rcomment start=' //' end='$'
syn region rcomment start='#' end='$'

" xml types
syn match mxmltypes 's:string'
syn match mxmltypes 's:integer'
syn match mxmltypes 's:boolean'
syn match mxmltypes 's:long'

" own types
syn match mowntypes 's0:[^"]\+'

hi def link kdocumentStart ModeMsg
hi def link kdocumentHeader Type
hi def link kkeyword Directory
hi def link koperation Statement
hi def link kreturn Identifier
hi def link rcomment Comment
hi def link rstring PreProc
hi def link mxmltypes Type
hi def link mowntypes Constant

let b:current_syntax = "ah-schema"
