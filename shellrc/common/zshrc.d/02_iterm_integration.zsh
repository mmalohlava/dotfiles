function iterm2_print_user_vars() {
  iterm2_set_user_var gitProject $(basename $(git rev-parse --show-toplevel 2> /dev/null) 2> /dev/null)
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

