# Mamba Environment Cleanup Script

This script automates the process of removing all Mamba environments except the base environment. It's designed to help clean up disk space on macOS systems using Mambaforge.

## Usage

1. Make the script executable:
   ```
   chmod +x cleanup_mamba_envs.sh
   ```

2. Run the script:
   ```
   ./cleanup_mamba_envs.sh
   ```

3. After running the script, clean up unused packages and caches:
   ```
   mamba clean --all --yes
   ```

4. (Optional) If you want to completely remove Mambaforge, including the base environment:
   ```
   rm -rf ~/mambaforge
   ```
   Note: Adjust the path if you installed Mambaforge in a different location.

## Important Notes

- The script will prompt for confirmation before removing environments.
- Step 4 will completely uninstall Mambaforge. Only proceed if you're sure you want to remove it entirely.
- If you complete step 4, remember to also remove Mambaforge initialization from your shell configuration file (e.g., ~/.bashrc or ~/.zshrc).

## Caution

Use this script with care. It will delete all your Mamba environments except the base environment. Make sure you don't need any of the environments before proceeding.
