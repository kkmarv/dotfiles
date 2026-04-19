{ lib, pkgs, ... }:
{
  imports = [
    ./modules/bash.nix
    ./modules/git.nix
    ./modules/k8s.nix
    ./modules/neovim.nix
    ./modules/starship.nix
    ./modules/tools.nix
  ];

  home.username = "marvin";
  home.homeDirectory = "/home/marvin";

  # You do not need to change this if you're reading this in the future.
  # Don't ever change this after the first build.  Don't ask questions.
  home.stateVersion = "25.11";
  home.preferXdgDirectories = true;

  home.packages = with pkgs; [
    home-manager
    just # runs commands in Justfile
  ];
}
