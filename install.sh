#! /bin/bash

PROJECT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
TARGET_DIR=~/.local/share/gnome-shell/extensions/pip-on-top@rafostar.github.com

glib-compile-schemas ./schemas/ &&
#cp -r $PROJECT_DIR ~/.local/share/gnome-shell/extensions/pip-on-top@rafostar.github.com &&
mkdir -p $TARGET_DIR &&
rsync -av --exclude='.git' $PROJECT_DIR/ $TARGET_DIR/ &&
echo "SUCCESS"
echo $PROJECT_DIR
