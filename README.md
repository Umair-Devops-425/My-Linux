# Essential Linux Commands

## 1. Basic Navigation Commands
- `pwd` - Print Working Directory
    - Shows your current location in the file system.
    ```
    pwd                   # Output: /home/username
    ```
- `ls` - List Directory Contents
    - Lists files and directories in the current location.
    ```
    ls                    # Basic listing
    ls -l                 # Detailed listing (permissions, size, date)
    ls -la                # Include hidden files (starting with .)
    ls -lh                # Human-readable file sizes
    ls /path/to/directory # List specific directory
    ```
- `cd` - Change Directory
    - Navigate between directories.
    ```
    cd /home/username     # Go to specific directory
    cd ~                  # Go to home directory
    cd ..                 # Go up one directory level
    cd ../..              # Go up two directory levels
    cd -                  # Go to previous directory
    ```

## 2. File and Directory Operations
- `mkdir` - Make Directory
    - Create new directories
    ```
    mkdir new_folder              # Create single directory
    mkdir -p path/to/new/folder   # Create nested directories
    mkdir folder1 folder2         # Create multiple directories
    ```

- `rmdir` - Remove Directory
    - Remove empty directories
    ```
    rmdir empty_folder            # Remove empty directory
    rmdir -p path/to/empty/dirs   # Remove empty nested directories
    ```

- `rm` - Remove Files and Directories
    - Delete files and directories.
    ```
    rm file.txt                   # Remove file
    rm -r directory               # Remove directory and contents recursively
    rm -rf directory              # Force remove (be careful!)
    rm *.txt                      # Remove all .txt files
    ```

- `cp` - Copy Files and Directories
    - Copy files and directories.
    ```
    cp file.txt backup.txt        # Copy file
    cp file.txt /path/to/dest/    # Copy to different directory
    cp -r source_dir dest_dir     # Copy directory recursively
    cp *.txt backup/              # Copy all .txt files
    ```

- `mv` - Move/Rename Files and Directories
    - Move or rename files and directories.
    ```
    mv old_name.txt new_name.txt  # Rename file
    mv file.txt /path/to/dest/    # Move file
    mv directory /new/location/   # Move directory
    ```

## 3. File Content Commands
- `cat` - Display File Contents
    - Show entire file contents.
    ```
    cat file.txt                  # Display file
    cat file1.txt file2.txt       # Display multiple files
    cat > newfile.txt             # Create new file (Ctrl+D to save)
    ```

- `less` and `more` - View File contents page by page
    - view large files one screen at a time
    ```
    less largefile.txt            # Navigate with arrow keys, to quit more largefile.txt                 # Space for next page, q to quit
    ```

- `head` and `tail` - Show Beginning or End of File
    ```
    head file.txt                 # Show first 10 lines
    head -n 20 file.txt           # Show first 20 lines
    tail file.txt                 # Show last 10 lines
    tail -n 20 file.txt           # Show last 20 lines
    tail -f logfile.txt           # Follow file changes (useful for logs)
    ```

- `grep` - Search Text Patterns
    - Search for specific text in files.
    ```
    grep "search_term" file.txt           # Basic search
    grep -i "search_term" file.txt        # Case-insensitive search
    grep -r "search_term" directory/      # Recursive search in directory
    grep -n "search_term" file.txt        # Show line numbers
    grep -v "search_term" file.txt        # Show lines NOT containing term
    ```

## 4. File Permissions and Ownership
- `chmod` - Change File Permissions
    - Modify file and directory permissions.
    ```
    chmod 755 script.sh           # rwxr-xr-x (owner: read/write/execute, others: read/execute)
    chmod +x script.sh            # Add execute permission
    chmod -w file.txt             # Remove write permission
    chmod u+x,g-w,o-r file.txt    # User add execute, group remove  write, other remove read
    ```

- `chown` - Change Ownership
    - Change file and directory ownership (usually requires sudo).
    ```
    sudo chown username file.txt          # Change owner
    sudo chown username:groupname file.txt # Change owner and group
    sudo chown -R username directory/      # Change ownership recursively
    ```

## 5. System Information Commands
- `ps` - Show Running Processes
    - Display information about running processes.
    ```
    ps                            # Show processes for current user
    ps aux                        # Show all processes with detailed info
    ps -ef                        # Show all processes in full format
    ```

