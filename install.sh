#!/bin/bash

echo "Starting NexisNV Installation..."

# Ensure required dependencies are installed
echo "Checking for required packages..."
if ! command -v git &> /dev/null; then
  echo "Git is not installed. Please install it first." && exit 1
fi
if ! command -v nvim &> /dev/null; then
  echo "Neovim is not installed. Installing now..." && exit 1
  return
fi

# Define paths
NVIM_CONFIG="$HOME/.config/nvim"
BACKUP_DIR="$HOME/.config/nvim/old_config"
GIT_REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Backup old Neovim configuration if it exists
if [ -d "$NVIM_CONFIG" ]; then
  echo "Existing Neovim configuration found. Creating a backup..."
  
  # Move all files except the Git repository into the backup directory
  mkdir -p "$BACKUP_DIR"
  for file in $(ls -1 "$NVIM_CONFIG" | grep -vE "^($BACKUP_DIR|$GIT_REPO_DIR)$"); do
      mv "$file" "$BACKUP_DIR/" || exit 1
      rm -rf "$file"
  done

  # Zip the backup
  zip -r "$NVIM_CONFIG/old_config.zip" "$BACKUP_DIR"
  echo "Backup created at: $BACKUP_DIR"
fi

# Move all repository files to the Neovim config directory
echo "Setting up NexisNV..."
mv "$GIT_REPO_DIR"/* "$NVIM_CONFIG/"

# Run Neovim to install plugins
echo "Launching Neovim to install plugins..."
nvim --headless "+Lazy sync" +qall

# Print completion message before deleting the repository
echo "Installation complete! Start Neovim with: nvim"

# Remove the Git repository completely
rm -rf "$GIT_REPO_DIR"
