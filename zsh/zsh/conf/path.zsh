# Directories to be prepended to PATH
declare -a dirs_to_prepend

dirs_to_prepend=(
 "$HOME/.local/bin"
 "$HOME/.cabal/bin" # Haskell packages
 "$HOME/.zsh/scripts"
 "$HOME/.config/sway/scripts"
)

# Prepend directories to PATH
for dir in ${dirs_to_prepend[@]}
do
    if [ -d $dir ]; then
        # If these bins exist, then prepend them to existing PATH
        PATH="$dir:$PATH"
    fi
done

unset dirs_to_prepend

export PATH

# add local shared libraries
export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}

# set PATH in systemd user environment
systemctl --user import-environment PATH
