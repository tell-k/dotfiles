==============================
My Dot Files
==============================

Initial Setting
------------------

::

 $ git clone ssh://hg@bitbucket.org/tell_k/dotfiles
 $ cd dotfiles
 $ make setup
 $ make install_vim_plugins

Optional Setting
-------------------

* create dictionary file for php

:: 
 
 $ make create_php_dict

* create dictionary file for perl

:: 
 
 $ make create_perl_dict

Help 
-----

:: 
 
 $ make help
 Please use `make <target>' where <target> is one of
 setup               to setup initialize.
 install_vim_vundle  to install vundle vim plugin.
 install_vim_plugins to install vim plugins by vundle vim.
 create_symlinks     to create symbolic links.
 remove_symlinks     to remove symbolic links.
 create_php_dict     to create dictionary file for php.
 create_perl_dict    to create dictionary file for perl.

Author
----------------------------------

tell-k <ffk2005@gmail.com>
