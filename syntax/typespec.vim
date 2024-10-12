if exists("b:current_syntax")
  finish
endif

syn keyword typespecKeyword import using model namespace op scalar extends interface enum union alias
syn keyword typespecBoolean true false

syn keyword typespecType numeric integer float int64 int32 int16 int8 safeint uint64 uint32 uint8 float32 float64 decimal decimal128
syn keyword typespecType plainDate plainTime utcDateTime offsetDateTime duration
syn keyword typespecType bytes string boolean null Array Record unknown void never url

syn match typespecComment "//.*"
syn region typespecComment start="/\*" end="\*/" keepend

syn match typespecDecorator "@[A-Za-z][A-Za-z0-9_]\+"
syn match typespecIdentifier "[A-Za-z$][A-Za-z0-9_$]*"

syn match typespecInteger "\<\d\+\>"
syn match typespecFloat "\<\d\+\.\d\>"

syn region typespecString start='"' skip='\\\\\|\\"\|\\$' end='"' keepend
syn region typespecString start='"""' skip='\\"' end='"""' keepend

hi def link typespecBoolean Boolean
hi def link typespecComment Comment
hi def link typespecDecorator Preproc
hi def link typespecIdentifier Identifier
hi def link typespecInteger Number
hi def link typespecFloat Number
hi def link typespecKeyword Keyword
hi def link typespecOperation Function
hi def link typespecString String
hi def link typespecType Type

let b:current_syntax = "typespec"
