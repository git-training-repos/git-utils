# Git Utils (Utilities)
A repo containing helpful git utilities.

To run the setup, run the following for either basic or advanced (works in linux and git bash).

## Basic Setup

```
./setup/basic.sh
```

This ensures you setup your user and email for committing, but it also sets up some aliases such as:

|Alias `git ___`|Description|
|---|---|
|l|pretty log of the last 15 commits|
|ll|pretty log of all commits|
|lns|pretty log with the name of files modified and their modification (add/modify/delete)|
|s|status|
|sh|show|
|shn|show with the names of files|
|shns|show with the names of files and their modification (add/modify/delete)|
|d|diff (also dn and dns, the same as show)|
|t|tag with first line of the tag/commit message|
|b|pretty local branches list|
|ba|pretty local and remote branches list|
|shw|show ignoring whitespace|
|dw|diff ignoring whitespace|

## Advanced Setup

Or you can run the full setup, which includes basic and advanced setups.
Ideally if running advanced, you'll review what it gives you as it creates some destructive (but useful) aliases such as `git cc` and `git ccc`.

```
./setup/all.sh
```
