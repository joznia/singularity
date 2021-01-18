" Name:     Singularity vim colorscheme
" Author:   Joznia (jz.joznia@protonmail.com)
"           (adapted from the Dracula theme (draculatheme.com))
" URL:      http://github.com/joznia/singularity
" License:  OSI approved MIT license (see end of this file)
" Created:  In neon dreams
" Modified: 2021 Jan 18
"
" ---------------------------------------------------------------------
" COLOR VALUES
" ---------------------------------------------------------------------
" Hex values are canonical because it's what's provided by YG. The VSCode
" version of the colorscheme provides 8 terminal colors, a terminal bg and fg,
" and an additional 24 colors across the app (for a total of 34 colors). I have
" selected from the additional colors to fill out 16 ANSI colors for a
" 256-color environment, but 24-bit color is what the authors had in mind.
"
" You can use the following table to fill out your terminal settings:
"
" SINGULARITY HEX      XTERM/HEX    X11 Name
" ---------- -------  -----------  ---------------------
" black      #1b2229  235 #262626  Grey15
" brblack    #23272e  239 #708090  SlateGray
" white      #bbc2cf  254 #b0c4de  LightSteelBlue
" brwhite    #ffffff  244 #ffffff  White                
" cyan       #46d9ff   30 #008787  Turquoise4
" brcyan     #46d9fa   80 #5fd7d7  MediumTurquoise
" blue       #51afef   69 #5f87ff  CornflowerBlue
" brblue     #51afea   81 #87cefa  LightSkyBlue
" red        #ff6c6b    9 #ff0000  Red
" brred      #ff6c6c  211 #ff87af  PaleVioletRed1
" magenta    #c678dd  125 #af005f  DeepPink4
" brmagenta  #c678de  204 #db7093  PaleVioletRed
" yellow     #da8548  172 #cd853f  Peru/Orange3
" bryellow   #ecbe7b  180 #deb887  BurlyWood/Tan
" green      #98be65  119 #90ee90  LightGreen
" brgreen    #98be66   82 #7cfc00  LawnGreen/Chartreuse2

" Colorscheme initialization
" " ---------------------------------------------------------------------
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "singularity"

" GUI hexadecimal palettes
" ---------------------------------------------------------------------
"
" Neovim terminal colours
if has("nvim")
  let g:terminal_color_0 =  "#1D252C" " black
  let g:terminal_color_1 =  "#FF6C6C" " red
  let g:terminal_color_2 =  "#98BE65" " green
  let g:terminal_color_3 =  "#DA8548" " orangelt
  let g:terminal_color_4 =  "#51AFEF" " blue
  let g:terminal_color_5 =  "#C678DD" " reddk
  let g:terminal_color_6 =  "#46D9FF" " cyan
  let g:terminal_color_7 =  "#718CA1" " white
  let g:terminal_color_8 =  "#333F4A" " brblack
  let g:terminal_color_9 =  "#FF6C6C" " brred
  let g:terminal_color_10 = "#98BE65" " brgreen
  let g:terminal_color_11 = "#ECBE7B" " brorangelt
  let g:terminal_color_12 = "#51AFEA" " brblue
  let g:terminal_color_13 = "#C678DD" " brreddk
  let g:terminal_color_14 = "#46D9FA" " brcyan
  let g:terminal_color_15 = "#BBC2CF" " brwhite
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_15
  if &background == "light"
    let g:terminal_color_background = g:terminal_color_15
    let g:terminal_color_foreground = g:terminal_color_8
  endif
elseif has('terminal')
  let g:terminal_ansi_colors = [
        \"#1D252C",
        \"#FF6C6C",
        \"#98BE65",
        \"#DA8548",
        \"#51AFEF",
        \"#C678DD",
        \"#46D9FF",
        \"#718CA1",
        \"#333F4A",
        \"#FF6C6C",
        \"#98BE65",
        \"#ECBE7B",
        \"#51AFEA",
        \"#C678DD",
        \"#46D9FA",
        \"#BBC2CF",
        \ ]
endif

" Prefer neovim termguicolors, but support gui_running
if (has('termguicolors') && &termguicolors) || has('gui_running')

