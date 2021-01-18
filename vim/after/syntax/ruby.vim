if singularity#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          SingularityOrangeItalic
hi! link rubyBlockParameter         SingularityOrangeItalic
hi! link rubyCurlyBlock             SingularityPink
hi! link rubyGlobalVariable         SingularityPurple
hi! link rubyInstanceVariable       SingularityPurpleItalic
hi! link rubyInterpolationDelimiter SingularityPink
hi! link rubyRegexpDelimiter        SingularityRed
hi! link rubyStringDelimiter        SingularityYellow
