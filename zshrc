PS1='\[\e[96;1m\]\u\[\e[0;38;5;182m\]\w\[\e[0m\]:'

alias d="cd ~/Desktop"

if [[ "$OSTYPE" == "darwin"* ]]; then
    alias ls="ls -G"    
else
    alias ls="ls --color=auto"
fi

alias la="ls -la"
alias so="source ~/.zshrc"
alias edit="nano ~/.zshrc"

function brew_install() {
    if ! command -v brew &> /dev/null; then
        echo "Homebrew kuruluyor..."
        cd ~/
        mkdir -p homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip-components 1 -C homebrew
        echo 'export PATH="$HOME/homebrew/bin:$PATH"' >> ~/.zshrc
        source ~/.zshrc
        echo "Homebrew kuruldu!"
    else
        echo "Homebrew zaten kurulu."
    fi
}

function extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2)   tar xjf "$1"     ;;
            *.tar.gz)    tar xzf "$1"     ;;
            *.bz2)       bunzip2 "$1"     ;;
            *.rar)       unrar e "$1"     ;;
            *.gz)        gunzip "$1"      ;;
            *.tar)       tar xf "$1"      ;;
            *.tbz2)      tar xjf "$1"     ;;
            *.tgz)       tar xzf "$1"     ;;
            *.zip)       unzip "$1"       ;;
            *.Z)         uncompress "$1"  ;;
            *.7z)        7z x "$1"        ;;
            *)           echo "'$1' extract fonksiyonuyla çıkarılamıyor." ;;
        esac
    else
        echo "'$1' geçerli bir dosya değil."
    fi
}

function myip() {
    curl -s https://api.ipify.org
    echo ""
}

function tools() {
    if [ ! -f "./tools.sh" ]; then
        wget https://raw.githubusercontent.com/lujiangz/42-Tools/refs/heads/main/tools.sh
        chmod +x ./tools.sh
        echo "tools.sh indirildi ve çalıştırılabilir hale getirildi."
    else
        echo "tools.sh zaten mevcut."
    fi
}

function weather() {
    if [ -z "$1" ]; then
        echo "Kullanım: weather <şehir>"
    else
        curl -s "wttr.in/$1?0"
    fi
}

function sysinfo() {
    echo "İşletim Sistemi: $OSTYPE"
    echo "Kullanıcı: $(whoami)"
    echo "Dizin: $(pwd)"
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "macOS Sürümü: $(sw_vers -productVersion)"
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "Linux Dağıtımı: $(lsb_release -d | cut -f2-)"
    fi
}
