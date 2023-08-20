#!/bin/bash
handleTypeScriptOutput() {
    while read -r line; do
        printf "%s\n" "$line"

        if [[ "$line" == *"File change detected."* || "$line" == *"Starting compilation"* ]]; then
            echo "" > errors.err
        fi

        echo "$line" >> errors.err
    done
}

handleTypeScriptOutput
