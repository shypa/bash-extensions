# .bashrc
#
# SPDX-License-Identifier: MIT
#
# author: ypsah <asyph@tutanota.com>

# Unalias everything to prevent any conflict
unalias -a

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -n "$SSH_CONNECTION" ]; then
    # In order to be able to type a password using git through ssh
    unset SSH_ASKPASS
fi

shopt -s nullglob
for file in "${XDG_DATA_HOME:-"$HOME"/.local/share}"/bash/sources.d/*; do
    source "$file"
done

for file in "${XDG_DATA_HOME:-"$HOME"/.local/share}"/bash/ps1.d/*; do
    source "$file"
done

for file in "${XDG_DATA_HOME:-"$HOME"/.local/share}"/bash/completions.d/*; do
    source "$file"
done
shopt -u nullglob
unset file
