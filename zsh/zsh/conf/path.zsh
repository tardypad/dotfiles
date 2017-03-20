# Directories to be prepended to PATH
declare -a dirs_to_prepend

dirs_to_prepend=(
 "$HOME/.local/bin"
 "$HOME/.cabal/bin" # Haskell packages
 "$HOME/.zsh/scripts"
 /usr/local/share/pebble-sdk/bin
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
