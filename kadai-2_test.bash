#!/bin/bash

temp=/temp/$$

ERROR_EXIT () {
echo "$1" >&2
rm -f $tmp-*
exit 1
}

echo 100 10 10 > $tmp-ans
./16745108.bash 100 10 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

echo OK
rm -f $tmp-*
exit 0
