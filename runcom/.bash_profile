if [ -d "$HOME/.dotfiles" ]; then
  DOTFILES_DIR="$HOME/.dotfiles"
else
  echo "Unable to find dotfiles, exiting."
  return
fi

for DOTFILE in "$DOTFILES_DIR"/system/.{env,alias}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

