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

function extract() {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

function myip() {
    curl ifconfig.me
}

function tools()
{
        wget https://raw.githubusercontent.com/lujiangz/42-Tools/refs/heads/main/tools.sh
        chmod 777 ./tools.sh
}

export PATH="/goinfre/msevuk/homebrew/bin:$PATH"
