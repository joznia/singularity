if singularity#should_abort('yaml')
    finish
endif

hi! link yamlAlias           SingularityGreenItalicUnderline
hi! link yamlAnchor          SingularityPinkItalic
hi! link yamlBlockMappingKey SingularityCyan
hi! link yamlFlowCollection  SingularityPink
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         SingularityPink
hi! link yamlPlainScalar     SingularityYellow

