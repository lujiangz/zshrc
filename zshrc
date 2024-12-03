alias d="cd /Users/msevuk/Desktop"
alias ls="ls -G"
alias so="source ~/.zshrc"
alias edit="vim ~/.zshrc"
alias 666="caffeinate -disum"

function brew_install()
{
	cd ~/goinfre
	mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
}

export PATH="/goinfre/msevuk/homebrew/bin:$PATH"
