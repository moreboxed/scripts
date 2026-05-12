echo "$password" | sudo -S -v

rcfile="$HOME/.bashrc"

if [[ "$OSTYPE" == "darwin"* ]]; then
  rcfile="$HOME/.zshrc"
else
    if ! command -v unzip >/dev/null 2>&1; then
        if command -v apt >/dev/null 2>&1; then
            sudo apt update && sudo apt install -y unzip
        elif command -v dnf >/dev/null 2>&1; then
            sudo dnf install -y unzip
        fi
    fi
fi

curl -fsSL https://bun.sh/install | bash

echo 'export PATH="$HOME/.bun/bin:$PATH"' >> "$rcfile"
