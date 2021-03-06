# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### Color values for PS1 ###
# 30: Black
# 31: Red	
# 32: Green	
# 33: Yellow
# 34: Blue	
# 35: Purple
# 36: Cyan
# 37: White/Light-gray

#Dark
PS1='\[\e[01;33m\][\[\e[00m\]\[\e[01;32m\]\u\[\e[00m\]\[\e[01;37m\]@\[\e[00m\]\[\e[01;35m\]\h\[\e[00m\]\[\e[01;34m\]:\[\e[00m\]\[\e[01;36m\] \W\[\e[00m\]\[\e[01;33m\]]\[\e[00m\] \$ '

#Light
#PS1='\[\e[01;31m\][\[\e[00m\]\[\e[01;34m\]\u\[\e[00m\]\[\e[01;32m\]@\[\e[00m\]\[\e[01;35m\]\h\[\e[00m\]\[\e[01;36m\]:\[\e[00m\]\[\e[01;30m\] \W\[\e[00m\]\[\e[01;31m\]]\[\e[00m\] \$ '

export EDITOR="vim"
export VISUAL="vim"


### Aliases ###

# ls aliases
alias ls='ls -lh --color=auto'
alias la='ls -Alh'

# Confirm before overwriting something and adding verbose
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -v'
alias rm='rm -v'
#alias rm='rm -i' # Disabled it because of always prompting for every files or directories inside.

# Custom colorize output
alias grep='grep --color=auto'
alias ip='ip -color=auto'

# Paru
alias aurchekup='paru -Qua'
alias aurpkgup='paru -Sua'
alias aursearch='paru -Ss'

# Others
alias bashrc='vim ~/.bashrc'
alias vi='vim'
alias vimrc='vim ~/.vimrc'
alias torbrowser='cd ~/Downloads/tor-browser_en-US/; ./start-tor-browser.desktop; cd -'
alias yt-dl='youtube-dl'

# Auto 'cd' when entering just a path
#shopt -s autocd

# Completion for commands
complete -c man which
complete -cf sudo

# Pretty-print man(1) pages.
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_so=$'\E[1;33m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'

