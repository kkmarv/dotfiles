update:
	home-manager switch --flake .#default

clean:
    nix-collect-garbage -d
