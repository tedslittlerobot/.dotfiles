
# Upload the given file and get a public URL for it
function transfer {
	if [[ "$HOMESLICE_OS" == "osx" ]]; then
		curl --upload-file ./$1 https://transfer.sh/$1 | pbcopy
	else
		curl --upload-file ./$1 https://transfer.sh/$1
	fi
}

# Show the entire redirect chain for the given URL
function redirect-chain {
	wget --delete-after $1 2>&1 | grep Location:
}

# Launch docker instance
function dexec() {
	CONTAINER=$1

	if [[ -z $CONTAINER ]]; then
		CONTAINER=`docker ps | tail -n +2 | fzf | awk -F ' ' '{print $1}'`
	fi

	docker exec -it $CONTAINER /bin/bash
}
