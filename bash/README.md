# Bash

## Usage

Add this to your `.bashrc`:

```shell
# Load all files from .bashrc.d/ directory
if [ -d $HOME/.bashrc.d ]; then
  for file in $HOME/.bashrc.d/*.bash; do
    source $file
  done
fi
```
