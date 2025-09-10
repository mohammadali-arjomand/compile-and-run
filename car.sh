#!/bin/bash

path="$1"
filename="${path%.*}"
ext="${path##*.}"

compile-and-hash-cpp() {
     g++ "$path" -o "$filename.out"
     md5sum "$path" > ".$path.md5sum"
}

if [ "$ext" == "cpp" ]; then
    if [ ! "$2" == "--compile" -a -f "$filename.out" -a -f ".$path.md5sum" -a -f ".$path.md5sum" ]; then
        if [ "$(md5sum $path)" == "$(cat .$path.md5sum)" ]; then
            if [ ! "$2" == "--quiet" -a ! "$2" == "--short" ]; then
                echo "Car did not compile your file and just ran prevous compiled file. If you want to compile file, enter:"
                echo -e "\n\tcar $path --compile\n"
                echo "If you wish to don't see this message, enter:"
                echo -e "\n\tcar $path --quiet\n"
                echo "If you want to see only a short message, enter:"
                echo -e "\n\tcar $path --short\n"
            elif [ "$2" == "--short" ]; then
                echo "> No Compile"
            fi
        else
            compile-and-hash-cpp
        fi
    else
        compile-and-hash-cpp
    fi
    time "./$filename.out"
elif [ "$ext" == "go" ]; then
    time go run "$path"
elif [ "$ext" == "py" ]; then
    time python3 "$path"
elif [ "$ext" == "sh" ]; then
    time bash "$path"
fi
