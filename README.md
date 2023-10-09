# zautoload plugin

    (intended for Oh-My-Zsh)

## This plugin will automatically load any Zsh config files located in your user's Zsh configuration directory (usually the user's home directory).

### The files MUST follow this naming convention:

- `.p10k.zsh`
- `.functions.zsh`
- `.(file_name).zsh`


## Benefits

### Now, rather than adding lines like the following to your .zshrc file:

```bash
# ~/.zshrc

#Custom aliases
[[ -f ~/.aliases.zsh ]] && . ~/.aliases.zsh
#Custom functions
[[ -f ~/.functions.zsh ]] && . ~/.functions.zsh

#To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
```

### You can instead allow this plugin to load these configuration files for you! It will even avoid loading `.p10k.zsh` if the ZSH_THEME is not set to powerlevel10k/powerlevel10k!

## Installation

1. ### Simply clone the repo to your ohmyzsh plugin folder:
   ```bash
   git clone --depth=1 https://Doc0x1/zautoload $ZSH/custom/plugins/zautoload
   ```
2. ### Add zautoload to your .zshrc plugins
   ```bash
   plugins=(...other_plugins zautoload)
   ```
