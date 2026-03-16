Bash Automation Assignment
1. Objective
The objective of this assignment is to design and implement Bash scripts to automate common system administration tasks in a Kali Linux environment.

This assignment demonstrates practical knowledge of shell scripting, file handling, log analysis, and task automation using standard Linux utilities.

2. Development Environment
Operating System: Kali Linux

Shell: GNU Bash

Tools Used: grep, awk, tar, date, who, df, free

All scripts were developed and tested in Kali Linux.

3. Description of Scripts

3.1 q1_system_info.sh

This script retrieves and displays system-related information including:

Hostname

Kernel version

CPU details

Memory usage

Disk usage

Logged-in users


3.2 q2_file_manager.sh

This script performs file and directory management operations such as:

Creating files and directories

Deleting files

Renaming files

Checking file existence

Listing directory contents

Input validation is implemented to handle incorrect user input.


3.3 q3_log_analyzer.sh

This script analyzes a log file and extracts relevant information using pattern matching utilities such as grep and awk.

The included sample.log file is used for testing and demonstration.


3.4 q4_backup.sh

This script automates the backup process by:

Accepting a source directory

Verifying directory existence

Creating a compressed archive

Appending date and time to the backup filename


3.5 q5_user_report.sh

This script generates a user activity report including:

Currently logged-in users

Last login information

System uptime details


4. Execution Procedure

Step 1: Clone the Repository

git clone https://github.com/Tejaswinihl26/bash-automation-assignment.git

cd bash-automation-assignment

Step 2: Grant Execute Permission

chmod +x *.sh

Step 3: Execute the Required Script

Example:./q1_system_info.sh


5. Implementation Details
Scripts are written using standard Bash scripting practices.

Proper comments are included for clarity and readability.

Error handling and input validation are implemented where required.

Modular and structured scripting approach is followed.

6. Conclusion
This assignment successfully demonstrates the use of Bash scripting in Kali Linux to automate essential system administration tasks. All scripts were executed and verified in the Kali Linux environment.

