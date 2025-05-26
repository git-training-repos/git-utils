# Global .gitignore file
git config --global core.excludesFile '~/.gitignore'
touch ~/.gitignore

# Config - aliases
git config --global alias.cc    "reset --hard HEAD"
git config --global alias.ccc   "!git reset --hard HEAD && git clean -dxf"
git config --global alias.p     "pull --rebase"
git config --global alias.co    "checkout"
git config --global alias.ca    "commit --amend"
git config --global alias.u     "!git fetch --prune --all && git fetch --prune --all --tags"
git config --global alias.update "!git fetch --prune --all && git fetch --prune --all --tags"
