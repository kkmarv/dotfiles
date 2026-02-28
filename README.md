# Dotfiles

## Getting Started

Follow these steps once to setup a new environment.

1. Install [Nix](https://nixos.org/download/).
2. Add `. ~/.nix-profile/etc/profile.d/nix.sh` to your `~/.profile`.

3. Add `experimental-features = nix-command flakes` to `/etc/nix/nix.conf`. Create the file if it does not exist already.

    Can your run this?

    ```sh
    nix run nixpkgs#hello
    ```

4. Install [Home Manager](https://nix-community.github.io/home-manager/index.xhtml). If you're here reading this, you want the *standalone*. Make sure to follow step 4.

    Can you run this?

    ```sh
    home-manager --version
    ```

5. Enable the default Nix profile once.

    ```sh
    home-manager switch --flake .#default
    ```

## References

- [simple-homemanager](https://github.com/Evertras/simple-homemanager/tree/main) -  A practical guide to getting started with home manager with flakes and all that 2024 goodness.

    I've followed this tutorial and can say that it really cuts through the noise of typical Nix documentation. Can highly recommend it for beginners.

<!-- 
- Home Manager options [list](https://nix-community.github.io/home-manager/options.xhtml)
- <https://mynixos.com/>
- <https://repology.org/repositories/graphs>
-->
