

# this will get cmd to look like this [mayur.shivakumar@110te-ll0000424:PowerStandings](master)$  
#addes a git branch if you are on one . 

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    #PS1="\[\033[38;5;222m\][\u@\h:\W]\$(__git_ps1 '(%s)')$\[\033[00m\] " 
else
    #PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
   # PS1="\[\033[38;5;222m\][\u@\h:\W]\$(__git_ps1 '(%s)')$\[\033[00m\]"
    PS1="\[\033[01;37m\][\u@\h:\W]\$(__git_ps1 '(%s)')$\[\033[00m\]"

fi
unset color_prompt force_color_prompt
