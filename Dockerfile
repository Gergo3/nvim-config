


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
	&& sudo pacman -Scc


#open nvim on startup
CMD nvim
