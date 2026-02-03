#!/bin/zsh

log() {
    local level="$1"
    shift
    local msg="$2"
    local file_path="$3"
    echo "$(date '+%F %T') [${level}] ${msg}" >> ${file_path}
}
