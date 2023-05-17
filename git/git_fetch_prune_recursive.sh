# For use in a shell:
# Download this file to /usr/local/bin/git_fetch_prune_recursive.sh, then chmod 755 it to install git-fetch-prune-recursive
find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git fetch --prune" \;
