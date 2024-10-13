# Notes [Neovim as a PHP and JavaScript IDE](https://laracasts.com/series/neovim-as-a-php-ide)

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
