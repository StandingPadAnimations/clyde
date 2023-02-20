#compdef clyde

_clyde() {
  local line state

  _arguments -C \
    '1: :->cmds' \
    '*::arg:->args'

  case $state in
    (cmds)
        _values "clyde COMMAND" \
          "install[Install a package]" \
          "remove[Remove a package]" \
          "upgrade[Upgrade]"
      ;;
    (args)
      ;;
  esac
}

compdef _clyde clyde
