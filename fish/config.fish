status -i || exit

set fish_greeting ""

alias ls='exa --icons -la'
alias gc='git clone'
alias tree='exa --icons --tree'
alias cat='bat --theme base16 --paging=never --style=plain'
alias vim='nvim'
alias q='exit'

export PATH="$PATH:$HOME/.local/bin:$HOME/.yarn/bin:$HOME/.cargo/bin:$HOME/go/bin"

# color
set fish_color_normal brwhite
set fish_color_command brgreen
set fish_color_param brwhite
set fish_color_error brred
set fish_color_quote bryellow

# vi-mode
# set fish_cursor_default block
# set fish_cursor_insert line
# set fish_cursor_replace_one underscore
# set fish_cursor_visual block

# comment to disable vi mode
fish_default_key_bindings
xset r rate 210 40

starship init fish | source
