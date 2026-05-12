echo "$password" | sudo -S -v

if [ "$OSTYPE" != "Darwin" ]; then
    if ! command -v unzip >/dev/null 2>&1; then
        if command -v apt >/dev/null 2>&1; then
            sudo apt update && sudo apt install -y unzip
        elif command -v dnf >/dev/null 2>&1; then
            sudo dnf install -y unzip
        fi
    fi
fi

curl -fsSL https://bun.sh/install | bash
