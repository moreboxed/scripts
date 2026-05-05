curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

rcfile="$HOME/.bashrc"

if [[ "$OSTYPE" == "darwin"* ]]; then
  rcfile="$HOME/.zshrc"
fi

sed -i '1i export NVM_DIR="$HOME/.nvm"' "$rcfile"
sed -i '2i [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' "$rcfile"
sed -i '3i [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' "$rcfile"

. "$rcfile"
nvm install --lts