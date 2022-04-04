link:
	mkdir -p ~/.config/nvim
	[ -f ~/.config/nvim/init.vim ] || ln -s $(PWD)/init.vim ~/.config/nvim/init.vim
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/.zshenv ] || ln -s $(PWD)/zshenv ~/.zshenv

clean:
	rm -f ~/.config/nvim/init.vim
	rm -f ~/.gitconfig
	rm -f ~/.zshrc
	rm -f ~/.zshenv

reload: clean link
