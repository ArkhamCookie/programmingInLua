#!/bin/sh

main() {
	printf "#%s/usr/bin/env lua\n\n" "!" > "$1" || return 1
	chmod 755 "$1" || return 1
	if [ -f "$1" ]; then
		printf "%s created.\n" "${1##*/}"
	else
		printf "Erroring creating file.\n"
		return 2
	fi
}

if [ "$#" -le 0 ]; then
	printf "You need one arguement to run this script.\n"
	return 2
elif [ "$#" -ge 2 ]; then
	printf "This script only takes one argument.\n"
	return 2
else
	main "$@"
fi

