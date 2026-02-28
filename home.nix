{ lib, pkgs, ... }:
{
  home.username = "marvin";
  home.homeDirectory = "/home/marvin";

  # You do not need to change this if you're reading this in the future.
  # Don't ever change this after the first build.  Don't ask questions.
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    home-manager
    cowsay
    lolcat
    htop
    jq
    yq
    bat
    just
  ];

  home.shellAliases = {
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

  programs = {
    bash.enable = true;
    bash.initExtra = ''
      bind 'set completion-ignore-case on'
      bind 'set show-all-if-ambiguous on'
      bind 'set menu-complete-display-prefix on'
    '';
    # Ensure Nix binaries are on PATH. HM does not source this automatically.
    bash.bashrcExtra = ''
      . ~/.nix-profile/etc/profile.d/nix.sh
    '';

    git.enable = true;
    git.ignores = [ ".env" ];
    git.settings = {
      # user.email = "web@kkmarv.dev";
      # user.name = "Marvin";
      branch.sort = "-committerdate";
      core.commentChar = ";";
      credential.helper = "store";
      fetch.prune = true;
      init.defaultBranch = "main";
      alias = {
        plog = "log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative";
        # Show colored log with graph and relative timestamps.

        fpush = "push --force-with-lease";
        # Force-push safely.

        undo = "reset --soft HEAD";
        # Undo the latest commit.

        tags = "tag -l";
        branches = "branch --all";
        remotes = "remote --verbose";
        # Show verbose output about tags, branches or remotes.

        aliases = "config --get-regexp alias";
        # List aliases.

        amend = "commit --amend --reuse-message=HEAD";
        # Amend the currently staged files to the latest commit.

        contributors = "shortlog --summary --numbered";
        # List contributors with number of commits.

        whoami = "config user.email";
        # Show the user email for the current repository.
      };
    };

    direnv.enable = true;
    # direnv.nix-direnv.enable = true; TODO check this out
    direnv.config = {
      global.load_dotenv = true;
      whitelist.prefix = [ "/home/marvin/dev" ];
    };

    starship.enable = true;
    starship.settings = {
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
  };
}
