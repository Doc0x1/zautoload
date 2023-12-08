#--------------------------------------------------------------------------
# Zautoload plugin for Oh My Zsh to autoload config files in ZDOTDIR/HOME
# Author: Doc0x1
# Version: 1.0
#--------------------------------------------------------------------------

# Check if ZDOTDIR is set, otherwise, use the home directory as default
file_source_directory=$HOME
if [ -n "$ZDOTDIR" ]; then
    file_source_directory=$ZDOTDIR
fi

# Define an array of files to exclude
exclude_files=(".zshrc" ".zprofile" ".zlogin" ".zlogout" ".zshenv" ".zsh_history")

# If the powerlevel10k theme is not in use, add .p10k.zsh to the exclude list
if [ "$ZSH_THEME" != "powerlevel10k/powerlevel10k" ]; then
    exclude_files+=(".p10k.zsh")
fi

# Iterate through all the files in the source directory
for file in "$file_source_directory"/.*; do
  # Extract only the filename from the full path
  filename=$(basename -- "$file")

  # Skip directories and only include regular files
  if [ -f "$file" ]; then
    # Skip the file if it is in the exclude array or is a .zcompdump file
    if [[ " ${exclude_files[@]} " =~ " ${filename} " ]] || [[ $filename == .zcompdump* ]]; then
      continue
    fi

    # Source files that start with a dot and end with ".zsh"
    if [[ $filename == .*\.zsh ]]; then
      source "$file"
    fi
  fi
done
