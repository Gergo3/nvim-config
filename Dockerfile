


FROM archlinux:base-devel



#install packages
RUN pacman -Syu --noconfirm --noprogressbar --needed \
	neovim \
	tree \
	fzf \
	git \
	wget \
	curl \
	zip \
	unzip \
	&& pacman -Scc



#install vim-plug
RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'



#create vimrc
RUN mkdir -p ~/.config/nvim

COPY .config /root/.config


#install plugins
RUN nvim +PlugInstall +qall

#open nvim on startup
CMD nvim
