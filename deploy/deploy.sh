#!/usr/bin/env bash
set -euo pipefail

repository_dir=/opt/bn-studio
website_dir=/var/www/bn-studio.ru

git -C "$repository_dir" fetch --quiet origin main

current_commit=$(git -C "$repository_dir" rev-parse HEAD)
remote_commit=$(git -C "$repository_dir" rev-parse origin/main)

if [[ "$current_commit" == "$remote_commit" ]]; then
  exit 0
fi

git -C "$repository_dir" reset --hard --quiet origin/main
rsync -a --delete "$repository_dir/dist/" "$website_dir/"
