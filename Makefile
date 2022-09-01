link:
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.gitignore ] || ln -s $(PWD)/gitignore ~/.gitignore
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/.zshenv ] || ln -s $(PWD)/zshenv ~/.zshenv

clean:
	rm -f ~/.vimrc
	rm -f ~/.gitconfig
	rm -f ~/.zshrc
	rm -f ~/.zshenv
	rm -f ~/.gitignore

reload: clean link
