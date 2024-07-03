# Summary
Script for creating a new folder structure with a predefined incrementing naming convention.

# Configuration

Two variables MUST be configured for the script to work properly, namely JobFolderLocation and TemplateSheetLocation.
- JobFolderLocation is the full path of the directory where job folders reside.  It should NOT end with a '\'.
- TemplateSheetLocation is the full path of the Excel template spreadsheet that will be copied into each new job folder.  The copy will be given a '.xlsx' extension.

# Job Naming Convention

Job numbers are the four digit year followed by a three digit incrementing counter.  The counter starts at one, increments by one, and is zero padded to a length of three characters.  

For example, the first job of 2023 would be 2023-001.

Upon running the script, the user will be prompted to enter the job number.  The script will offer a guess as to what the next job number should be based on the contents of the JobFolderLocation variable.  Press 'Enter' to accept the guess.
