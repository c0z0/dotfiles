#!/opt/homebrew/bin/fish

cd (pwd)/(dirname (status -f))

function bootstrap
    rsync --exclude ".git/" \
        --exclude ".DS_Store" \
        --exclude ".osx" \
        --exclude "bootstrap.fish" \
        --exclude "README.md" \
        -avh --no-perms . ~
end

function read_confirm
    while true
        read -l -P 'This will overwrite existing files. Do you want to continue? [y/N] ' confirm

        switch $confirm
            case Y y
                return 0
            case '' N n
                return 1
        end
    end
end

if read_confirm
    bootstrap
end

functions -e bootstrap read_confirm
