# Enable tab completion
source ~/git-completion.bash

# Change command prompt
source ~/git-prompt.sh

# Terminal colours (after installing GNU coreutils)
NM="\[\033[0;38m\]"  # means no background and white lines
BL="\[\033[0;35m\]"  # Branch Name Color Change With Magenta
HI="\[\033[0;37m\]"  # change this for letter colors
HII="\[\033[0;31m\]" # change this for letter colors
SI="\[\033[0;33m\]"  # this is for the current directory
IN="\[\033[0m\]"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1 /'
}

export PS1="$HII\h $SI\w $NM[$BL\$(parse_git_branch)$NM]  $IN"