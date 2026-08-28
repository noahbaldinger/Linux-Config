#source /usr/share/cachyos-zsh-config/cachyos-config.zsh
source ~/.config/zshrc/00-init 
source ~/.config/zshrc/30-autostart
source ~/.config/zshrc/20-customization
source ~/.config/zshrc/25-aliases

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
export T_QPA_PLATFORM=xcb  

stty -ixon

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
export PATH=/home/noah/.local/bin:$PATH


# FOR LOCAL INSTALL:
WINAPPS_SRC_DIR="$HOME/.local/bin/winapps-src"

export PATH=$PATH:~/.spicetify
