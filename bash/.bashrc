## Add this to the .bashrc file to show the git branch in bash prompt
# get git branch if you are in a git tracked directory otherwise return null
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
  
 # Modify $PS1 to include the git branch in red
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \[\e[91m\]$(git_branch)\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w $(git_branch)\$ '
fi
