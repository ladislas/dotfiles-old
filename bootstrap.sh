#!/usr/bin/env zsh
#

SCRIPT_PATH=${0}
cd "$(dirname "${SCRIPT_PATH}")";

git pull origin master;

function doIt() {

	# rsync --exclude-from='./.rsyncexclude' -avh --no-perms . ~;
	# source ~/.zshrc;
	echo -n "\n$fg[cyan]Press any key to quit and restart open a new terminal window..."
	read quit
	exit;

}

if [[ $@ == "--force" || $@ == "-f" ]]; then
	doIt;
else
	echo -n "\n$fg[red]This may overwrite existing files in your home directory. Are you sure? (y/n)$fg[green] "
	read REPLY
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;

unset doIt;

