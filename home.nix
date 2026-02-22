{ lib, pkgs, ... }: {
  home = {
    packages = with pkgs; [
      home-manager
      nixfmt
      cowsay
      lolcat
      htop
      jq
      yq
      bat
      direnv
      starship
    ];

    username = "marvin";
    homeDirectory = "/home/marvin";

    # You do not need to change this if you're reading this in the future.
    # Don't ever change this after the first build.  Don't ask questions.
    stateVersion = "23.11";
  };
}
