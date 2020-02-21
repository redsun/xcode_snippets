#!/bin/bash
# Copy common code snippets into xcode
# 2019/03/16

SPATH='/Users/'$USER'/Library/Developer/Xcode/UserData/CodeSnippets/'

cd objc

for i in $(ls); do
	if [[ ${i##*.} == 'codesnippet' ]]; then
		cp $(pwd)/$i $SPATH
	fi
done

echo "copy success 😄"
