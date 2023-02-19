#!/usr/bin/env bash
_clyde_completions()
{
  if [ "${#COMP_WORDS[@]}" != "2" ]; then
    return
  fi
  compgen -W "install remove upgrade help" "${COMP_WORDS[1]}"
}

complete -F _clyde_completions clyde
