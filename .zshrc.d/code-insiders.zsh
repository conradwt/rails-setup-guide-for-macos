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

# set Visual Studio Code aliases.
alias c='code-insiders'
