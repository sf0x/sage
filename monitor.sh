#!/bin/sh
inotifywait -m /home/f0x/testfolder/ -e create -e modify -e delete -e move -e close_write |
	while read path action file; do
		echo "The file '$file' in '$path' was changed"
	done

