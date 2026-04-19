{
  config,
  pkgs,
  lib,
  ...
}:

{
  home.packages = with pkgs; [
    kubectl
  ];

  home.shellAliases = {
    h = "helm";
    hf = "helmfile";
    k = "kubectl";
    kd = "kubectl run netshoot --image=nicolaka/netshoot -i --tty --rm";
  };

  programs.kubeswitch = {
    enable = true;
    commandName = "ks";
  };
}
