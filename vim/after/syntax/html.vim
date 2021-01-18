if singularity#should_abort('html')
    finish
endif

hi! link htmlTag         SingularityFg
hi! link htmlArg         SingularityGreenItalic
hi! link htmlTitle       SingularityFg
hi! link htmlH1          SingularityFg
hi! link htmlSpecialChar SingularityPurple
