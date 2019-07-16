
# Upload the given file and get a public URL for it
function transfer {
	if [[ $1 == "--copy" ]]; then
		curl --progress-bar --upload-file ./$2 https://transfer.sh/$2 | pbcopy
	else
		curl --progress-bar --upload-file ./$1 https://transfer.sh/$1
	fi
}

# Show the entire redirect chain for the given URL
function redirect-chain {
	wget --delete-after $1 2>&1 | grep Location:
}

# Launch docker instance
function d-exec() {
	CONTAINER=$1

	if [[ -z $CONTAINER ]]; then
		CONTAINER=`docker ps --format "{{.ID}}    {{.Names}} ({{.Image}})" | fzf | cut -d ' ' -f 1 | sed 's/^//' | tr '\n' ' ' | tr -d '[:space:]'`
	fi

	if [[ -z $CONTAINER ]]; then
		echo -e "\u001b[31m  !! No docker container selected !!  \u001b[0m"
		return 1
	fi

	docker exec -it $CONTAINER /bin/bash
}

# Remove local docker instance
function d-rm() {
	CONTAINER=$1

	if [[ -z $CONTAINER ]]; then
		CONTAINER=`docker ps --format "{{.ID}}    {{.Names}} ({{.Image}})" | fzf | cut -d ' ' -f 1 | sed 's/^//' | tr '\n' ' ' | tr -d '[:space:]'`
	fi

	if [[ -z $CONTAINER ]]; then
		echo -e "\u001b[31m  !! No docker container selected !!  \u001b[0m"
		return 1
	fi

	docker container rm -f $CONTAINER
}
