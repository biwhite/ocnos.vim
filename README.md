white
ocnos.vim
=========

Vim syntax for OcNOS switches and routers (`show run` or `show start`) files.


Author
======

[biwhite](https://github.com/biwhite) - forked from Cisco syntax from [momota](https://github.com/momota)

License
=======

[MIT](http://opensource.org/licenses/MIT)


Installation
============

Manually
--------

1. Put all files under $VIM.

Pathogen
--------

1. Install with the following command.

        git clone https://github.com/biwhite/ocnos.vim ~/.vim/bundle/ocnos.vim

[NeoBundle](https://github.com/Shougo/neobundle.vim)
----------------------------------------------------

1. Add the following configuration to your `.vimrc`.

        NeoBundle 'biwhite/ocnos.vim'

2. Install with `:NeoBundleInstall`.


Usage
=====

Limited auto-detection is available based on file contents

Files ending with `*.ocnos` will automatically receive the highlighting

Or execute `:set ft=ocnos`

Some syntax folding available with `:set foldmethod=syntax`

