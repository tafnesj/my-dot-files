pass:= ****

console:
	echo "Configurando consola..."
	echo "$(pass)" | sudo -S apt-get update
	sudo apt-get install zsh
	curl -Lo install.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
	echo -e "y\n$(pass)n" | sh install.sh
	zsh
	echo "$(pass)" | chsh -s /usr/bin/zsh
	git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
	sed -i 's#robbyrussell#powerlevel10k/powerlevel10k#' ~/.zshrc
	curl -fLo "nerdfont-complete.otf" \
	https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf?raw=true
	sh install.sh nerdfont-complete.otf
	rm -r ~/.p10k.zsh
	curl -fLo ".p10k.zsh" https://raw.githubusercontent.com/tafnesj/my-dot-files/main/.p10k.zsh

gcc:
	echo "$(pass)" | sudo -S apt install g++

node:
	echo "$(pass)" | sudo -S apt install nodejs

