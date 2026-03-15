#!/bin/bash

# --------- FULL RAINBOW RGB ENGINE ----------
# This function prints any text in dynamic rainbow colors.

rainbow() {
    text="$1"
    i=0

    for (( n=0; n<${#text}; n++ )); do
        r=$(( (i*37) % 255 ))
        g=$(( (i*17) % 255 ))
        b=$(( (i*29) % 255 ))
        printf "\e[38;2;%s;%s;%sm%s" "$r" "$g" "$b" "${text:$n:1}"
        ((i++))
    done

    printf "\e[0m\n"
}

# Rainbow print file content
rainbow_file() {
    while IFS= read -r line; do
        rainbow "$line"
    done < "$1"
}
