# Powershell Hash Compare

## A script that will determine if a file hash matches the input hash
At the moment it only does the default SHA256 hash.

### Usage
1. Run from a PowerShell prompt with a file as an argument. Ex: `hash_compare.ps1 testfile.exe`
2. Follow the prompts, you will be prompted to enter the hash to compare the file hash too.
3. Done! The prompt will show if the hash is the same or not.

### Suggested Usage
1. Make an alias for this script in your `$PROFILE` so you can easily call it anywhere.


### Screenshot
![Screenshot of the Hash Compare tool in use.](.\Screenshots\Example.png)