# VimConfiguration

##  Features

Technically this vim configuration is for python user, because that's the language I use most. I'll add its support for C as soon as possible.

For now it enables you:

* basic coding toolkits, like line number, syntax highlighting, auto indentation and I it also replaces all the tabs in your source file to spaces. It also shows cursor line and cursor column, which enables you find bugs more easily.

* generate python header automatically:

   ```python
   #!/usr/bin/env python
   # -*- encoding:utf-8 -*-
   ```

   and also shell header:

   ```shell
   #!/usr/bin/sh
   ```
   
   You can write your own header by rewriting .vimrc file.

* Auto-compelte support.
   YouCompleteMe is a decent plugin which can auto-complete your code and boost your efficiency. 

* Ctags helps you local the definition of a choosen function.
   
## How to use

1. Install Git
    
   for Linux: `$ sudo apt-get install git`
   
   for Mac OSX:
   
   install brew first and then: `$ brew install git`

2. Setup Vundle
        
   `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

3. Copy this .vimrc file to your home directory:
   
   ```bash
   $ git clone https://github.com/Rafael-Cheng/VimConfiguration.git ~/vim
   $ cp ~/vim/.vimrc ~
   ```

4. Launch Vim and run `:PluginInstall`
   
   It will take sometime to download YouCompleteMe. Be patient.

5. Install YouCompleteMe

   You may need to install CMake before installing YouCompleteMe.
   
   ```bash
   $ sudo apt-get install build-essential cmake
   ```
   
   Then install YouCompleteMe.
   
   ```bash
   $ cd ~/.vimrc/bundle/YouCompleteMe
   $ ./install.py
   ```
   If you want to compile YouCompleteMe semantic support for C-family languages:

   ```bash
   $ cd ~/.vimrc/bundle/YouCompleteMe
   $ ./install.py --Clang-completer
    ```
6. Install Ctags

   for Mac OSX: `$ brew install ctags`
   
   for Linux: `$sudo apt-get install ctags`
   
   create tags file at the directory you want to search: 
   
   ```bash
   $ cd path/you/want/to/add/tags/in
   $ ctags -R *
   ```
   Add your path to .vimrc
   set tags+=replace/by/your/path


## Links

Vim: https://github.com/vim/vim

Vundle: https://github.com/VundleVim/Vundle.vim

YouCompleteMe: https://github.com/Valloric/YouCompleteMe

Ctags: https://github.com/universal-ctags/ctags

## License

GNU General Public License
