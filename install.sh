#!/bin/bash

FILES=("functions.sh" "config.sh")
BASE_URL="https://raw.githubusercontent.com/mayconcarlete/arch-configs/refs/heads/main"


for FILE in "${FILES[@]}";do
    source <(wget -qO- "$BASE_URL/${FILE}")
done

print_functions
print_config

# This file is reponsible for downloading and erase the script file
# wget 'https://raw.githubusercontent.com/mayconcarlete/arch-configs/refs/heads/main/install.py' -O install.py

# sudo python3 install.py

# rm install.py

# sudo wget -qO-  https://raw.githubusercontent.com/mayconcarlete/arch-configs/refs/heads/main/install.sh | sh