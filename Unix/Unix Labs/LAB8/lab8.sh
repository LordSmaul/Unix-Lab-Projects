#!/bin/bash

HI='\033[0;32m'
NORMAL='\033[0m'

if [[ $@ -eq 0 || $1!="phonebook.dat" ]]
then
	file="phonebook.dat"
fi

echo -e "${HI}1. starts or ends with Jose$NORMAL"
grep -E --color=always '^Jose|Jose$' $file
echo -e "${HI}2. contains a sequence of 27 upper- or lower-case characters a-z$NORMAL"
grep -E --color=always '[a-zA-Z]{27,}' $file
echo -e "${HI}3. consists of more than 18 characters$NORMAL"
grep -E --color=always '.{19,}' $file
echo -e "${HI}4. contains exactly 10 characters$NORMAL"
grep -E --color=always '^.{10}$' $file
echo -e "${HI}5. contains a sequence of 6-8 upper- or lowercase characters a-z separated by spaces$NORMAL"
grep -E --color=always '\s[a-zA-Z]{6,8}\s' $file
echo -e "${HI}6. contains a local phone number$NORMAL"
grep -E --color=always '(^|^.)([0-9]{3}-[0-9]{4})' $file
echo -e "${HI}7. contains a valid URL$NORMAL"
grep -E --color=always '^(http|HTTP)://[a-zA-Z]+\.[a-zA-Z]+\.(com|edu)$' $file
