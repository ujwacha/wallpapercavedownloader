#!/bin/bash

## take the link of the wallpapercave album as the first argument

for line in $(curl --user-agent 'Chrome/79' $1  | grep -o 'src="/wp...............................' | grep -oP '(?<=wp).*?(?=")')
do
	curl --user-agent 'Chrome/79' https://wallpapercave.com/wp$line > $(echo $line | cut -c2-)
done
