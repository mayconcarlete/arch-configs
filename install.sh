#!/usr/bin/env bash


# FILES=("functions.sh" "config.sh")

# BASE_URL="https://raw.githubusercontent.com/mayconcarlete/arch-configs/refs/heads/main/install.py"


# for FILE in "${FILES[@]}";do
#     source <(wget -qO- "$BASE_URL/${FILE}")
# done

# print_functions
# print_config

set -euo pipefail

echo "Baixando e executando install.py..."

python3 - <<'EOF'
import urllib.request

url = "https://raw.githubusercontent.com/mayconcarlete/arch-configs/refs/heads/main/install.py"
source = urllib.request.urlopen(url).read().decode()
exec(source)
EOF
