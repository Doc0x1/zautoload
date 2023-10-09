# zautoload plugin

### Join me here: [OWLsec Community Discord Server](https://discord.gg/owlsec)

- **This server is for anyone with an interest in Programming and CyberSecurity!**

## Table of Contents

- [Installation](#installation)
- [Plugin Usage](#usage)

## Plugin Information

|          |                                                 |
| :------: | :---------------------------------------------: |
| Plugin:  |                  **zautoload**                  |
| Author:  |                   **Doc0x1**                    |
|  Type:   | [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) |
| Version: |                    **1.0.0**                    |
| License: |                     **MIT**                     |
|          |                                                 |

## Installation

1. Clone the repo to your ohmyzsh plugin folder:

```bash
git clone --depth=1 https://Doc0x1/zautoload $ZSH/custom/plugins/zautoload
```

2. Add `zautoload` to your `.zshrc` file like so:

```bash
plugins=(...otherplugins zautoload)
```

## Usage

This plugin will automatically load any Zsh config files located in your user's Zsh configuration directory.

These files **MUST FOLLOW** the `.<name>.zsh` **naming convention**, examples:

- **Zsh directory located in user home directory:**

  - `/home/user/.<name>.zsh`

- **Zsh directory using the $ZDOTDIR environment variable:**

  - `$ZDOTDIR/.<name>.zsh`

<br>

Now, rather than adding lines like the following to your .zshrc file:

```bash
# ~/.zshrc

#Custom aliases
[[ -f ~/.aliases.zsh ]] && . ~/.aliases.zsh
#Custom functions
[[ -f ~/.functions.zsh ]] && . ~/.functions.zsh

#To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
```

This plugin will load these configuration files for you.

- Note: It will only load `.p10k.zsh` if `$ZSH_THEME` is `powerlevel10k/powerlevel10k`
