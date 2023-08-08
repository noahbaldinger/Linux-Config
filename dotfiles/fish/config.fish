if status is-interactive
    # Commands to run in interactive sessions can go here
    export LANGUAGE="en_GB.UTF-8"
    export LC_ALL="en_GB.UTF-8"
    export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
    export EDITOR="/usr/bin/nvim"
    export PATH="/home/nbaldinger/.local/bin:$PATH/"


    alias sudoedit="sudo nvim"




    alias pac="sudo pacman -S"
    #alias search="sudo pacman -Ss"
    alias search-local="sudo pacman -Qs"
    alias pkg-info="sudo pacman -Qi"
    alias local-install="sudo pacman -U"


    alias clr-cache="yay -Scc"
    alias uu="yay"

    alias updategrub="sudo grub-mkconfig -o /boot/grub/grub.cfg"


    #Yay shortcuts
    alias remove="yay -Rns"
    alias search="yay -Ss"
    alias y="yay -S"

    alias c="clear"
    alias neo="neofetch"
    alias bonsai="cbonsai -lit 0.05"

    alias !!='commandline -i "sudo $history[1]";history delete --exact --case-sensitive !!'



    alias nano='nvim'
    alias vim='nvim'
    alias vi='nvim'

    alias orphanslist="pacman -Qdtq"
    alias list_packages='echo $(pacman -Qq) > /hdd/Documents\ on\ HDD/packages.txt'

    alias wttr='curl "wttr.in/?F2M"'
    alias sync="onedrive"


    alias vpn='protonvpn-cli'

    # Alias's to modified commands
    alias cp='cp -i'
    alias mv='mv -i'
    alias rm='rm -iv'
    alias mkdir='mkdir -p'
    alias ps='ps auxf'
    alias ping='ping -c 10'
    alias freshclam='sudo freshclam'



    # Change directory aliases
    alias home='cd ~'
    alias cd..='cd ..'
    alias ..='cd ..'
    alias ...='cd ../..'
    alias ....='cd ../../..'
    alias .....='cd ../../../..'

    # Alias's for multiple directory listing commands
    alias la='ls -Alh' # show hidden files
    alias ls='ls -aFh --color=always' # add colors and file type extensions
    alias lx='ls -lXBh' # sort by extension
    alias lk='ls -lSrh' # sort by size
    alias lc='ls -lcrh' # sort by change time
    alias lu='ls -lurh' # sort by access time
    alias lr='ls -lRh' # recursive ls
    alias lt='ls -ltrh' # sort by date
    alias lm='ls -alh |more' # pipe through 'more'
    alias lw='ls -xAh' # wide listing format
    alias ll='ls -Fls' # long listing format
    alias labc='ls -lap' #alphabetical sort
    alias lf="ls -l | egrep -v '^d'" # files only
    alias ldir="ls -l | egrep '^d'" # directories only



    # Search command line history
    alias h="history | grep "

    # Search running processes
    alias p="ps aux | grep "


    # Search files in the current folder
    alias f="find . | grep "

    # Alias's to show disk space and space used in a folder
    alias folders='du -h --max-depth=1'
    alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
    alias tree='tree -CAhF --dirsfirst'
    alias treed='tree -CAFd'
    alias mountedinfo='df -hT'


    alias plasma="killall plasmashell && plasmashell > /dev/null 2>&1 & disown"
    


    #Tmux Stuff
    alias t="tmux a -t "
    alias tks="tmux kill-server"
    alias tls="tmux ls"
    alias tn="tmux new -s "    


    alias shared='sudo vmhgfs-fuse .host:/ /mnt/hgfs/ -o allow_other -o uid=1000'
    starship init fish | source
    

end
