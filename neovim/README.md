# Notes [Neovim as a PHP and JavaScript IDE](https://laracasts.com/series/neovim-as-a-php-ide)

<pre>
- 02
    Install neovim - brew install neovim
    nvim to open Neovim
    Make an alias:
        vim ~/.zshrc
        Append 'alias vim=nvim'
        source ~/.zshrc
    yy - yanking the whole line
    h,j,k,l - left, down, up, right
    v - Visual mode
    <SHIFT>-v - Visual line mode
    <CTRL>-v - Visual block mode
    o - To move diagonally inside a visual block
    O - To move horizontally
    Prepend - Select block, <SHIFT>-i, insert text, <ESC>
    $ - End of the line
    Append - Select block, $, <SHIFT>-a, insert text, <ESC>
    : - Command mode
    :w <File name>
    :q - Quit file
    :q! - Forcibly quit file (possibly dirty)
    Visual mode - <CTRL>-v, then <SHIFT>-i will insert but it's not working for <SHIFT>-v combination

- 03
    :e <filename> to open/create a file in neovim
    :enew to create a new file

    :ls to list files
    :b <buffer number> to choose file [If we open multiple file in a single buffer]
    <CTRL>-6 to toggle between recent two buffers

    :split/:sp to split your screen [horizontally]
    :q to close a split screen
    :vsplit/:vs for vertical split
    <SHIFT>-a to append to the line
    <CTRL>-w, then <h,j,k,l> to switch buffer
    :tabnew for new tab
    :tabp to go the previous tab
    :wqa - write and quit all
    :wa - write all
    :qa - quit all

