pwd=$(shell pwd)

all: tmux git sync

tmux:
	@-rm -rf ${HOME}/.tmux
	@-rm ${HOME}/.tmux.conf
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	ln -s $(pwd)/tmux ${HOME}/.tmux
	ln -s $(pwd)/tmux.conf ${HOME}/.tmux.conf

git:
	@-rm ${HOME}/.gitconfig
	ln -s $(pwd)/gitconfig ${HOME}/.gitconfig

sync:
	@-rm /usr/local/bin/homesync
	ln -s $(pwd)/homesync /usr/local/bin/homesync
	@-chmod +x /usr/local/bin/homesync
