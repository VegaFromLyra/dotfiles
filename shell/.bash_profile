if [ -d "$HOME/.dotfiles" ]; then
  DOTFILES_DIR="$HOME/.dotfiles"
else
  echo "Unable to find dotfiles, exiting."
  return
fi

for DOTFILE in "$DOTFILES_DIR"/system/.{env,alias,function}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

random_emoji() {
  local _emojis=(❤️i 🤯  🤓 😅 💃 😝 😰 😎 😱 ✌️  😐 😴 🙋 ⛷ )
  local _selected_emoji=${_emojis[$RANDOM % ${#_emojis[@]}]};
  echo $_selected_emoji;
}

export PS1="\$(random_emoji) \u \[\e[32m\]\$PWD\[\e[91m\]\$(parse_git_branch)\[\e[00m\] $ "

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
