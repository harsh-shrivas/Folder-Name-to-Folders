# Folder-Name-to-Folders

A high-efficiency automation batch script for Windows that instantly creates multiple directories in bulk by reading text lists directly from your clipboard.

---

## Features

* **Clipboard Integration:** Pulls multi-line text lists straight from your clipboard using a silent PowerShell call without requiring external dependencies.
* **Smart Sanitization:** Automatically strips quote characters, trims leading spaces, and replaces illegal path characters like forward slashes (`/`) with underscores (`_`).
* **Safe Execution:** Automatically skips blank lines and checks if a folder already exists to prevent duplication errors.

---

## Usage

1. Copy a list of folder names (each on a separate line) to your Windows clipboard.
2. Place `Folder-Name-to-Folders.bat` inside your target directory.
3. Double-click the batch file to instantly generate all folders in bulk.
