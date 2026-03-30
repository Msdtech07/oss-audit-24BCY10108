# oss-audit-24BCY10108
Open Source Audit — Linux Kernel




# Student Details

Name: Priyanshu

Registration Number: 24BCY10108

Course: Open Source Software

Slot: A-24



# Project Overview



This project is a structured audit of the Linux Kernel, one of the most important open-source software systems in the world. The Linux Kernel acts as the core of the operating system, managing hardware, processes, memory, and system resources.

The objective of this project is to:

  1.Understand the origin and philosophy of open source

  2.Analyze the GPL v2 license

  3.Explore how the Linux Kernel works in a real system

  4.Study its ecosystem and real-world impact

  5.Compare it with proprietary alternatives

  6.Demonstrate practical Linux skills using shell scripting




# Key Concepts Covered

  1.Open Source Philosophy

  2.GNU General Public License (GPL v2)

  3.Linux System Architecture

  4.Kernel Functionality

  5.FOSS Ecosystem

  6.Shell Scripting (Bash)



# Chosen Software

-Linux Kernel

  Category: Operating System Kernel

  License: GPL v2

  Role: Core component of Linux-based systems



# Repository Structure

.

  ├── report.pdf

  ├── script1.sh

  ├── script2.sh

  ├── script3.sh

  ├── script4.sh

  ├── script5.sh

  └── README.md


# Shell Scripts Description

🔹 Script 1 — System Identity Report

Displays:

Kernel version

OS distribution

Logged-in user

System uptime

Date and time

License information

# Concepts used:

Variables

Command substitution ($())

echo formatting

🔹 Script 2 — FOSS Package Inspector

Checks if a package is installed

Displays version and details

Uses case statement for description

# Concepts used:


if-else

case

dpkg / rpm

grep


Script 3 — Disk and Permission Auditor

Analyzes system directories

Displays:

Size

Permissions

Owner & group

# Concepts used:


Arrays

for loop

du, ls -ld, awk

🔹 Script 4 — Log File Analyzer

Reads log file

Counts keyword occurrences (e.g., "error")

Displays last 5 matching lines

# Concepts used:


while read loop

Conditional statements

Command-line arguments ($1, $2)

🔹 Script 5 — Open Source Manifesto Generator

Takes user input

Generates a personalized open-source statement

Saves output to a .txt file

# Concepts used:


read input

File handling (>, >>)

String concatenation


# How to Run Scripts

Step 1: Give permission

->chmod +x script_name.sh

Step 2: Run script

->./script_name.sh

Example:

->./script4_log_analyzer.sh /var/log/syslog error


# Requirements
•	Linux OS (Ubuntu recommended) 
•	Bash shell 
•	Basic commands: grep, awk, du, ls, uptime 

# Key Learnings
•	Open source promotes transparency and collaboration 
•	GPL v2 ensures freedom of modification and redistribution 
•	Linux Kernel powers: 
o	Servers 
o	Android devices 
o	Cloud infrastructure 
o	Supercomputers 

# 📌 Conclusion
The Linux Kernel is not just software — it is the foundation of modern computing. This project highlights how open-source principles enable large-scale innovation and collaboration.

