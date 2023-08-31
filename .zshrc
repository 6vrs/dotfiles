# ---------------------------------------------------------        
#                              _     
#                             | |    
#                      _______| |__  
#                     |_  / __| '_ \ 
#                      / /\__ \ | | |
#                     /___|___/_| |_|
#                                    
# ---------------------------------------------------------        


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"


plugins=(git
        zsh-autosuggestions
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh

# Pywal
(cat ~/.cache/wal/sequences &)

# Starship
eval "$(starship init zsh)"