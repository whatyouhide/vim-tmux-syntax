" Tmux configuration file syntax
" Language: tmux-conf
" Maintainer: Andrea Leopardi <an.leopardi@gmail.com>
" Version: 0.1
" Last Change: Sep 2nd 2014

if version < 600
  source <sfile>:p:h/conf.vim
else
  runtime! syntax/conf.vim
  unlet b:current_syntax
endif

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax keyword command source source-file
syntax keyword command bind bind-key unbind unbind-key
syntax keyword command set-option set
syntax keyword command set-window-option setw
syntax keyword command display

syntax keyword flag -g -r -s -t

highlight link command Keyword
highlight link flag Character

let b:current_syntax = 'tmux-conf'
