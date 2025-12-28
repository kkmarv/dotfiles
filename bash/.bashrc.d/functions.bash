aliases() {
  local file="$HOME/.bashrc.d/aliases.bash"

  [[ -f $file ]] || return 0

  if [[ $1 == "-v" || $1 == "--verbose" ]]; then
    sed -nE 's/^alias //p' ~/.bashrc.d/aliases.bash
  else
    sed -nE 's/^alias ([^=]+)=.*/\1/p' "$file" | sort
  fi
}

kn() { # TODO test the function
  local ns="$1"

  if [[ -z "$ns" ]]; then
    echo "usage: kn <namespace>" >&2
    return 1
  fi

  if ! kubectl auth can-i get pods -n "$ns" >/dev/null 2>&1; then
    echo "no access to namespace '$ns' (or it does not exist)" >&2
    return 1
  fi

  kubectl config set-context --current --namespace="$ns" >/dev/null

  echo "switched to namespace '$ns' in context $(kubectl config current-context)"
}
