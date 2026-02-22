

if [ "$HOSTNAME" == eperm ] ; then
	export SSH_AUTH_SOCK="/home/$USER/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock"
fi
