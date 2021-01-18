if singularity#should_abort('tex')
    finish
endif

hi! link texBeginEndName  SingularityOrangeItalic
hi! link texBoldItalStyle SingularityOrangeBoldItalic
hi! link texBoldStyle     SingularityOrangeBold
hi! link texInputFile     SingularityOrangeItalic
hi! link texItalStyle     SingularityYellowItalic
hi! link texLigature      SingularityPurple
hi! link texMath          SingularityPurple
hi! link texMathMatcher   SingularityPurple
hi! link texMathSymbol    SingularityPurple
hi! link texRefZone       SingularityBgDarker
hi! link texSpecialChar   SingularityPurple
hi! link texSubscripts    SingularityPurple
hi! link texTitle         SingularityFgBold
