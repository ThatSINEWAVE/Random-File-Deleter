# Random File Deleter

This repository contains a small script (`script.bat`) intended to run at startup and delete a randomly chosen file at intervals ranging from 1 to 10 minutes. The script targets files with a specific extension, which can be modified by the user. A PowerShell script (`start_script.ps1`) is included to facilitate running the batch script in the background at startup.

## Warning

This script is for educational purposes only. It is designed to demonstrate the capabilities of batch scripting and PowerShell in automating tasks on Windows systems. The author is not responsible for any damage or loss of data resulting from the use or misuse of this script. Use it at your own risk.

## Features

- **Random Interval Execution**: Deletes a file at a random interval between 1 and 10 minutes.
- **Customizable File Targeting**: Users can specify the file extension of the files to be targeted for deletion.
- **Startup Execution**: Includes a method to run the script at system startup, ensuring the random deletion process begins automatically.

## Setup

1. **Modify File Extension**: Open `script.bat` and change the `file_extension` variable to target the desired file type. The default is set to `.prproj`.
    ```batch
    set "file_extension=.your_extension_here"
    ```
2. **Configure Startup Task**: Use `start_script.ps1` to run `script.bat` at system startup. This can be done by scheduling a task in the Task Scheduler to run `start_script.ps1`.

## Usage

After setting up the script and configuring the targeted file extension, the script will automatically run at the specified intervals, deleting a randomly selected file with the specified extension in the script's directory.

### Starting the Script Manually

To start the deletion process manually, simply run `start_script.ps1` using PowerShell, which will execute `script.bat` in the background:
```powershell
.\start_script.ps1
