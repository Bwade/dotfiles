# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/bwade/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/bwade/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/bwade/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/bwade/.fzf/shell/key-bindings.zsh"
