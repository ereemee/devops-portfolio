#!/usr/bin/env bash
set -euo pipefail
DISK_LIMIT=${DISK_LIMIT:-80}   # 사용률 경고 기준(%)

echo "=== $(hostname) 점검: $(date '+%F %T') ==="
echo "[디스크]"
df -h --output=target,pcent | tail -n +2 | while read -r mnt pct; do
  use=${pct%\%}
  if (( use >= DISK_LIMIT )); then echo "  ⚠ $mnt ${pct}"; else echo "  OK $mnt ${pct}"; fi
done
echo "[메모리]"; free -h | awk 'NR==2{print "  사용 "$3" / 전체 "$2}'
echo "[메모리 상위 프로세스 5]"; ps aux --sort=-%mem | awk 'NR>1&&NR<=6{print "  "$11" "$4"%"}'
# TODO: 경고가 하나라도 있으면 exit 1 (나중에 CI·모니터링에서 활용)