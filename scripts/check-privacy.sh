#!/bin/sh
# Keep matched text out of CI logs.
set -eu

cd "$(git rev-parse --show-toplevel)"

pattern='(^|[^0-9.])10[.]25[.]([0-9]{1,3}[.][0-9]{1,3}([^0-9.]|$)|[^0-9]|$)|/[U]sers/[[:alnum:]_.-]+|/[h]ome/[[:alnum:]_][[:alnum:]_.-]*/|(^|[^[:alnum:]])[c]ortexos([^[:alnum:]]|$)|[[:alnum:]_.%+-]*([h]eitor|[m]orsch|[i]ngrid)[[:alnum:]_.%+-]*@[[:alnum:].-]+[.][[:alpha:]]{2,}'
status=0
git grep -IqEi -e "$pattern" -- . || status=$?
case "$status" in
  0) echo 'Privacy check failed. Replace owner-specific details with placeholders.' >&2; exit 1 ;;
  1) exit 0 ;;
  *) exit "$status" ;;
esac
