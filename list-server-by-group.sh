#!/bin/bash
for i in `jq -r 'keys |.[]' servers.json`
do
A="jq -r '.\""$i"\"|keys|.[]' servers.json"
     for j in `eval $A`
	   do
             B="jq -r '.\""$i"\".\""$j"\"' servers.json"
	     echo "$i" ":" "$j" ":" "`eval $B`"
           done  
done
