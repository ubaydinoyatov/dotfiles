# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/ubayd/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/ubayd/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/ubayd/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/ubayd/.fzf/shell/key-bindings.bash"

