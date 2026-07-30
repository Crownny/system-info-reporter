#!/bin/bash
echo "System Info Report"
echo "==================="
echo "Kernel Version:"
uname -r
echo "system Uptime:"
uptime
echo "Hostname: $(hostname)"
echo "Operating System: $(uname -s)"

echo "Disk Usage:"
df -h | head -5

echo "CPU Info:"
lscpu | head -3

echo "Current User:"
whoami
echo "Memory Usage:"
free -h 2>/dev/null || echo "free command not available (may be on macOS)"
