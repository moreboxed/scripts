rcfile="$HOME/.bashrc"

if [[ "$OSTYPE" == "darwin"* ]]; then
  rcfile="$HOME/.zshrc"
fi

touch "$rcfile"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

. "$rcfile"
nvm install --lts