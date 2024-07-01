#!/bin/bash

case "$1" in
    --date|-d)
        date
        ;;
    --logs|-l)
        num_logs=${2:-100}
        for ((i=1; i<=num_logs; i++)); do
            echo "Log number $i, created by $0 on $(date)" > "log_${i}.txt"
        done
        ;;
    --help|-h)
        echo "Available options:"
        echo "--date, -d       Display the current date"
        echo "--logs, -l [num] Create [num] log files (default: 100)"
        echo "--help, -h       Display this help message"
        ;;
    *)
        echo "Invalid option. Use --help or -h for usage information."
        ;;
esac

