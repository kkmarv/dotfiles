# Dotfiles

## Prerequisites

1. GNU Stow
2. NodeJS

## Setup

Install dev dependencies:

```shell
npm ci
```

## Configurations

1. Starship
2. direnv
3. nvm

## Nerd Font

[Hack](https://www.programmingfonts.org/#hack)

## Color Theme

- [iTerm2-Color-Schemes](https://github.com/mbadolato/iTerm2-Color-Schemes) repo
- [terminal.sexy](https://terminal.sexy)

I am using Christian Lempa's [xcad theme](https://github.com/ChristianLempa/dotfiles-win).

### Windows Terminal

Supports iTerm2 color format through [ColorTool](https://github.com/microsoft/terminal/tree/main/src/tools/ColorTool).

See below for an example of the xcad theme:

```json
"schemes": [
    {
        "background": "#1A1A1A",
        "black": "#121212",
        "blue": "#2B4FFF",
        "brightBlack": "#666666",
        "brightBlue": "#5C78FF",
        "brightCyan": "#5AC8FF",
        "brightGreen": "#905AFF",
        "brightPurple": "#5EA2FF",
        "brightRed": "#BA5AFF",
        "brightWhite": "#FFFFFF",
        "brightYellow": "#685AFF",
        "cursorColor": "#FFFFFF",
        "cyan": "#28B9FF",
        "foreground": "#F1F1F1",
        "green": "#7129FF",
        "name": "xcad",
        "purple": "#2883FF",
        "red": "#A52AFF",
        "selectionBackground": "#FFFFFF",
        "white": "#F1F1F1",
        "yellow": "#3D2AFF"
    }
]
```

### VSCode Integrated Terminal

The VSCode integrated terminal supports setting colors in the [`workbench.colorCustomizations`](https://code.visualstudio.com/docs/terminal/appearance#_terminal-colors).

See below for an example of the xcad theme:

```json
"workbench.colorCustomizations": {
    "terminal.ansiBlack": "#121212",
    "terminal.ansiBlue": "#2B4FFF",
    "terminal.ansiBrightBlack": "#666666",
    "terminal.ansiBrightBlue": "#5C78FF",
    "terminal.ansiBrightCyan": "#5AC8FF",
    "terminal.ansiBrightGreen": "#905AFF",
    "terminal.ansiBrightPurple": "#5EA2FF",
    "terminal.ansiBrightRed": "#BA5AFF",
    "terminal.ansiBrightWhite": "#FFFFFF",
    "terminal.ansiBrightYellow": "#685AFF",
    "terminal.ansiCyan": "#28B9FF",
    "terminal.ansiGreen": "#7129FF",
    "terminal.ansiPurple": "#2883FF",
    "terminal.ansiRed": "#A52AFF",
    "terminal.ansiWhite": "#F1F1F1",
    "terminal.ansiYellow": "#3D2AFF",
    "terminal.background": "#1A1A1A",
    "terminal.foreground": "#F1F1F1",
    "terminal.selectionBackground": "#FFFFFF",
    "terminalCursor.foreground": "#FFFFFF",
}
```
