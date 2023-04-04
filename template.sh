#!/bin/bash

# Auhtor: Julian Lamprecht
# V1.0

# Short description

########## Variables ##########

DESCRPTION=""

REQUIRED_ARGUMENTS=("Test 1" "Test 2")

OPTIONAL_ARGUMENTS=()

DEPENDENCIES=("ls" "my custom sctipt")

########## Functions ##########

function _print_arguments {
    arguments=($@)

    for argument in "${arguments[@]}"
    do
        echo -n "[$argument] "
    done
}

########## Argument/Dependecies check ##########

if [ $# -ne "${#REQUIRED_ARGUMENTS[@]}" ]; then
    echo >&2 "Not enough arguments"
    echo "Usage: $(basename "$0") $(_print_arguments "${REQUIRED_ARGUMENTS[@]}")"
    exit 1
fi

########## Start of script ##########