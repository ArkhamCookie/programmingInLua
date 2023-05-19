#!/bin/sh
# shellcheck disable=2154

check_lovebin() {
	if [ -x "$LOVEBIN" ]; then
		printf ":D\n"
	elif [ -f "$LOVEBIN" ] && [ ! -x "$LOVEBIN" ]; then
		printf "LOVEBIN does exist, but it is not execable.\n"
		return 3
	elif [ -z "$LOVEBIN" ]; then
		printf "LOVEBIN is not set.\n"
		return 2
	else
		printf "Error\n"
	fi
}

set_config() {
	LOVEBIN=$(find "$PWD" -type l -iname "love*")
	if [ -x "$LOVEBIN" ]; then
		printf "%s was found, set it as LOVEBIN?\n" "$LOVEBIN"
		return 0
	fi

	LOVEBIN=$(find "$PWD" -type f -iname "love*")
	if [ -x "$LOVEBIN" ]; then
		printf "%s%s%s was found, set it as LOVEBIN?\n" "$(tput bold)" "${LOVEBIN##*/}" "$(tput sgr0)"
		return 0
	fi

	printf "Love executable not automaticly found.\n"
	printf "%s\n" "$LOVEBIN"
}

run_love() {
	if [ "$maunal" = true ]; then
		"$manual_arg" "$target" || return 1
		return
	fi
	check_lovebin || return
	"$LOVEBIN" "$target"
	printf ":D\n"
}

run_love "$@"
