# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ag -g ""'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/ubayd/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/ubayd/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/ubayd/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/ubayd/.fzf/shell/key-bindings.zsh"