- `top` and `htop` - System Monitor
    - Display real-time system information.
    ```
    top                           # Basic system monitor (q to quit)
    htop                          # Enhanced system monitor (if installed)
    ```

- `df` - Disk Space Usage
    - Show disk space usage.
    ```
    du                            # Show disk usage for current directory
    du -h                         # Human-readable format
    du -sh *                      # Summary of each item in current directory
    du -sh directory/             # Show total size of specific directory
    ```

- `du` - Directory Space Usage
    - Show directory space usage.
    ```
    du                            # Show disk usage for current directory
    du -h                         # Human-readable format
    du -sh *                      # Summary of each item in current directory
    du -sh directory/             # Show total size of specific directory
    ```

- `free` - Memory Usage
    - Show memory usage information.
    ```
    free                          # Show memory usage
    free -h                       # Human-readable format
    ```

## 6. Network Commands
- `ping` - Test Network Connectivity
    ```
    ping google.com               # Test connectivity to google.com
    ping -c 4 google.com          # Send only 4 packets
    ```

- `wget` and `curl` - Download Files
    ```
    wget https://example.com/file.zip     # Download file
    curl -O https://example.com/file.zip  # Download file with curl
    curl https://api.example.com          # Make HTTP request
    ```

## 7. Archive and Compression
- `tar` - Archive Files
    - Create and extract archive files.
    ```
    tar -czf archive.tar.gz directory/    # Create compressed archive
    tar -xzf archive.tar.gz               # Extract compressed archive
    tar -tzf archive.tar.gz               # List contents of archive
    ```

- `zip` and `unzip` - ZIP Archives
    ```
    zip -r archive.zip directory/         # Create ZIP archive
    unzip archive.zip                     # Extract ZIP archive
    unzip -l archive.zip                  # List contents of ZIP
    ```

## 8. Text Processing
- `sort` - Sort Lines
    ```
    sort file.txt                 # Sort lines alphabetically
    sort -n numbers.txt           # Sort numerically
    sort -r file.txt              # Reverse sort
    ```

- `wc` - Word Count
    ```
    wc file.txt                   # Show lines, words, and characters
    wc -l file.txt                # Count lines only
    wc -w file.txt                # Count words only
    ```

- `cut` - Extract Columns
    ```
    cut -d',' -f1,3 data.csv      # Extract columns 1 and 3 from CSV
    cut -c1-10 file.txt           # Extract first 10 characters of each line
    ```

## 9. Process Management
- `kill` - Terminate Processes
    ```
    kill PID                      # Terminate process by ID
    kill -9 PID                   # Force kill process
    killall process_name          # Kill all processes with name
    ```

- `jobs` - Show Background Jobs
    ```
    jobs                          # Show running background jobs
    fg %1                         # Bring job 1 to foreground
    bg %1                         # Send job 1 to background
    ```

# 10. I/O Redirection and Pipes
- Redirection
    ```
    command > file.txt            # Redirect output to file (overwrite)
    command >> file.txt           # Redirect output to file (append)
    command < file.txt            # Use file as input
    command 2> error.log          # Redirect error messages to file
    ```

- Pipes
    ```
    cat file.txt | grep "search"          # Pipe output to grep
    ls -la | sort | head -10               # Chain multiple commands
    ps aux | grep firefox | wc -l         # Count Firefox processes
    ```

## 11. Environment and Variables
- `echo` - Display Text
    ```
    echo "Hello World"            # Display text
    echo $HOME                    # Display environment variable
    echo $USER                    # Display current username
    ```

- `export` - Set Environment Variables
    ```
    export MYVAR="value"          # Set environment variable
    export PATH=$PATH:/new/path   # Add to PATH variable
    ```

- `env` - Show Environment Variables
    ```
    env                           # Show all environment variables
    env | grep PATH               # Show PATH variable
    ```

## 12. Getting Help
- `man` - Manual Pages
    ```
    man ls                        # Show manual for ls command
    man -k keyword                # Search manual pages by keyword
    ```

- `--help` Option
    ```
    ls --help                     # Show help for ls command
    grep --help                   # Show help for grep command
    ```

- `which` and `whereis` - Locate Commands
    ```
    which python3                 # Show path to python3 executable
    whereis ls                    # Show paths to ls binary and manual
    ```