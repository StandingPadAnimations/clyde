#compdef clyde

_ls_packages() {
  LOCAL_PKGS=$(pacman -Qm | cut -f 1 -d " ") # Do it once to get it out of the way
  _arguments "1:profiles:($LOCAL_PKGS)"
}

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
      case $line[1] in
        (remove|rm|yeet|upgrade|upg)
              _remove_cmd
              ;;
      esac
      ;;
  esac
}

compdef _clyde clyde
