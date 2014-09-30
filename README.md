# Vim tmux syntax

Syntax highlighting for [tmux][tmux] configuration files.

![vim-tmux-syntax in action][screenshot]
*(colorscheme: [base16-flat][base16-colorscheme])*

## Installation

With the most common plugin managers (my personal preference is
[vim-plug][vim-plug]):

``` viml
" vim-plug
Plug 'whatyouhide/vim-tmux-syntax'
" NeoBundle
NeoBundle 'whatyouhide/vim-tmux-syntax'
" Vundle
Plugin 'whatyouhide/vim-tmux-syntax'
```

If you use pathogen, clone the repository:

    git clone https://github.com/whatyouhide/vim-tmux-syntax ~/.vim/bundle

If you don't use a plugin manager, add the path to the cloned repository to the
`runtimepath`:

``` viml
set runtimepath+=/path/to/vim-tmux-syntax
```

## License

&copy; 2014 Andrea Leopardi

[![][wtfpl-logo]][wtfpl]


[vim-plug]: https://github.com/junegunn/vim-plug
[tmux]: http://tmux.sourceforge.net/
[vundle]: https://github.com/gmarik/Vundle.vim
[wtfpl]: http://www.wtfpl.net/
[wtfpl-logo]: http://www.wtfpl.net/wp-content/uploads/2012/12/logo-220x1601.png
[base16-colorscheme]: https://github.com/chriskempson/base16
[screenshot]: http://i.imgur.com/IywCH1R.png "vim-tmux-syntax in action"
