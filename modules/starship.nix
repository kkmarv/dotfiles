{
  config,
  pkgs,
  lib,
  ...
}:

{
  programs.starship = {
    enable = true;

    settings = {
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
