Lucas's Version of Amix's vimrc
-------------------------------

**Philosophy**

I want to create my own vim configuration which is 
**beautiful**, **easy to use**, and **lightweight**.

*This setup is optimized for my personal use cases.* I enjoy writing python modules, building webapps,  
solving random CS puzzles, and blogging in markdown.

**Features**

- Autocomplete on tab (supertab)
- Version control integration (gitgutter)
- Error checking for all major languages (syntastic)
- Consistent 4-space indenting & tabbing
- Remembers & starts on previous line number
- Spacing buffers at top and bottom of page
- Autopanning search (screen moves to found matches)
- Awesome solarized-blue theme

**Installation directions:**

```bash
    git clone https://github.com/codelucas/vimrc ~/.vim_runtime
    sh ~/.vim_runtime/install.sh
```

Note that the directory name `.vim_runtime` is critical.
Please copy and paste the above two lines exactly as shown!

If you are using OSX and your colors are screwed up,
it's due to some terminal configuration setting.

Now we need to install various syntax checking modules
for whatever langauges you enjoy. For example, if you are like me
and enjoy programming in javascript, python, and java:

```bash
    sudo npm install -g jshint        # jshint is a syntax checker for js
    sudo pip install flake8           # flake8 is a python syntax checker
    sudo apt-get install default-jdk  # javac is a compiler for java (syntax checking implied!)
```

Install pip and npm if they are not available with your
respective package managers.

`easy_install pip` and `sudo apt-get install nodejs` did it for me.

Open up either of the `.terminal` theme files in the **osx-pallets** 
folder provided and run it. Then open terminal preferences. 
`Solarized Dark` should be a profile option. Select it and set as 
default. Ensure that the terminals are declared as **xterm-256color**.

I will add more changes later but for now the biggest reason
this was forked was because I want `solarized dark` to be auto
installed without any hassle. 

Also, I'm not super into any of the fancy plugins, but Amix's 
basic setup was **amazing**.

This version installs pathogen for the solarized theme.

Since shine1 defaults to a light beige background, it's advised you toggle
your OSX or Windows terminal background color to be fitting. I had to tweak
the background to be less intense and change the highlight bg to be not beige.

If anything still is broken, refer to 
[osx-solarized](https://github.com/tomislav/osx-terminal.app-colors-solarized) or 
[amix's vim](https://github.com/amix/vimrc)

Please do not hesitate to [contact](http://codelucas.com) me for help.
