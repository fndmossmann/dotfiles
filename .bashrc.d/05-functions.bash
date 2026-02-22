
log() {
	ssh $1 2>&1 | tree -a ~/.log/$1_$(date '+%Y-%m-%d_%H-%M-%S').log
}

