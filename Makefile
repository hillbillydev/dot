link:
	mkdir -p ~/.config/nvim
	[ -f ~/.alacritty.yml ] || ln -s $(PWD)/alacritty.yml ~/.alacritty.yml
	[ -f ~/.config/nvim/init.vim ] || ln -s $(PWD)/init.vim ~/.config/nvim/init.vim
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/.zshenv ] || ln -s $(PWD)/zshenv ~/.zshenv
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmux.conf ~/.tmux.conf

clean:
	rm -f ~/.config/nvim/init.vim
	rm -f ~/.alacritty.yml
	rm -f ~/.tmux.conf
	rm -f ~/.gitconfig
	rm -f ~/.zshrc
	rm -f ~/.zshenv

reload: clean link
