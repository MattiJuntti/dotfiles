hi clear

if version > 580
  if exists("syntax_on")
    syntax reset
  endif
endif

let colors_name="monochromicon"
set background=dark
set t_co=256

hi Comment         guifg=#FFFFFF    guibg=#000000    ctermfg=245    ctermbg=237    gui= NONE    cterm=NONE
hi Constant        guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Cursor          guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi CursorColumn    guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi CursorLine      guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=239    gui= NONE    cterm=NONE
hi CursorLineNr    guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=239    gui= NONE    cterm=bold
hi DiffAdd         guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi DiffChange      guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi DiffDelete      guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi DiffText        guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Directory       guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Error           guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Folded          guifg=#FFFFFF    guibg=#000000    ctermfg=12     ctermbg=237    gui= NONE    cterm=NONE
hi Function        guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Identifier      guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Ignore          guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi IncSearch       guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Label           guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi LineNr          guifg=#FFFFFF    guibg=#000000    ctermfg=245    ctermbg=237    gui= NONE    cterm=NONE
hi MatchParen      guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=12     gui= NONE    cterm=NONE
hi ModeMsg         guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi MoreMsg         guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi NonText         guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Normal          guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Number          guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Pmenu           guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=238   gui= NONE    cterm=NONE
hi PmenuSbar       guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi PmenuSel        guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=4      gui= NONE    cterm=NONE
hi PmenuThumb      guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi PreProc         guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Search          guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=2      gui= NONE    cterm=BOLD
hi SignColumn      guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Special         guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi SpecialKey      guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Statement       guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi StatusLine      guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi StatusLineNC    guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi StorageClass    guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi String          guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Structure       guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi TabLine         guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi TabLineFill     guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi TabLineSel      guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=4      gui= NONE    cterm=BOLD
hi Title           guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Todo            guifg=#FFFFFF    guibg=#000000    ctermfg=245    ctermbg=237    gui= NONE    cterm=BOLD
hi Type            guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi TypeDef         guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Underlined      guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi VertSplit       guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi Visual          guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=4      gui= NONE    cterm=NONE
hi VisualNOS       guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi WarningMsg      guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
hi WildMenu        guifg=#FFFFFF    guibg=#000000    ctermfg=255    ctermbg=237    gui= NONE    cterm=NONE
