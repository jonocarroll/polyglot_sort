#!/bin/bash 

v=("aa-2" "ab-100" "aa-10" "ba-25" "ab-3")
readarray -t a_out < <(printf '%s\n' "${v[@]}" | sort -V)
printf '%s ' "${a_out[@]}"
echo 

exit 0