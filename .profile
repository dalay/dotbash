# vim: ft=sh
# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# if [ -z "$TMUX" ]; then tm; fi
# [ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}
[ -z "$TMUX"  ] && { tmux attach || tmux new-session && exit;}
