# zautoload plugin

## Table of Contents

- [Installation](#installation)
- [Plugin Usage](#usage)

### Join me here: [OWLsec Community Discord Server](https://discord.gg/owlsec)

- **This server is for anyone with an interest in Programming and CyberSecurity!**

## Plugin Information

|          |                                                 |
| :------: | :---------------------------------------------: |
| Plugin:  |                  **zautoload**                  |
| Author:  |                   **Doc0x1**                    |
|  Type:   | [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) |
| Version: |                    **1.0.0**                    |
| License: |                     **MIT**                     |
|          |                                                 |

## This plugin will automatically load any Zsh config files located in your user's Zsh configuration directory.

The files MUST follow the `.<name>.zsh` naming convention, examples:

> `/home/user/.<name>.zsh`

> `$ZDOTDIR/.<name>.zsh`

## Installation

1. ### Simply clone the repo to your ohmyzsh plugin folder:

```bash
git clone --depth=1 https://Doc0x1/zautoload $ZSH/custom/plugins/zautoload
```

2. ### Add zautoload to your .zshrc file like so:

```bash
plugins=(...otherplugins zautoload)
```

## Usage

#### Now, rather than adding lines like the following to your .zshrc file:

```bash
# ~/.zshrc

#Custom aliases
[[ -f ~/.aliases.zsh ]] && . ~/.aliases.zsh
#Custom functions
[[ -f ~/.functions.zsh ]] && . ~/.functions.zsh

#To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
```

#### This plugin will load these configuration files for you.

- Note: It will only load `.p10k.zsh` if `$ZSH_THEME` is `powerlevel10k/powerlevel10k`
