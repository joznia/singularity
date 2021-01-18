if singularity#should_abort('rst')
    finish
endif

hi! link rstComment                             Comment
hi! link rstTransition                          Comment
hi! link rstCodeBlock                           SingularityGreen
hi! link rstInlineLiteral                       SingularityGreen
hi! link rstLiteralBlock                        SingularityGreen
hi! link rstQuotedLiteralBlock                  SingularityGreen
hi! link rstStandaloneHyperlink                 SingularityLink
hi! link rstStrongEmphasis                      SingularityOrangeBold
hi! link rstSections                            SingularityPurpleBold
hi! link rstEmphasis                            SingularityYellowItalic
hi! link rstDirective                           Keyword
hi! link rstSubstitutionDefinition              Keyword
hi! link rstCitation                            String
hi! link rstExDirective                         String
hi! link rstFootnote                            String
hi! link rstCitationReference                   Tag
hi! link rstFootnoteReference                   Tag
hi! link rstHyperLinkReference                  Tag
hi! link rstHyperlinkTarget                     Tag
hi! link rstInlineInternalTargets               Tag
hi! link rstInterpretedTextOrHyperlinkReference Tag
hi! link rstTodo                                Todo
