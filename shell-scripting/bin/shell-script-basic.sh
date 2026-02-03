#!/bin/zsh

set -e      # 에러 발생 시 즉시 종료
set -u      # 선언 안 된 변수 사용 시 에러
set -o pipefail  # 파이프 중간 에러도 감지

BASE_DIR=$(cd "$(dirname "$0")" && pwd)
source "$BASE_DIR/lib/log.sh"

LOG_DIR="$BASE_DIR/logs"
mkdir -p "$LOG_DIR"

LOG_FILE="$LOG_DIR/shell_script_basic_$(date +%Y%m%d).log"
log INFO "shell-script-basic start" ${LOG_FILE}