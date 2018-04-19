#!/bin/sh

# combine all lists
cat individual-sites/*.txt > blacklist.txt

# sort blacklist, remove blank lines and write to blacklist.txt
sed  -i '' '/^[[:blank:]]*#/d;s/#.*//' blacklist.txt
sed  -i '' '/^$/d' blacklist.txt

sort blacklist.txt -o blacklist.txt