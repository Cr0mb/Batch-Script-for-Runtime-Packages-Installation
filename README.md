# Batch-Script-for-Runtime-Packages-Installation
This batch script automates the installation of essential runtime packages required for various applications. It checks your system architecture and installs both x86 and x64 runtimes accordingly.

## Features

> Installs Visual C++ runtimes (2005 to 2022)

> Installs OpenAL and .NET Framework 4.0

> Supports both x86 and x64 systems

## Usage
1. Download: Clone or download this repository to your local machine.
2. Run as Administrator: Right-click on install_runtimes.bat and select "Run as administrator" to ensure proper installation.
3. Installation: The script will detect your system architecture and install necessary runtimes silently. Please wait until the installation completes.

## Notes
- This script assumes the runtime installers (vcredist*.exe, oalinst.exe, dotNetFx40_Full_setup.exe) are present in the same directory as the batch script.

- It's recommended to run this script with administrator privileges to avoid installation errors.


```
Contributions are welcome!
If you find bugs or want to improve the script, feel free to fork this repository and submit a pull request.
```
