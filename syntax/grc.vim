if v:version < 600
  syntax clear
elseif exists('b:current_syntax')
  finish
endif

syntax keyword grc_directive 
      \ regexp
      \ colours
      \ command
      \ concat
      \ skip
      \ count
highlight link grc_directive Identifier

syntax region grc_comment display oneline start='^\s*#' end='$' contains=lrTodo,@Spell
highlight link grc_comment Comment

let b:current_syntax = 'grc'

