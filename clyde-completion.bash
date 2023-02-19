_clyde()
{
  LOCAL_PKGS=$(pacman -Qm | cut -f 1 -d " ") # Do it once to get it out of the way
  ARG="${COMP_WORDS[1]}"
  if [[ "$ARG" = "remove" || "$ARG" = "rm" || "$ARG" = "yeet" || "$ARG" = "upgrade" || "$ARG" = "upg" ]]; then
    compgen -W "$LOCAL_PKGS" "${COMP_WORDS[2]}"
    return
  fi
  compgen -W "install remove upgrade help" "${COMP_WORDS[1]}"
}
complete -F _clyde -o bashdefault -o default clyde
