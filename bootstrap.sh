#!/usr/bin/env zsh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {

	rsync --exclude-from='./.rsyncexclude' -avh --no-perms . ~;
	source ~/.zshrc;

}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	echo -n "$fg[red]This may overwrite existing files in your home directory. Are you sure? (y/n)$fg[green] "
	read REPLY
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		echo "Ok!";
		doIt;
	fi;
fi;

unset doIt;