- 04
    :set number
    <by default [jk] move between lines instead of wrapped line>
    <SHIFT>-g to last line
    gg to first line
    <line number>-gg / <line-number>-<SHIFT>-g
    w to move between words <cursor will be at the begining of the next word> | b is the opposite command
    w will treat [,] as separate word, to jump to next ascii word use <SHIFT>-w | <SHIFT>-b is the opposite command
    0 - to the first column <it won't consider space> | ^ to the first non-whitespace character
    $ - to the last column of the line
    u - to undo
    <CTRL>-r - to redo
    f-<character> to jump to the specific character, ; to the next match, , to the previous match
    t-<character> until to the specific character
    /<specific word> [Enter], n to the next match, <SHIFT>-n to the previous, :nohlsearch/:noh for no highlight
    Cursor in any character of a word, then <SHIFT>-a/* key will search the word, n to the next, <SHIFT>-n to the previous
    e to the end of the word, then instead of i press a to append after the last character of the word
    % will toggle between parentheses
    v to visual mode, then % will highlight the word between parenthesis
    <gg, <SHIFT>-v, <SHIFT>-g>
    <SHIFT>-i to insert a the begining of the line

    x - delete one character
    dw - delete one word<without puntuation>, . will repeat the last action
    d<SHIFT>w - delete one word with puntuation
    d^ to delete start to cursor of a line
    d$/<SHIFT>-d to delete cursor to end of a line
    dt, - to delete up until comma
    dd - to delete a full line
    4dd - to delete four line
    cw - delete current word and change to insert mode
    cc = to change the entire line
    <SHIFT>-c from cursor position to end of the line
    yw - yank word
    yy - yank whole line
    p - put the yanked character
    <SHIFT>-p to paste above the current line
    o to new line after current line and change to insert line, <SHIFT>-o to the above
    iw - select word when inside a word, aw - select word around the word (consider space if present)
    diw/daw - to delete word when inside a word
    iW/aW - to consider puntuation
    i[parenthesis] - to consider parenthesis
    <CTRL>-o - to go back to previous line | vim remembers even if we close our current vim session
    <CTRL>-i - to go to the next line | mnemonic in/out
    :Tutor

- 07
    Install tmux using command `brew install tmux` and after installation, use tmux to start the program
    <CTRL>-b c - to create new window 
             <number> - window number to switch between windows 
             n - next window 
             p - previous window
             % - split into two vertical pane 
	     Arrow keys - to select between panes
             : - command prompt for tmux 
	     :new-session -s <session name>
             s - show list of sessions [<ESC> to escape the list windows]
	     s -> Arrow keys - To select between sessions
             d - to detach a session [Executing tmux should open the last session but it creates a new session; same with closing the terminal window]
             x - to close a pane 

    <CTRL>-d/exit will close the window 
    tmux kill-server will kill all the session 
    "ls -lash" will also include soft linked files/directories

-08
    - nvim/init.lua - entry point of configuration
    - nanotee/nvim-lua-guide 
    - cgn 
    - nvim-lua/kickstart.nvim 

-09
    - :source/:so will execute the current file and reload nvim
    - :help <keyword>, :q to quit the help buffer

-10
    - Alt - k mapping doesn't work. Maybe it conflicts with other mapping?

-11
    - Most popular package manager in nvim in packer.nvim 
    - '=' to automatically manage indentation
    - PackerSync 
    - tpope/vim-commentary : gcc to comment/uncomment

-12 
    - <CTRL>-u/<CTRL>-d - up/down by page
    - vim-surround
    	cs ' " - to change from ' to "
	or generally cs <current tag> <change tag>
	dst - to delete surrounding tag
	ds' - to delete surrounding quote
    - vim-eunuch
    - vim-unimpaired
    - vim-sleuth
    - vim-repeat
    - vim-polyglot
    - vim-tmux-navigator
    	- Doesn't transition smoothly in my setup. Need to recheck.
	- :only will kill all the buffer except the active buffer.
    - vim-lastplace
    - vim-visual-star-search
    - vim-heritage
    - vim-textobj-xmlattr
    	vix,vax - to visually select inside/around the text for xml attributes
	[doesn't work with current setup; need to recheck]
    - vim-rooter
    - nvim-autopairs
    - neoscroll.nvim
    - bufdelete.nvim
        Instead of deleting buffer window, it will just delete the last buffer and go back to the previous buffer
    - splitjoin.vim
    	gS - to split, gJ - to join back
    - vim-pasta
    - :bdelete to buffer delete 
    - :e will repoen the file

    Vim Commentary 
    - gcc | single line 
    - gc<Motion>
    - <Visual><Motion><gcc>
    - :Start line, End lineCommentary

-13
    - :colorscheme <scheme name>
    - :colorscheme default | back to default 
    - :highlight
    - :hi(short of :highlight) <Highlight type> guifg/guisp/...
    - :PackerCompile to compile lua file
    - :PackerClean to clean commented out package 

-14
    - :Telescope
    - :Telescope <command>[Ex. find_files]
    - Press <ESC> to be in normal mode in Telescope and another <ESC> to quit it 
    - :NvimTreeOpen 
        - Press "a" will pre-fill the full path 
    - Install rg command for ripgrep (`brew install rg`)
    - <leader>g, type something, then <ctrl>k should add some advanced filtering; like visually it should add
      double quote around search term and then you can type -t<file-type> and/or search directory. But <ctrl>k 
      doesn't work in my setup.
    - nvim-tree: Place cursor one a directory and press "a" to create a file under that directory
    - <Leader>n to toggle between file-tree open and close

-15
    - :on to reduced to only window
    - ]b, [b to switch between buffer tabs
    - Check Nerd fonts for icons
    - <SPACE>-q to close buffer
    ** dashboard plugin didn't work

-16
    - :G blame - how can I close the diff buffer without using :q?
    - :GBrowse - will take you to github
    - :G
-17
    - :terminal to create a terminal buffer
    - <F1> button doesn't work (tried: System settings > Keyboard > Keyboard shortcuts > Function Keys > Check "Use F1, F2 etc...")
    - <CTRL>-d to delete a session
</pre>
