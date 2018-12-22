pwd=$(shell pwd)
tmux:
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	ln -s $(pwd)/tmux ${HOME}/.tmux
	ln -s $(pwd)/tmux.conf ${HOME}/.tmux.conf
	ln -s $(pwd)/gitconfig ${HOME}/.gitconfig
clean:
	rm -rf ${HOME}/.tmux
	rm ${HOME}/.tmux.conf
	rm ${HOME}/.gitconfig
