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

</pre>
