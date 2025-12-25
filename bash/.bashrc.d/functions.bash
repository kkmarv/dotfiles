aliases() {
  local file="$HOME/.bashrc.d/aliases.bash"

  [[ -f $file ]] || return 0

  if [[ $1 == "-v" || $1 == "--verbose" ]]; then
    sed -nE 's/^alias //p' ~/.bashrc.d/aliases.bash
  else
    sed -nE 's/^alias ([^=]+)=.*/\1/p' "$file" | sort
  fi
}
