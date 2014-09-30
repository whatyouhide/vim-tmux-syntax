" Tmux configuration file syntax
" Language: tmux-conf
" Maintainer: Andrea Leopardi <an.leopardi@gmail.com>
" Version: 0.1
" Last Change: Sep 2014

" Exit early if there's already a b:current_syntax variable.
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif


" Keywords.
syntax keyword tmuxCommand source source-file
syntax keyword tmuxCommand bind bind-key unbind unbind-key
syntax keyword tmuxCommand set-option set
syntax keyword tmuxCommand set-window-option setw
syntax keyword tmuxCommand if if-shell
syntax keyword tmuxCommand display run run-shell
syntax keyword tmuxCommand new new-window new-session
syntax keyword tmuxCommand new-window new-session
syntax keyword tmuxFlag -g -r -s -t

" Matches.
syntax match tmuxNumber '\<\d\+\>'
syntax match tmuxComment '#.*'
syntax match tmuxEnvVariable '\$[a-zA-Z_]\+' contained containedin=tmuxString

" Regions.
syntax region tmuxString start=+"+ end=+"+ skip='\\"'
syntax region tmuxString start=+'+ end=+'+ skip="\\'"
syntax region tmuxInterpolatedShellCommand matchgroup=tmuxInterpolationDelimiter start='#(' end=')' containedin=tmuxString
syntax region tmuxInterpolatedStyle matchgroup=tmuxInterpolationDelimiter start='#\[' end='\]' containedin=tmuxString
syntax region tmuxInterpolatedCommand matchgroup=tmuxInterpolationDelimiter start='#{' end='}' containedin=tmuxString


" Highlighting.
highlight def link tmuxCommand Keyword
highlight def link tmuxFlag Boolean
highlight def link tmuxNumber Number
highlight def link tmuxComment Comment
highlight def link tmuxString String
highlight def link tmuxEnvVariable Title
highlight def link tmuxInterpolatedShellCommand tmuxString
highlight def link tmuxInterpolatedStyle tmuxString
highlight def link tmuxInterpolatedCommand tmuxString
highlight def link tmuxInterpolationDelimiter Function


" Set the b:current_syntax variable to prevent re-defining the syntax.
let b:current_syntax = 'tmux-conf'
