

if [ "$HOSTNAME" == eperm ] ; then
	export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi
