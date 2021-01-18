" Palette: {{{

let g:one-theme#palette           = {}
let g:one-theme#palette.fg        = ['#bbc2cf', 253]

let g:one-theme#palette.bglighter = ['#5b6268', 238]
let g:one-theme#palette.bglight   = ['#3f444a', 237]
let g:one-theme#palette.bg        = ['#282c34', 236]
let g:one-theme#palette.bgdark    = ['#1b2229', 235]
let g:one-theme#palette.bgdarker  = ['#1c1f24', 234]

let g:one-theme#palette.comment   = ['#5688af',  61]
let g:one-theme#palette.selection = ['#5b6268', 239]
let g:one-theme#palette.subtle    = ['#73797e', 238]

let g:one-theme#palette.cyan      = ['#46d9ff', 117]
let g:one-theme#palette.green     = ['#98be65',  84]
let g:one-theme#palette.orange    = ['#da8548', 215]
let g:one-theme#palette.pink      = ['#c678dd', 212]
let g:one-theme#palette.purple    = ['#a9a1e1', 141]
let g:one-theme#palette.red       = ['#ff6c6b', 203]
let g:one-theme#palette.yellow    = ['#ecbe7b', 228]

"
" ANSI
"
let g:one-theme#palette.color_0  = '#3f444a'
let g:one-theme#palette.color_1  = '#ff6c6b'
let g:one-theme#palette.color_2  = '#98be65'
let g:one-theme#palette.color_3  = '#ecbe7b'
let g:one-theme#palette.color_4  = '#51afef'
let g:one-theme#palette.color_5  = '#c678dd'
let g:one-theme#palette.color_6  = '#46d9ff'
let g:one-theme#palette.color_7  = '#bbc2cf'
let g:one-theme#palette.color_8  = '#5699af'
let g:one-theme#palette.color_9  = '#ff6655'
let g:one-theme#palette.color_10 = '#99bb66'
let g:one-theme#palette.color_11 = '#ecbe7b'
let g:one-theme#palette.color_12 = '#51afef'
let g:one-theme#palette.color_13 = '#c678dd'
let g:one-theme#palette.color_14 = '#46d8ff'
let g:one-theme#palette.color_15 = '#bfbfbf'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! one-theme#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'one-theme'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
