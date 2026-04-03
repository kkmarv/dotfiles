rebuild:
	home-manager switch --flake .#default

update:
    nix flake update

clean:
    nix-collect-garbage -d
