# Port from:
# https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/atom/atom.plugin.zsh

if  [[ "$OSTYPE" = darwin* ]]; then
    local _atom_darwin_paths > /dev/null 2>&1
    _atom_darwin_paths=(
        "/usr/local/bin/atom"
        "$HOME/Applications/Atom.app"
        "/Applications/Atom.app"
    )

    for _atom_path in $_atom_darwin_paths; do
        if [[ -a $_atom_path ]]; then
            alias atom="'$_atom_path'"
            break
        fi
    done
fi

alias at='atom'
alias att='at .'
