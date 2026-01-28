#!/bin/bash
function print_usage () {
    cat <<EOF
USAGE
    ${BASH_SOURCE[0]} <input.xml> <output.dir> [params]
EOF
}

function errcho () {
    echo "$@" 1>&2
}

function err () {
    errcho "$@"
    print_usage 1>&2
    exit 1;
}

SOURCEFILE="$1"
[[ -f "$SOURCEFILE" ]] || err no source file given
STYLESHEET="$2"
[[ -f "$2" ]] || err no stylesheet given
# shift 2

java -jar saxon/share/java/saxon-he-12.8.jar "$SOURCEFILE" "$STYLESHEET"
