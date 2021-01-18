if singularity#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    SingularityGreen
hi! link diffNewFile SingularityRed

hi! link diffAdded   SingularityGreen
hi! link diffLine    SingularityCyanItalic
hi! link diffRemoved SingularityRed

