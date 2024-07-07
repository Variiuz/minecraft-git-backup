# minecraft-git-backup
A Windows (bat) script for stashing your minecraft world(s) onto git ☁️

# Usage
1. Download the only bat file in this repo
2. Edit the values for your needs.
   - WORLD_DIR can also be the "saves" folder so it commits all worlds.
   - MINECRAFT_DIR is the root .minecraft folder (if like me u use prism or something, make sure to add the whole instance path)
   - GITHUB_REPO is your target repo. Can be any hoster or even a local git server.
   - COMMIT_MESSAGE can be changed here too, if you find my words not up to your standards ☺️
3. check the script once manually please, and also you should dry run once. I am not responsible for any data loss. (this aint a download and run thing)
4. ???
5. profit

# How it works

Basically just copies your latest world(s) from the original saves folder you gave it and pushes changes from there. 
This aint even minecraft related and can be applied to any form of file structure :D
