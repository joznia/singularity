if singularity#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown {{{1
  hi! link htmlBold       SingularityOrangeBold
  hi! link htmlBoldItalic SingularityOrangeBoldItalic
  hi! link htmlH1         SingularityPurpleBold
  hi! link htmlItalic     SingularityYellowItalic
  hi! link mkdBlockquote  SingularityYellowItalic
  hi! link mkdBold        SingularityOrangeBold
  hi! link mkdBoldItalic  SingularityOrangeBoldItalic
  hi! link mkdCode        SingularityGreen
  hi! link mkdCodeEnd     SingularityGreen
  hi! link mkdCodeStart   SingularityGreen
  hi! link mkdHeading     SingularityPurpleBold
  hi! link mkdInlineUrl   SingularityLink
  hi! link mkdItalic      SingularityYellowItalic
  hi! link mkdLink        SingularityPink
  hi! link mkdListItem    SingularityCyan
  hi! link mkdRule        SingularityComment
  hi! link mkdUrl         SingularityLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: {{{1
  hi! link markdownBlockquote        SingularityCyan
  hi! link markdownBold              SingularityOrangeBold
  hi! link markdownBoldItalic        SingularityOrangeBoldItalic
  hi! link markdownCodeBlock         SingularityGreen
  hi! link markdownCode              SingularityGreen
  hi! link markdownCodeDelimiter     SingularityGreen
  hi! link markdownH1                SingularityPurpleBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            SingularityYellowItalic
  hi! link markdownLinkText          SingularityPink
  hi! link markdownListMarker        SingularityCyan
  hi! link markdownOrderedListMarker SingularityCyan
  hi! link markdownRule              SingularityComment
  hi! link markdownUrl               SingularityLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
