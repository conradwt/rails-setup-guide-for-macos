# set Bundler specific aliases.
alias b="bundle"
alias bi="b install --path vendor"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

# set general aliases.
# alias coffee='say TEA TIME' #Say
alias wife='say Rebecca Kickeydes'
alias cj="cd ~/Dropbox/Code" #My DIR
alias cwd='pwd | pbcopy' #copy the working directory into the clipboard
alias bashprofile="mate ~/.bash_profile" #Bash File
alias bashprofiler="source ~/.bash_profile" #Bash Reload
alias memory='top -o vsize' #Memory
alias cpu='top -o cpu' #CPU
alias cpubrand='sysctl -n machdep.cpu.brand_string'
alias wifi="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I" #WiFi
alias wific="while x=1; do /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep CtlRSSI; sleep 0.5; done" #WiFi Check
alias pngs_to_avi='mencoder mf://*.png -mf fps=30 -ovc lavc -lavcopts vcodec=mpeg4:mbd=2:trell:vbitrate=5000 -oac copy -o' #turns a directory of pngs into a single, beautiful avi
# alias :='cd ..'
# alias ::='cd ../..'
# alias :::='cd ../../..'
alias l='ls -alh'
alias lt='l -t | less'

alias mute="osascript -e 'set volume output muted true'" # Mute computer Sound
alias sound="sudo osascript -e 'set volume 4'" # Turn on computer sound
alias louder="sudo osascript -e 'set volume 10'" # Turn computer sound loudest

# get readable list of network IPs'
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flush='sudo killall -HUP mDNSResponder' # Flush/Reset DNS cache

alias gzip="gzip -9n" # set strongest compression level as ‘default’ for gzip
alias redo='sudo \!-1' # When you forget to use 'sudo', just do 'redo' to rerun the last command using sudo.

# Command line shortcuts to toggle visibility of hidden files in finder:
alias show_hidden="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias hide_hidden="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"

# set Redis aliases.
alias rstart="sudo port load redis"
alias rstop="sudo port unload redis"

# set AnnotatedModels aliases.
alias schemize='bundle exec annotate --position before --exclude tests,fixtures,factories'

# set Rsync aliases.
#
# usage: rsync options source destination
#
# -v : verbose
# -r : copies data recursively (but don’t preserve timestamps and permission while transferring data
# -a : archive mode, archive mode allows copying files recursively and it also preserves symbolic links,
#      file permissions, user & group ownerships and timestamps
# -z : compress file data
# -h : human-readable, output numbers in a human-readable format
# -e : specify the remote shell to use
alias rsync='rsync -avzhX --progress'
