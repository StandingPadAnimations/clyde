_clyde()
{
  LOCAL_PKGS=$(pacman -Qqm)
  ARG="${COMP_WORDS[1]}"
  if [[ "$ARG" = "remove" || "$ARG" = "rm" || "$ARG" = "yeet" || "$ARG" = "upgrade" || "$ARG" = "upg" ]]; then
    COMPREPLY=($(compgen -W "$LOCAL_PKGS" "${COMP_WORDS[2]}"))
    return
  fi
  COMPREPLY=($(compgen -W "install remove upgrade help" "${COMP_WORDS[1]}"))
}
complete -F _clyde clyde
