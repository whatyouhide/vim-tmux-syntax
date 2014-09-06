" Tmux configuration file syntax
" Language: tmux-conf
" Maintainer: Andrea Leopardi <an.leopardi@gmail.com>
" Version: 0.1
" Last Change: Sep 2nd 2014

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
syntax keyword tmuxCommand display
syntax keyword tmuxFlag -g -r -s -t

" Matches.
syntax match tmuxNumber '\<\d\+\>'
syntax match tmuxComment '#.*'
syntax match tmuxEnvVariable '\$[A-Z_]\+' contained

" Regions.
syntax region tmuxString start=+"+ end=+"+ skip='\\"' contains=tmuxEnvVariable
syntax region tmuxString start=+'+ end=+'+ skip="\\'" contains=tmuxEnvVariable


" Highlighting.
highlight def link tmuxCommand Keyword
highlight def link tmuxFlag Character
highlight def link tmuxNumber Number
highlight def link tmuxComment Comment
highlight def link tmuxString String
highlight def link tmuxEnvVariable Title


" Set the b:current_syntax variable to prevent re-defining the syntax.
let b:current_syntax = 'tmux-conf'
