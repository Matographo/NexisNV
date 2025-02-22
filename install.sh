#!/bin/bash

###############################################################################
# NexisNV Installation Script
#
# This script installs the NexisNV Neovim configuration by moving all files
# from the repository to the Neovim configuration directory.
#
# It also backs up any existing Neovim configuration files into a ZIP archive
# within the Neovim configuration directory. After installing the configuration,
# it launches Neovim to install all plugins and prints a completion message.
#
# Finally, it deletes the repository directory to keep the configuration clean.
#
# Note: This script requires Git and Neovim to be installed on the system.
#
# For any issues with the installation, please open an issue at:
# https://github.com/Matographo/NexisNV
###############################################################################

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
if [ "$(ls -1 $NVIM_CONFIG | wc -l)" -gt 1 ]; then
  echo "Existing Neovim configuration found. Creating a backup..."
  
  # Move all files except the Git repository into the backup directory
  mkdir -p "$BACKUP_DIR"
  for file in $(ls -1 "$NVIM_CONFIG" | grep -vE "^($(basename $BACKUP_DIR)|$(basename $GIT_REPO_DIR))$"); do
      mv "$NVIM_CONFIG/$file" "$BACKUP_DIR/$file" || exit 1
      rm -rf "$file"
  done

  # Zip the backup
  zip -r "$NVIM_CONFIG/backup.zip" "$BACKUP_DIR"
  rm -rf "$BACKUP_DIR"
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
