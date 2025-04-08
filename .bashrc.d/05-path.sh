
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
	PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/go/bin" ] ; then
	PATH="$HOME/go/bin:$PATH"
fi
