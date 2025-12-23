[[ -r /usr/share/bash-completion/completions/git ]] &&
  source /usr/share/bash-completion/completions/git

if command -v docker >/dev/null 2>&1; then
  source <(docker completion bash)
fi

if command -v kubectl >/dev/null 2>&1; then
  source <(kubectl completion bash)
fi

if command -v helm >/dev/null 2>&1; then
  source <(helm completion bash)
fi

if command -v helmfile >/dev/null 2>&1; then
  source <(helmfile completion bash)
fi

# Completions for aliases

if declare -F __git_complete >/dev/null; then
  __git_complete g __git_main
fi

if declare -F __start_docker >/dev/null; then
  complete -o default -F __start_docker d
fi

if declare -F __start_kubectl >/dev/null; then
  complete -o default -F __start_kubectl k
fi

if declare -F __start_helm >/dev/null; then
  complete -o default -F __start_helm h
fi

if declare -F __start_helmfile >/dev/null; then
  complete -o default -F __start_helmfile hf
fi
