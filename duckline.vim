
function! RedrawModeColors(mode) " {{{
  " Normal mode
  if a:mode == 'n'
    hi MyStatuslineAccent guifg=#ff0000 gui=none guibg=#262626 ctermfg=196 ctermbg=none
    hi MyStatuslineFilename guifg=#262626 gui=none guibg=#ff0000 ctermfg=000 ctermbg=196
    hi MyStatuslineAccentBody guibg=#ff0000 gui=none guifg=#262626 ctermfg=000 ctermbg=196
  " Insert mode

  elseif a:mode == 'i'
    hi MyStatuslineAccent guifg=#ff0000 gui=none guibg=none
    hi MyStatuslineFilename guifg=#000000 gui=none guibg=#ff0000
    hi MyStatuslineAccentBody guibg=#ff0000 gui=none guifg=#f0f0f0 ctermfg=110 ctermbg=196

  elseif a:mode == 'R'
    hi MyStatuslineAccent guifg=#ff0000 gui=none guibg=none
    hi MyStatuslineFilename guifg=#000000 gui=none guibg=#ff0000
    hi MyStatuslineAccentBody guibg=#ff0000 gui=none guifg=#000000
  " Visual mode
  elseif a:mode == 'v' || a:mode == 'V' || a:mode == '^V'
    hi MyStatuslineAccent guifg=#ff0000 gui=none guibg=none
    hi MyStatuslineFilename guifg=#000000 gui=none guibg=#FF0000
    hi MyStatuslineAccentBody guibg=#000000 gui=none guifg=#FF0000
  endif

  return ''
endfunction
" }}}

function! SetFiletype(filetype) " {{{
  if a:filetype == ''
      return '-'
  else
      return a:filetype
  endif
endfunction
" }}}

set statusline=%{RedrawModeColors(mode())}
" Left side items
" =======================
set statusline+=%#MyStatuslineAccent#
set statusline+=%#MyStatuslineAccentBody#\ 
" Filename
set statusline+=%#MyStatuslineFilename#\ %.20f
set statusline+=%#MyStatuslineSeparator#\ 
" Git Status
set statusline+=%=
" Line and Column
set statusline+=%#MyStatuslineLineCol#
set statusline+=%#MyStatuslineLineColBody#惡\ %2l
set statusline+=\/%#MyStatuslineLineColBody#%2c
set statusline+=%#MyStatuslineLineCol#
" Padding
set statusline+=\ 
" Current scroll percentage and total lines of the file
"set statusline+=%#MyStatuslinePercentage#
"set statusline+=%#MyStatuslinePercentageBody#☰\ %P
"set statusline+=\/\%#MyStatuslinePercentageBody#%L
"set statusline+=%#MyStatuslinePercentage#
"set statusline+=\ 
" Filetype
set statusline+=%#MyStatuslineFiletype#
set statusline+=%#MyStatuslineFiletypeBody#%{SetFiletype(&filetype)}
set statusline+=%#MyStatuslineFiletype#


" Setup the colors
hi StatusLine          guifg=#000000       guibg=#FF0000  gui=NONE
hi StatusLineNC        guifg=#000000    guibg=#FF0000     gui=bold

hi MyStatuslineSeparator guifg=#ff0000 gui=none guibg=none ctermfg=196 ctermbg=none

hi MyStatuslineModified  guifg=#000000 gui=none guibg=none
hi MyStatuslineFiletype guibg=NONE gui=NONE guifg=#ff0000 ctermfg=196 ctermbg=none
hi MyStatuslineFiletypeBody guifg=#000000 gui=bold guibg=#ff0000 ctermfg=000 ctermbg=196

hi MyStatuslinePercentage guifg=#585e74 gui=NONE guibg=NONE
hi MyStatuslinePercentageBody guibg=#000000 gui=none guifg=#ff0000

hi MyStatuslineLineCol guifg=#ff0000 gui=NONE guibg=NONE ctermfg=196 ctermbg=none
hi MyStatuslineLineColBody guibg=#ff0000 gui=none guifg=#000000 ctermfg=000 ctermbg=196

hi VertSplit guibg=#262626 guifg=#262626
