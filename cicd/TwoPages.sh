#!/bin/bash
#
#

set -e

find .

pdfinfo video-streaming-cheatsheet.pdf

NumPages=$(pdfinfo video-streaming-cheatsheet.pdf |grep "^Pages:" |awk '{print $2}')

echo "Number of pages = ${NumPages}"

if [ ${NumPages} -ne 2 ]; then
	echo "Failed check for number of pages = 2.  Number of pages found: ${NumPages}"
	exit 1
else
	echo "Passed check for 2 pages."
fi
