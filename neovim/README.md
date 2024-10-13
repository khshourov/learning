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
