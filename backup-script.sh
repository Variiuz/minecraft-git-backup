#!/bin/bash

# change this to your own Minecraft directory
MINECRAFT_DIR="$HOME/.minecraft"
# can be changed to the world directory if you want to backup only the world
WORLD_DIR="$HOME/.minecraft/saves"
# change this to your own repository
GITHUB_REPO="git@github.com:Netto/git.git"
# change this to your own commit message if you want
COMMIT_MESSAGE="Automatic backup"

cd "$MINECRAFT_DIR"

# Create a Folder for the git sync (if it doesn't exist) so we dont even touch the original world files
BACKUP_DIR="$MINECRAFT_DIR/backups"
mkdir -p "$BACKUP_DIR"
cp -r "$WORLD_DIR" "$BACKUP_DIR"

if [ ! -d "$BACKUP_DIR/.git" ]; then
    cd "$BACKUP_DIR"
    git init
    git remote add origin "$GITHUB_REPO"
fi

cd "$BACKUP_DIR"
git add -A
git commit -m "$COMMIT_MESSAGE"
git push -u origin master
