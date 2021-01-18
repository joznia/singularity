if singularity#should_abort('css')
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        SingularityPink
hi! link cssAttributeSelector SingularityGreenItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             SingularityPink
hi! link cssProp              SingularityCyan
hi! link cssPseudoClass       SingularityPink
hi! link cssPseudoClassId     SingularityGreenItalic
hi! link cssUnitDecorators    SingularityPink
hi! link cssVendor            SingularityGreenItalic
