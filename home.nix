{ lib, pkgs, ... }:
{
  home.username = "marvin";
  home.homeDirectory = "/home/marvin";

  # You do not need to change this if you're reading this in the future.
  # Don't ever change this after the first build.  Don't ask questions.
  home.stateVersion = "25.11";

  home.shell.enableShellIntegration = true;

  home.packages = with pkgs; [
    home-manager
    cowsay
    lolcat
    htop
    jq
    yq
    bat
    direnv
    just
  ];

  # programs.home-manager.enable = true;
  programs.bash.enable = true;
  programs.bash.shellAliases = {
    c = "clear";
    d = "docker";
    h = "helm";
    hf = "helmfile";

    k = "kubectl";
    kd = "kubectl run netshoot --image=nicolaka/netshoot -i --tty --rm";

    g = "git";
    ga = "git add";
    gc = "git commit";
    gd = "git diff";
    gs = "git status";

    # Wrapper
    "..." = "cd ../..";
    ".." = "cd ..";
    cat = "bat";
    dmesg = "dmesg -L=always";
    ip = "ip -c";
    jq = "jq -C";
    less = "less -RF";
    ll = "ls -lAh";
    ls = "ls --color";
    mkdir = "mkdir -p";
    yq = "yq -C";

    # Utility
    week = "date +%V";
    reload = "exec \${SHELL} -l";
    ipinfo = ''echo "Internal: $(ip route get 1.1.1.1 | awk "{print $7}")"; echo "External: $(curl -s https://ifconfig.me)"'';
  };

  programs.starship.enable = true;
  programs.starship.settings = {
    add_newline = false;
    format = lib.concatStrings [
      "[╭╴](238)$os$all"
      "[╰─](238)$character"
    ];

    os = {
      disabled = false;
      format = "[$symbol](bold white) ";
      symbols.Debian = "";
      symbols.Ubuntu = "";
      symbols.Windows = "";
    };

    username = {
      disabled = false;
      format = "[$user]($style) ";
      show_always = true;
      style_root = "black bold";
      style_user = "white bold";
    };

    hostname = {
      disabled = false;
      format = "on [$hostname](bold yellow) ";
      ssh_only = false;
    };

    directory = {
      format = "at [$path]($style)[$read_only]($read_only_style) ";
      home_symbol = "󰋜 ~";
      read_only = "  ";
      read_only_style = "197";
      # substitutions = {  } TODO
      truncation_length = 1;
      truncation_symbol = "…/";
    };

    git_branch = {
      format = "via [$symbol$branch]($style)";
      style = "bold green";
      symbol = " ";
      truncation_symbol = "…/";
    };

    git_status = {
      ahead = "⇡\${count}";
      behind = "⇣\${count}";
      conflicted = "🏳";
      deleted = " ";
      diverged = "⇕⇡\${ahead_count}⇣\${behind_count}";
      format = "[$all_status$ahead_behind]($style) ";
      modified = " ";
      renamed = "襁 ";
      staged = "[++\($count\)](green)";
      stashed = " ";
      style = "bold green";
      untracked = " ";
      up_to_date = "";
    };
  };
}
