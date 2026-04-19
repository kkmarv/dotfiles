{
  config,
  pkgs,
  lib,
  ...
}:

{
  home.shellAliases = {
    g = "git";
    ga = "git add";
    gc = "git commit";
    gd = "git diff";
    gp = "git push";
    gs = "git status";
  };

  programs.git = {
    enable = true;

    ignores = [
      ".env"
      ".envrc"
      ".venv"
      ".vscode"
    ];

    settings = {
      # user.email = "web@kkmarv.dev";
      # user.name = "Marvin";
      branch.sort = "-committerdate";
      core.commentChar = ";";
      credential.helper = "store";
      fetch.prune = true;
      init.defaultBranch = "main";
      rebase.autostash = true;
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
  };
}
