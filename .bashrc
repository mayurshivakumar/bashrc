

# this will get cmd to look like this [mayur.shivakumar@110te-ll0000424:PowerStandings](master)$  
#addes a git branch if you are on one . 

if [ "$color_prompt" = yes ]; then
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    
    # adds git branch at the end. 
    #PS1="\[\033[38;5;222m\][\u@\h:\W]\$(__git_ps1 '(%s)')$\[\033[00m\] " 
    
    # this is with out the machine name and adds git branch at the end 
    PS1="\[\033[38;5;222m\][\u:\W]\$(__git_ps1 '(%s)')$\[\033[00m\] "
else
    #PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
   # PS1="\[\033[38;5;222m\][\u@\h:\W]\$(__git_ps1 '(%s)')$\[\033[00m\]"
  
   # adds git branch at the end. 
   #PS1="\[\033[01;37m\][\u@\h:\W]\$(__git_ps1 '(%s)')$\[\033[00m\]"
    
    # this is with out the machine name and adds git branch at the end
    PS1="\[\033[01;37m\][\u:\W]\$(__git_ps1 '(%s)')$\[\033[00m\]"
fi
unset color_prompt force_color_prompt

#git
alias gs='git status'
alias gp='git pull'
alias gf='git fetch --all'
alias gb='git branch'

# Directory navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias po='cd /home/mayur/projects/portals'

# VPN
function vpn()
{
  cd /home/mayur/projects
  echo
  if [ "$1" == "v" ]; then
   if [ ! -f /home/mayur/projects/NEO.Virginia.HA.VPN.ovpn ]; then
    echo "NEO.Virginia.HA.VPN.ovpn file not found!"
   else
    sudo openvpn --config NEO.Virginia.HA.VPN.ovpn
   fi
  else
    if [ ! -f /home/mayur/projects/NEO.Oregon.HA.VPN.ovpn ]; then
    echo "NEO.Virginia.HA.VPN.ovpn file not found!"
  else
    sudo openvpn --config NEO.Oregon.HA.VPN.ovpn
    fi
  fi
}

#Go lang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin



