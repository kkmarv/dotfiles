# Dotfiles

## Getting Started

Follow these steps once to setup a new environment.

1. Clone this repository.

2. Install [Nix](https://nixos.org/download/).

    Add `experimental-features = nix-command flakes` to `/etc/nix/nix.conf`. Create the file if it does not exist already.

    Can your run this?

    ```sh
    nix run nixpkgs#hello
    ```

3. Install [Home Manager](https://nix-community.github.io/home-manager/index.xhtml). If you're here reading this, you want the *standalone*.

    Skip step 4. You want HM to manage your shell config. As long as you do not close your current shell session, this will be fine.  

    Can you run this?

    ```sh
    home-manager --version
    ```

4. Enable my default Nix profile once.

    ```sh
    home-manager switch --flake .#default
    ```

    From here on everything should go smoothly.

## Customizations

|                       |                                                                                                                                                                     |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Editor Font           | [Cascadia Code NF Regular](https://www.programmingfonts.org/#cascadia-code)                                                                                         |
| Terminal Color Scheme | [xcad](https://github.com/ChristianLempa/dotfiles-win/blob/0f166e444c90a6a307aa7797bb2314d420ba5d8a/windows-terminal-settings.json#L68C9-L90C10) by Christian Lempa |

## References

- [simple-homemanager](https://github.com/Evertras/simple-homemanager/tree/main) - A practical guide to getting started with home manager with flakes and all that 2024 goodness.

    I've followed this tutorial and can say that it really cuts through the noise of typical Nix documentation. Can *highly recommend* it for beginners.

- [nerdfonts.com](https://www.nerdfonts.com/font-downloads)

<!-- 
- Home Manager options [list](https://nix-community.github.io/home-manager/options.xhtml)
- <https://mynixos.com/>
- <https://repology.org/repositories/graphs>
-->
