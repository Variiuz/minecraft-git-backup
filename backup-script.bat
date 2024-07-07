@echo off
setlocal
:: change this to your own Minecraft directory
set MINECRAFT_DIR="C:\Users\<user>\AppData\Roaming\.minecraft"
:: can be changed to the world directory if you want to backup only the world
set WORLD_DIR="C:\Users\<user>\AppData\Roaming\.minecraft\saves"
:: change this to your own repository
set GITHUB_REPO=git@github.com:Netto/git.git
:: change this to your own commit message if you want
set COMMIT_MESSAGE=Automatic backup

cd %MINECRAFT_DIR%

:: Create a Folder for the git sync (if it doesn't exist) so we dont even touch the original world files
set BACKUP_DIR=%MINECRAFT_DIR%\backups
mkdir %BACKUP_DIR%
xcopy %WORLD_DIR% %BACKUP_DIR% /E /H /C /I /Q /Y

if not exist %BACKUP_DIR%\.git (
    cd %BACKUP_DIR%
    git init
    git remote add origin %GITHUB_REPO%
)
cd %BACKUP_DIR%
git add -A
git commit -m "%COMMIT_MESSAGE%"
git push -u origin master
endlocal
