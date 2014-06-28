#emacs
bindkey -e
bindkey '^[[5D' backward-word
bindkey '^[[5C' forward-word
bindkey ';5D' backward-word
bindkey ';5C' forward-word


# Skip all this for non-interactive shells
[[ -z "$PS1" ]] && return

autoload -U compinit promptinit
compinit
promptinit

autoload -U select-word-style
select-word-style bash

# This will set the default prompt to the walters theme
prompt walters

# Zsh settings for history
export HISTIGNORE="&:ls:[bf]g:exit:reset:clear:cd:cd ..:cd.."
export HISTSIZE=25000
export HISTFILE=~/.zsh_history
export SAVEHIST=25000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY

# Completation
zstyle ':completion:*' menu select
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Prompts for confirmation after 'rm *' etc
# Helps avoid mistakes like 'rm * o' when 'rm *.o' was intended
setopt RM_STAR_WAIT

# Background processes aren't killed on exit of shell
setopt AUTO_CONTINUE

# Don�t write over existing files with >, use >! instead
setopt NOCLOBBER

# Don�t nice background processes
setopt NO_BG_NICE

# Watch other user login/out
watch=notme
export LOGCHECK=60

# Enable color support of ls
if [[ "$TERM" != "dumb" ]]; then
    if [[ -x `which dircolors` ]]; then
        eval `dircolors -b`
        alias 'ls=ls --color=auto'
    fi
fi

# No matches found
alias "find=noglob find"
alias "sudo find=noglob sudo find"

# Play safe!
alias 'rm=rm -i'
alias 'mv=mv -i'
alias 'cp=cp -i'

#Alias mios
alias 'emacs=emacs -nw'
alias 'sudo emacs=sudo emacs -nw'
function e () { emacsclient -n $1}

#Bitban
alias cmartin='ssh cmartin@gate3.bitban.com -p2222'
alias tunnels='ssh -p 2222 -L 11029:localhost:11029 -L 11129:localhost:11129 -L 11229:localhost:11229 -L 11329:localhost:11329 -L 11429:localhost:11429 -L 16029:localhost:16029 -L 16129:localhost:16129 -L 11080:bbdev03.bitban.int:80 cmartin@gate3.bitban.com'
alias tunnels2='ssh -p 2223 -L 11029:localhost:11029 -L 11129:localhost:11129 -L 11229:localhost:11229 -L 11329:localhost:11329 -L 11429:localhost:11429 -L 16029:localhost:16029 -L 16129:localhost:16129 -L 11080:localhost:80 cmartin@gate3.bitban.com'
alias mountdev03='sshfs -p2222 cmartin@gate3.bitban.com: /home/cesar/Bitban/dev03'
#Bitbanuva
alias cmartinuva='ssh cmartin@gate.bitban.com -p443'
alias tunnelsuva='ssh -p 443 -L 11029:localhost:11029 -L 11129:localhost:11129 -L 11229:localhost:11229 -L 11329:localhost:11329 -L 11429:localhost:11429 -L 16029:localhost:16029 -L 16129:localhost:16129 -L 11080:localhost:80 cmartin@gate.bitban.com'
alias tunnels2uva='ssh -p 443 -L 11029:localhost:11029 -L 11129:localhost:11129 -L 11229:localhost:11229 -L 11329:localhost:11329 -L 11429:localhost:11429 -L 16029:localhost:16029 -L 16129:localhost:16129 -L 11080:localhost:80 cmartin@gate.bitban.com'
alias mountdev03uva='sshfs -p443 cmartin@gate.bitban.com: /home/cesar/Bitban/dev03'

function f () { find . -name $1; }
function fe () { find . -name $1 | xargs -i emacsclient -n {} ;}
function g () { grep -r $1; }
function gi () { grep -ri $1; }
function grep_phpi {
    grep -i $1 `find . -name "*php"` `find . -name "*inc"`
}

function grep_tpl {
    grep $1 `find . -name "*tpl"` 
}

function grep_tpli {
    grep -i $1 `find . -name "*tpl"` 
}

function grep_js {
    grep $1 `find . -name "*js"` 
}

function grep_jsi {
    grep -i $1 `find . -name "*js"` 
}

function grep_php {
    grep $1 `find . -name "*php"` `find . -name "*inc"`
}

function grep_inc {
    grep $1 `find . -name "*inc"`
}

function sql {
    mysql -u root -pmysql $1
}
