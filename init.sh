#!/bin/sh

echo "Install go-langserver..."
export GO111MODULE=on
export GOPROXY=https://goproxy.cn
go get -u github.com/sourcegraph/go-langserver


if [ ! -d "$HOME/.SpaceVim.d" ]; then
  echo "Not install spacevim, now install..."
  curl -sLf https://spacevim.org/cn/install.sh | bash

else

  echo "spacevim already installed"
  
fi

echo "Configuration spacevim"

cp ./sublimemonokai.vim $HOME/.SpaceVim/colors/
cp ./init.toml $HOME/.SpaceVim.d/init.toml
