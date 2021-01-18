if singularity#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       SingularityRed

" Builtin functions
hi! link perlOperator            SingularityCyan
hi! link perlStatementFiledesc   SingularityCyan
hi! link perlStatementFiles      SingularityCyan
hi! link perlStatementFlow       SingularityCyan
hi! link perlStatementHash       SingularityCyan
hi! link perlStatementIOfunc     SingularityCyan
hi! link perlStatementIPC        SingularityCyan
hi! link perlStatementList       SingularityCyan
hi! link perlStatementMisc       SingularityCyan
hi! link perlStatementNetwork    SingularityCyan
hi! link perlStatementNumeric    SingularityCyan
hi! link perlStatementProc       SingularityCyan
hi! link perlStatementPword      SingularityCyan
hi! link perlStatementRegexp     SingularityCyan
hi! link perlStatementScalar     SingularityCyan
hi! link perlStatementSocket     SingularityCyan
hi! link perlStatementTime       SingularityCyan
hi! link perlStatementVector     SingularityCyan

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd SingularityRed
endif

" Signatures
hi! link perlSignature           SingularityOrangeItalic
hi! link perlSubPrototype        SingularityOrangeItalic

" Hash keys
hi! link perlVarSimpleMemberName SingularityPurple
