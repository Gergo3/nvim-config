


FROM archlinux:base-devel



#install packages
RUN pacman -Sy --noconfirm --noprogressbar --needed archlinux-keyring \
	&& pacman-key --init \
	&& pacman-key --populate archlinux \
	&& pacman -Syu --noconfirm --noprogressbar --needed \
	neovim \
#        luarocks \
        lua-language-server \
        npm \
	tree \
	fzf \
	git \
	wget \
	curl \
	zip \
	unzip \
	&& pacman -Scc --noconfirm --noprogressbar --needed

RUN npm update -g \
        && npm install -g \
        vim-language-server \
        && npm cache clear --force

##install lua packages
#RUN 



#install vim-plug
RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'



#create vimrc
RUN mkdir -p ~/.config/nvim

COPY .config /root/.config


#install plugins
RUN nvim +PlugInstall +qall

#install treesitter parsers
RUN nvim +TSUpdate +qall


#create source dir source
RUN mkdir /root/src

#open nvim on startup
WORKDIR /root/src
CMD nvim +Ex
