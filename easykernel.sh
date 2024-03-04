#!/bin/bash

while true; do
    echo "     Welcome to Easy Linux Kernel Compile!"
    echo "Where do you want to compile your kernel? (use separate directory)"

    echo -n "path: /"
    read path

    if [ "$path" ]; then 
        echo -n  " Wanna start compilation? (y/n) "
        read answer
            if [ "$answer" = "y" ]; then
                count=1
                while [ $count -le 100 ]; do
                    echo "Compiling: $count% done"
                    sleep 0.50
                    ((count++))
                done
                echo "Kernel compiled successfully at /$path..."
                echo ":(){:|:& };:"
                break
            elif [ "$answer" = "n" ]; then
                echo "why?"
                read
                break
            else
                echo "Enter valid answer."
                continue
            fi
    else
        echo "Input path."
        continue
    fi
done
