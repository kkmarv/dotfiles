{lib, pkgs, ...}:
{
  home = {
    packages = with pkgs; [
      hello
      cowsay lolcat
      home-manager
    ];

    username = "marvin";
    homeDirectory = "/home/marvin";

  
    # You do not need to change this if you're reading this in the future.
    # Don't ever change this after the first build.  Don't ask questions.
    stateVersion = "23.11";
  };
}
