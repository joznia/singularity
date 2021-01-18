" Singularity Theme: {{{
"
" https://github.com/zenorocha/singularity-theme
"
" Copyright 2016, All rights reserved
"
" Code licensed under the MIT license
" http://zenorocha.mit-license.org
"
" @author Trevor Heins <@heinst>
" @author Éverton Ribeiro <nuxlli@gmail.com>
" @author Derek Sifford <dereksifford@gmail.com>
" @author Zeno Rocha <hi@zenorocha.com>
scriptencoding utf8
" }}}

" Configuration: {{{

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'singularity'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: {{{2

let s:fg        = g:singularity#palette.fg

let s:bglighter = g:singularity#palette.bglighter
let s:bglight   = g:singularity#palette.bglight
let s:bg        = g:singularity#palette.bg
let s:bgdark    = g:singularity#palette.bgdark
let s:bgdarker  = g:singularity#palette.bgdarker

let s:comment   = g:singularity#palette.comment
let s:selection = g:singularity#palette.selection
let s:subtle    = g:singularity#palette.subtle

let s:cyan      = g:singularity#palette.cyan
let s:green     = g:singularity#palette.green
let s:orange    = g:singularity#palette.orange
let s:pink      = g:singularity#palette.pink
let s:purple    = g:singularity#palette.purple
let s:red       = g:singularity#palette.red
let s:yellow    = g:singularity#palette.yellow

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:singularity#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:singularity#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: {{{2

if !exists('g:singularity_bold')
  let g:singularity_bold = 1
endif

if !exists('g:singularity_italic')
  let g:singularity_italic = 1
endif

if !exists('g:singularity_underline')
  let g:singularity_underline = 1
endif

if !exists('g:singularity_undercurl')
  let g:singularity_undercurl = g:singularity_underline
endif

if !exists('g:singularity_inverse')
  let g:singularity_inverse = 1
endif

if !exists('g:singularity_colorterm')
  let g:singularity_colorterm = 1
endif

"}}}2
" Script Helpers: {{{2

let s:attrs = {
      \ 'bold': g:singularity_bold == 1 ? 'bold' : 0,
      \ 'italic': g:singularity_italic == 1 ? 'italic' : 0,
      \ 'underline': g:singularity_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:singularity_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:singularity_inverse == 1 ? 'inverse' : 0,
      \}

function! s:h(scope, fg, ...) " bg, attr_list, special
  let l:fg = copy(a:fg)
  let l:bg = get(a:, 1, ['NONE', 'NONE'])

  let l:attr_list = filter(get(a:, 2, ['NONE']), 'type(v:val) == 1')
  let l:attrs = len(l:attr_list) > 0 ? join(l:attr_list, ',') : 'NONE'

  " Falls back to coloring foreground group on terminals because
  " nearly all do not support undercurl
  let l:special = get(a:, 3, ['NONE', 'NONE'])
  if l:special[0] !=# 'NONE' && l:fg[0] ==# 'NONE' && !has('gui_running')
    let l:fg[0] = l:special[0]
    let l:fg[1] = l:special[1]
  endif

  let l:hl_string = [
        \ 'highlight', a:scope,
        \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
        \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
        \ 'gui=' . l:attrs, 'cterm=' . l:attrs,
        \ 'guisp=' . l:special[0],
        \]

  execute join(l:hl_string, ' ')
endfunction

"}}}2
" Singularity Highlight Groups: {{{2

call s:h('SingularityBgLight', s:none, s:bglight)
call s:h('SingularityBgLighter', s:none, s:bglighter)
call s:h('SingularityBgDark', s:none, s:bgdark)
call s:h('SingularityBgDarker', s:none, s:bgdarker)

call s:h('SingularityFg', s:fg)
call s:h('SingularityFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('SingularityFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('SingularityComment', s:comment)
call s:h('SingularityCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('SingularitySelection', s:none, s:selection)

call s:h('SingularitySubtle', s:subtle)

call s:h('SingularityCyan', s:cyan)
call s:h('SingularityCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('SingularityGreen', s:green)
call s:h('SingularityGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('SingularityGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('SingularityGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('SingularityOrange', s:orange)
call s:h('SingularityOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('SingularityOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('SingularityOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('SingularityOrangeInverse', s:bg, s:orange)

call s:h('SingularityPink', s:pink)
call s:h('SingularityPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('SingularityPurple', s:purple)
call s:h('SingularityPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('SingularityPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('SingularityRed', s:red)
call s:h('SingularityRedInverse', s:fg, s:red)

call s:h('SingularityYellow', s:yellow)
call s:h('SingularityYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('SingularityError', s:red, s:none, [], s:red)

call s:h('SingularityErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('SingularityWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('SingularityInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('SingularityTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('SingularitySearch', s:green, s:none, [s:attrs.inverse])
call s:h('SingularityBoundary', s:comment, s:bgdark)
call s:h('SingularityLink', s:cyan, s:none, [s:attrs.underline])

call s:h('SingularityDiffChange', s:orange, s:none)
call s:h('SingularityDiffText', s:bg, s:orange)
call s:h('SingularityDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: {{{

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:fg, g:singularity_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  SingularityBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr SingularityYellow
hi! link DiffAdd      SingularityGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   SingularityDiffChange
hi! link DiffDelete   SingularityDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     SingularityDiffText
hi! link Directory    SingularityPurpleBold
hi! link ErrorMsg     SingularityRedInverse
hi! link FoldColumn   SingularitySubtle
hi! link Folded       SingularityBoundary
hi! link IncSearch    SingularityOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      SingularityFgBold
hi! link NonText      SingularitySubtle
hi! link Pmenu        SingularityBgDark
hi! link PmenuSbar    SingularityBgDark
hi! link PmenuSel     SingularitySelection
hi! link PmenuThumb   SingularitySelection
hi! link Question     SingularityFgBold
hi! link Search       SingularitySearch
call s:h('SignColumn', s:comment)
hi! link TabLine      SingularityBoundary
hi! link TabLineFill  SingularityBgDarker
hi! link TabLineSel   Normal
hi! link Title        SingularityGreenBold
hi! link VertSplit    SingularityBoundary
hi! link Visual       SingularitySelection
hi! link VisualNOS    Visual
hi! link WarningMsg   SingularityOrangeInverse

" }}}
" Syntax: {{{

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey SingularityRed
  hi! link LspDiagnosticsDefaultInformation SingularityCyan
  hi! link LspDiagnosticsDefaultHint SingularityCyan
  hi! link LspDiagnosticsDefaultError SingularityError
  hi! link LspDiagnosticsDefaultWarning SingularityOrange
  hi! link LspDiagnosticsUnderlineError SingularityErrorLine
  hi! link LspDiagnosticsUnderlineHint SingularityInfoLine
  hi! link LspDiagnosticsUnderlineInformation SingularityInfoLine
  hi! link LspDiagnosticsUnderlineWarning SingularityWarnLine
else
  hi! link SpecialKey SingularitySubtle
endif

hi! link Comment SingularityComment
hi! link Underlined SingularityFgUnderline
hi! link Todo SingularityTodo

hi! link Error SingularityError
hi! link SpellBad SingularityErrorLine
hi! link SpellLocal SingularityWarnLine
hi! link SpellCap SingularityInfoLine
hi! link SpellRare SingularityInfoLine

hi! link Constant SingularityPurple
hi! link String SingularityYellow
hi! link Character SingularityPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier SingularityFg
hi! link Function SingularityGreen

hi! link Statement SingularityPink
hi! link Conditional SingularityPink
hi! link Repeat SingularityPink
hi! link Label SingularityPink
hi! link Operator SingularityPink
hi! link Keyword SingularityPink
hi! link Exception SingularityPink

hi! link PreProc SingularityPink
hi! link Include SingularityPink
hi! link Define SingularityPink
hi! link Macro SingularityPink
hi! link PreCondit SingularityPink
hi! link StorageClass SingularityPink
hi! link Structure SingularityPink
hi! link Typedef SingularityPink

hi! link Type SingularityCyanItalic

hi! link Delimiter SingularityFg

hi! link Special SingularityPink
hi! link SpecialComment SingularityCyanItalic
hi! link Tag SingularityCyan
hi! link helpHyperTextJump SingularityLink
hi! link helpCommand SingularityPurple
hi! link helpExample SingularityGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
