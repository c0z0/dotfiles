if status is-interactive
    # Commands to run in interactive sessions can go here
end

# remove welcome message
set -U fish_greeting ""

switch (uname)
    case Linux
        # Commands to run on Linux
        # asdf
        source ~/.asdf/asdf.fish
    
    case Darwin
        # homebrew
        fish_add_path /opt/homebrew/bin/

        # asdf
        source /opt/homebrew/opt/asdf/libexec/asdf.fish
end


# aliases
alias vim="/usr/local/bin/nvim"
alias p="pnpm"

# vim mode
fish_vi_key_bindings

starship init fish | source
