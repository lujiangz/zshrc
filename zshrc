PS1='\[\e[96;1m\]\u\[\e[0;38;5;182m\]\w\[\e[0m\]:'

alias d="cd /home/msevuk/Desktop"
alias ls="ls -G"
alias la="ls -la"
alias so="source ~/.zshrc"
alias edit="vim ~/.zshrc"

function brew_install()
{
	cd ~/goinfre
	mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
}

export PATH="/goinfre/msevuk/homebrew/bin:$PATH"
