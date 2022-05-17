# Easy, git, update
Continously push files to a remote git repo effortlessly

## Installation
Download the repo and open git bash or Windows subsystem for Linux and run the file ```install-sync.sh```
Then drop the file ```sync.exe``` into the root of your git repo and run it to sync changes

## Installation for Linux
Same as above but use the command ```make git-update``` rather than running the install script and place ```git-update```

## NOTE
Manual intervention may be required for adding files to git

## Dependencies
- Git - to clone repo
- Bash - to run installation script on Windows platforms
- TCC - To compile on Windows (auto-downloads)
- Make - To compile on non-Windows platforms (invokes GCC or other C compiler)
- GCC - TO compile on non-Windows platforms
