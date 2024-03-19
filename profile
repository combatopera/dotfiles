# Defaults for macOS.
. "$HOME/.bashrc"
for p in $HOME/.local/bin $HOME/Library/Python/*/bin; do PATH="$p:$PATH"; done
eval "$(/opt/homebrew/bin/brew shellenv)"
. "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh"
