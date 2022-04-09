link:
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/.zshenv ] || ln -s $(PWD)/zshenv ~/.zshenv

clean:
	rm -f ~/.vimrc
	rm -f ~/.gitconfig
	rm -f ~/.zshrc
	rm -f ~/.zshenv

reload: clean link
