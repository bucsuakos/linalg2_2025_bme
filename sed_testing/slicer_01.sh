#!/bin/bash

PROGRAMNEV='basename $0'

if [ $# -eq 0 -o $# -gt 1 ]
then
	echo "Usage: $PROGRAMNEV file.tex"
	exit 1
fi

#echo "${1%.*}"

if [ ! -f ./$1 ]; then
	echo "$1 file not found."
else
	touch ${1%.*}-all.tex
	sed -n -e '/\t*\\begin{all}/,/\t*\\end{all}/!p' $1 >> ${1%.*}-all.tex
	echo "${1%.*}-all.tex is done"
	touch ${1%.*}-all-mm.tex
	sed -n -e '/\t*\\begin{mm}/,/\t*\\end{mm}/!p' ${1%.*}-all.tex >> ${1%.*}-all-mm.tex
	echo "${1%.*}-all-mm.tex is done"
	touch ${1%.*}-all-mm-megj.tex
	sed -n -e '/\t*\\begin{megj}/,/\t*\\end{megj}/!p' ${1%.*}-all-mm.tex >> ${1%.*}-all-mm-megj.tex
fi

#touch ${1%.*}-all.tex
#sed -n -e '/\t*\\begin{all}/,/\t*\\end{all}/!p' $1 >> ${1%.*}-all.tex
#echo "${1%.*}-all.tex is done"

#touch linalg2_1-all-mm.tex
#sed -n -e '/\t*\\begin{mm}/,/\t*\\end{mm}/!p' linalg2_1-all.tex >> linalg2_1-all-mm.tex

#touch linalg2_1-all-mm-megj.tex
#sed -n -e '/\t*\\begin{megj}/,/\t*\\end{megj}/!p' linalg2_1-all-mm.tex >> linalg2_1-all-mm-megj.tex
