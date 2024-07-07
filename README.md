# Minecraft Backup Script
A script for stashing your minecraft world(s) onto git ☁️
Tested on Windows, also available for Linux.

Requires either HTTPS setup or SSH keys (so you gotta know what u doing kinda)

# Usage
1. Download the respective script file in this repo (.sh for linux, .bat for windows)
2. Edit the values for your needs.
   - WORLD_DIR can also be the "saves" folder so it commits all worlds.
   - MINECRAFT_DIR is the root .minecraft folder (if like me, u use prism or something, make sure to add the whole instance path)
   - GITHUB_REPO is your target repo. Can be any hoster or even a local git server.
   - COMMIT_MESSAGE can be changed here too, if you find my words not up to your standards ☺️
3. check the script once manually please, and also you should dry run once. I am not responsible for any data loss. (this aint a download and run thing)
4. ???
5. profit

# How it works

Basically just copies your latest world(s) from the original saves folder you gave it and pushes changes from there. 
This aint even minecraft related and can be applied to any form of file structure, 
I just wanted a way to backup a hardcore world so in case of glitches I can revert to a version where im not waiting for my reboot card, and if someone finds the same use-case: you are welcome

# Issues
If you have any issues or recommendations/changes feel free to open an Issue and/or even make a Pull Requests.
I will also gladly approve useful features :D
