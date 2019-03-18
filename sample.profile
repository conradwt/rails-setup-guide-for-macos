# set PATH environment variable.
export PATH=/opt/local/bin:/opt/local/sbin:${PATH}
export PATH=/opt/local/apache2/bin:${PATH}
export PATH=${HOME}/.rbenv/bin:${PATH}
export PATH=/usr/local/heroku/bin:${PATH}
export PATH=${HOME}/bin:${PATH}

# set MANPATH environment variable. (TODO)
export MANPATH=/opt/local/share/man:${MANPATH}
export MANPATH=/usr/local/share/man/man1:${MANPATH}

# set EDITOR environment variable.
export EDITOR='code-insiders'
export VISUAL=${EDITOR}

# set SVN_EDITOR environment variable.
export SVN_EDITOR=${EDITOR}

# set GIT_EDITOR environment variable.
export GIT_EDITOR=${EDITOR}

# set TEXEDIT environment variable.
# export TEXEDIT='emacs +%d "%s"'
export TEXEDIT='code-insiders -g $2:$3'

# set LESSEDIT environment variable.
export LESSEDIT='code-insiders -nw'

# set DISPLAY environment variable.
export DISPLAY=:0.0

# set APSX2 environemnt variable.
export APXS2=/opt/local/apache2/bin/apxs

# set JAVA_HOME environment variable.
# export JAVA_HOME=`/usr/libexec/java_home`
# export PATH=${JAVA_HOME}/bin:${PATH}

# To use these certificates with OpenSSL:
export SSL_CERT_FILE=/opt/local/share/curl/curl-ca-bundle.crt

#Title Window
#set window title
function title() {
  echo -ne "\033]0;$@\007";
}
function title_git() {
  title `echo ${PWD##*/} "$(parse_git_branch) $@"`
}

# Set GIT specific aliases.
# alias ga='git add'
# alias gb='git branch'
# alias gba='git branch -a'
# alias gc='git commit -v'
# alias gca='git commit -v -a'
# alias gd='git diff'
# alias gko='git checkout'
# alias gl='git pull --rebase'
# alias glv='git pull -v'
# alias gp='git push'
# alias gpv='git push -v'
# alias gs='git stash'
# alias gsp='git stash pop'
# alias gst='git status'

# Set Bundler specific aliases.
alias b="bundle"
alias bi="b install --path vendor"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

# Set general aliases.
alias lock="/System/Library/CoreServices/Menu\ extras/User.menu/Contents/Resources/CGSession -suspend" #Lock
# alias coffee='say COFFEE TIME' #Say
alias wife='say Rebecca Kickeydes'
alias cj="cd ~/Dropbox/Code" #My DIR
alias cwd='pwd | pbcopy' #copy the working directory into the clipboard
alias bashprofile="mate ~/.bash_profile" #Bash File
alias bashprofiler="source ~/.bash_profile" #Bash Reload
alias memory='top -o vsize' #Memory
alias cpu='top -o cpu' #CPU
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

# Get readable list of network IPs
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flush="dscacheutil -flushcache" # Flush DNS cache

alias gzip="gzip -9n" # set strongest compression level as ‘default’ for gzip
alias redo='sudo \!-1' # When you forget to use 'sudo', just do 'redo' to rerun the last command using sudo.

# Command line shortcuts to toggle visibility of hidden files in finder:
alias show_hidden="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias hide_hidden="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"

# PostgreSQL aliases.
alias pgstart='sudo port load postgresql11-server'
alias pgstop='sudo port unload postgresql11-server'

# AnnotatedModels aliases.
alias schemize='bundle exec annotate --position before --exclude tests,fixtures'

# set Visual Studio Code aliases.
alias c='code-insiders'

# Set GIT command completion.
source ~/.git-completion.sh

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

function parse_rvm_branch {
 ref=$(rvm gemset name 2> /dev/null) || return
 echo ""${ref#refs/heads/}""
}

function parse_ruby_branch {
 ref=$(ruby -v | perl -n -e '/(\d\.\d\.\d)/ && print "$1\n"' 2> /dev/null) || return
 echo ""${ref#refs/heads/}""
}

function parse_ruby_implementation {
  ruby -v | awk '{ print $1; }'
}

# Set terminal style.
WHITE="\[\033[0;37m\]"
RED="\[\033[0;31m\]"
LIGHTRED="\[\033[1;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
LIGHTGREEN="\[\033[1;32m\]"
BLUE="\[\033[0;34m\]"
LIGHTBLUE="\[\033[1;34m\]"
CYAN="\[\033[0;36m\]"
LIGHTCYAN="\[\033[1;36m\]"
BLACK="\[\033[0;30m\]"
DARKGREY="\[\033[1;30m\]"
LIGHTGREY="\[\033[0;37m\]"
PURPLE="\[\033[0;35m\]"
LIGHTPURPLE="\[\033[1;35m\]"
BROWN="\[\033[0;33m\]"
YELLOW="\[\033[1;33m\]"
# PS1="$CYAN\$(date +%H:%M) $RED\w $CYAN\$(parse_ruby_branch)@$CYAN\$(parse_rvm_branch) $LIGHTPURPLE\$(parse_git_branch)$WHITE \$ "
# PS1="$CYAN[\$(date +%H:%M)] $RED[\w] $CYAN[\$(parse_ruby_implementation)] $CYAN[\$(parse_ruby_branch)] $LIGHTPURPLE\$(parse_git_branch)$WHITE \$ "
PS1="$CYAN[\$(date +%H:%M)] $RED[\w] $LIGHTPURPLE\$(parse_git_branch)$WHITE \$ "

# setup Rbenv.
eval "$(rbenv init -)"

# To use bash_completion, add the following lines at the end of your .bash_profile:
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi
