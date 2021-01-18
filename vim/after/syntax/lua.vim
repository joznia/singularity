if singularity#should_abort('lua')
    finish
endif

hi! link luaFunc  SingularityCyan
hi! link luaTable SingularityFg

" tbastos/vim-lua {{{

hi! link luaBraces       SingularityFg
hi! link luaBuiltIn      Constant
hi! link luaDocTag       Keyword
hi! link luaErrHand      SingularityCyan
hi! link luaFuncArgName  SingularityOrangeItalic
hi! link luaFuncCall     Function
hi! link luaLocal        Keyword
hi! link luaSpecialTable Constant
hi! link luaSpecialValue SingularityCyan

" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
