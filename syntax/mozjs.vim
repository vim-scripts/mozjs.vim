" Vim syntax file
" Language:     Mozilla JavaScript
" Maintainer:   Sam Hanes <sam@maltera.com>
" Last Change:  2012 01 27
"
" Remarks:      JavaScript with Mozilla processor

" Backward compatibility
"
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" prevent javascript.vim from clearing the syntax
let main_syntax = "mozjs"

" Read the JavaScript and Mozilla Preprocessor syntaxes
if version < 600
  so <sfile>:p:h/javascript.vim
  so <sfile>:p:h/mozpp.vim
else
  runtime! syntax/javascript.vim
  unlet b:current_syntax
  runtime! syntax/mozpp.vim
  unlet b:current_syntax
endif

unlet main_syntax
let b:current_syntax = "mozjs"
