#!/bin/bash

BASE_URL=https://raw.githubusercontent.com/mayconcarlete/arch-configs/refs/heads/main

for FILE in functions.sh config.sh; do
    wget "$BASE_URL/$FILE" -o "$FILE"
done

say_config()
say_functions()