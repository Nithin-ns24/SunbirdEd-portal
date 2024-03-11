#!/bin/sh

get_branches() {
    git for-each-ref --format='%(refname:short)' refs/heads/
}

branches=$(get_branches)

if [ -z "$branches" ]; then
    echo "No branches found."
    exit 1
fi

gum choose --no-limit $branches
