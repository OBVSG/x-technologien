#!/bin/bash
function print_usage () {
    cat <<EOF
USAGE
    ${BASH_SOURCE[0]} <test_file.xspec>
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

export SAXON_HOME=saxon/share/java
export XSPEC_HTML_REPORT_THEME=classic
export TEST_DIR=test_output

xspec/bin/xspec.sh "$SOURCEFILE"
