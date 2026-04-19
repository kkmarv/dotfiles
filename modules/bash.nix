{
  config,
  pkgs,
  lib,
  ...
}:

{
  programs.bash = {
    enable = true;
    initExtra = ''
      bind 'set completion-ignore-case on'
      bind 'set show-all-if-ambiguous on'
      bind 'set menu-complete-display-prefix on'
    '';
    # Ensure Nix binaries are on PATH. HM does not source this automatically.
    bashrcExtra = ''
      . ~/.nix-profile/etc/profile.d/nix.sh
    '';
  };
}
