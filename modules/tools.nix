{
  config,
  pkgs,
  lib,
  ...
}:

{
  home.packages = with pkgs; [
    bat
    chafa
    cowsay
    htop
    lolcat
    tldr
    yq-go
  ];

  home.shellAliases = {
    # Navigation
    ".." = "cd ..";
    "..." = "cd ../..";
    # Colorized defaults
    dmesg = "dmesg -L=always";
    ip = "ip -c";
    jq = "jq -C";
    less = "less -RF";
    ls = "eza";
    yq = "yq -C";
    # Shortcuts
    c = "clear";
    mkdir = "mkdir -p";
    # Utility
    week = "date +%V";
    reload = "exec \${SHELL} -l";
    ipinfo = ''echo "Internal: $(ip route get 1.1.1.1 | awk "{print $7}")"; echo "External: $(curl -s https://ifconfig.me)"'';
  };

  programs = {
    direnv = {
      enable = true;
      config = {
        global.load_dotenv = true;
        whitelist.prefix = [ "/home/marvin/dev" ];
      };
    };

    eza = {
      enable = true;
      git = true;
      icons = "auto";
    };
  };
}
