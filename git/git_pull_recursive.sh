# For use in a shell:
# Download this file to /usr/local/bin/git_pull_recursive.sh, then chmod 755 it to install git-pull-recursive
find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git pull" \;