" Basic highlighting"{{{
" ---------------------------------------------------------------------
" note that link syntax, to avoid duplicate configuration, doesn't work with the
" exe compiled formats

hi! Normal         guifg=#BBC2CF guibg=#1D252C

hi! Comment        gui=italic guifg=#23272E guibg=None
"   *Comment       any comment

hi! Constant       guifg=#c678de guibg=None
"   *Constant        this groups is overwritten by type
"    Character       a character constant: 'c', '\n'
"    Number          a number constant: 234, 0xff
"    Boolean         a boolean constant: TRUE, false
"    Float           a floating point constant: 2.3e10

hi! String         guifg=#68A1F0 guibg=None
"   String          a string constant: "this is a string"

hi! Identifier     guifg=#718CA1 guibg=None
"   *Identifier      any variable name
"
hi! Function       guifg=#46D9FA guibg=None
"    Function        function name (also: methods for classes)
"
hi! Statement      guifg=#51afea guibg=None
"   *Statement       any statement
"    Conditional     if, then, else, endif, switch, etc.
"    Repeat          for, do, while, etc.
"    Label           case, default, etc.
"    Operator        "sizeof", "+", "*", etc.
"    Keyword         any other keyword
"    Exception       try, catch, throw

" VSCode singularity appears to make no reference to preproc
hi! PreProc        guifg=#51afea guibg=None
"   *PreProc         generic Preprocessor
"    Include         preprocessor #include
"    Define          preprocessor #define
"    Macro           same as Define
"    PreCondit       preprocessor #if, #else, #endif, etc.

hi! Type           guifg=#46D9FF guibg=None
"   *Type            int, long, char, etc.
"    StorageClass    static, register, volatile, etc.
"    Structure       struct, union, enum, etc.
"    Typedef         A typedef

hi! Special       guifg=#718CA1 guibg=None
"   *Special         any special symbol
"    SpecialChar     special character in a constant
"    Tag             you can use CTRL-] on this
"    Delimiter       character that needs attention
"    SpecialComment  special things inside a comment
"    Debug           debugging statements

hi! Underlined     gui=underline guifg=#51afef guibg=None
"   *Underlined      text that stands out, HTML links

hi! Ignore         gui=None guifg=None guibg=None
"   *Ignore          left blank, hidden  |hl-Ignore|

hi! Error          gui=undercurl guifg=#c678de guibg=None
"   *Error           any erroneous construct

hi! Todo           gui=None guifg=None guibg=None
"   *Todo            anything that needs extra attention; mostly the
"                    keywords TODO FIXME and XXX
"
"}}}

" Extended highlighting "{{{
" ---------------------------------------------------------------------
"  TODO Improve diff settings
"  TODO Add linenr gutter border
"hi! ColorColumn    .s:fmt_none   .s:fg_none   .s:bg_base02
"hi! Conceal        .s:fmt_none   .s:fg_blue   .s:bg_none
hi! Cursor         guifg=#953B01 guibg=#77c3fa
hi! link iCursor Cursor
hi! link lCursor Cursor
"hi! CursorColumn   .s:fmt_none   .s:fg_none   .s:bg_base02
hi! CursorLine     guifg=None guibg=#28313a
hi! CursorLineNR   gui=None guifg=#23272e guibg=None
hi! DiffAdd        guifg=None guibg=#2A462C
hi! link DiffChange DiffAdd
hi! DiffDelete     guifg=None guibg=#562D32
"hi! DiffText       .s:fmt_bold   .s:fg_base01  .s:bg_none
"hi! Directory      .s:fmt_none   .s:fg_green  .s:bg_none
hi! ErrorMsg       gui=None guifg=#c678de guibg=None
hi! EndOfBuffer    gui=None guifg=#1D252C guibg=None
"hi! FoldColumn     .s:fmt_none   .s:fg_base0   .s:bg_base02
"hi! Folded         .s:fmt_undb   .s:fg_base01  .s:bg_base02  .s:sp_base03
hi! IncSearch      gui=None guifg=None guibg=#707B87
hi! LineNr         gui=None guifg=#23272E guibg=None
hi! MatchParen     gui=None guifg=None guibg=#4e6e99
"hi! ModeMsg        .s:fmt_none   .s:fg_blue   .s:bg_none
"hi! MoreMsg        .s:fmt_none   .s:fg_blue   .s:bg_none
"hi! NonText        .s:fmt_none   .s:fg_base01 .s:bg_none
hi! Pmenu          gui=None guifg=#BBC2CF guibg=#15232d
hi! PmenuSbar      gui=None guifg=#2B3945 guibg=#15232d
hi! PmenuSel       gui=None guifg=None    guibg=#28323a
"hi! PmenuThumb     .s:fmt_none   .s:fg_base0  .s:bg_base03
"hi! Question       .s:fmt_bold   .s:fg_cyan   .s:bg_none
hi! Search         gui=None guifg=None guibg=#3A434C
hi! link SignColumn Normal
"hi! SpecialKey     .s:fmt_none   .s:fg_base01 .s:bg_none
hi! SpellBad       gui=undercurl guisp=#c678de
hi! link SpellCap SpellBad
hi! link SpellLocal SpellBad
hi! link SpellRare SpellBad
hi! StatusLine     gui=None guifg=#bbc2cf guibg=#1b2229
hi! link StatusLineNC StatusLine
hi! TabLine        gui=underline guifg=#bbc2cf guibg=#1b2229 guisp=#1b2229
hi! TabLineFill    gui=underline guifg=None guibg=#1b2229 guisp=#1b2229
hi! TabLineSel     gui=None guifg=#fff guibg=#1D252C
hi! TermCursor      gui=None guifg=#46D9FF guibg=#008B94
hi! Title          gui=bold guifg=#46D9FA guibg=None
hi! VertSplit      gui=None guifg=#1D252C guibg=None
hi! link Visual CursorLine
"hi! VisualNOS      .s:fmt_stnd   .s:fg_none    .s:bg_base02 .s:fmt_revb
"hi! WarningMsg     .s:fmt_bold   .s:fg_red     .s:bg_none
hi! link WildMenu PmenuSel

hi Terminal        guifg=#BBC2CF guibg=#1b2229
autocmd TermOpen * setlocal winhighlight=Normal:Terminal

endif
