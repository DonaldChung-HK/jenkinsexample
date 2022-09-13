xvfb-run -e /dev/stderr --server-args="-core -noreset -screen 0 640x480x24" --server-num=101 cat ./Multiline-log.txt
terminate_xvfb_sessions