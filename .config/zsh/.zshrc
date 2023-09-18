## ▒███████ ████████░ ██ ██▀███ ▄████▄  
## ▒ ▒ ▒ ▄▒██    ▓██░ ██▓██ ▒ █▒██▀ ▀█  
## ░ ▒ ▄▀▒░ ▓██▄ ▒██▀▀██▓██ ░▄█▒▓█    ▄ 
##   ▄▀▒    ▒   █░▓█ ░██▒██▀▀█▄▒▓▓▄ ▄██ 
## ▒██████▒██████░▓█▒░██░██▓ ▒█▒ ▓███▀  
## ░▒▒ ▓░▒▒ ▒▓▒ ▒ ▒ ░░▒░░ ▒▓ ░▒░ ░▒ ▒   
## ░░▒ ▒ ░░ ░▒  ░ ▒ ░▒░ ░ ░▒ ░ ▒ ░  ▒   
## ░ ░ ░ ░░  ░  ░ ░  ░░ ░ ░░   ░        
##   ░ ░        ░ ░  ░  ░  ░   ░ ░      
## ░                           ░    

source /usr/share/zsh/plugins/zsh-autopair/autopair.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/fzf/key-bindings.zsh


# ZSH_THEME_RANDOM_CANDIDATES=("archcraft-dwm-1" "archcraft-dwm-2" "archcraft-dwm-3" "frontcube")       # random candidates
# ZSH_THEME_RANDOM_QUIET=true                                                               # disable notification on theme switching
ZSH_THEME="frontcube"                                                                       # set theme

# start autopair plugin
autopair-init       

# PLugins 
plugins=( 
    zsh-autosuggestions
    zsh-syntax-highlighting 
    web-search     
    sudo
    z
    fancy-ctrl-z
    colored-man-pages
    copypath
    exa-zsh
)



source $HOME/.config/zsh/aliasrc
source $HOME/.oh-my-zsh/oh-my-zsh.sh
