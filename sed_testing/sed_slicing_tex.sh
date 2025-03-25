#!/bin/bash

touch linalg2_1-all.tex
sed -n -e '/\t*\\begin{all}/,/\t*\\end{all}/!p' linalg2_1.tex >> linalg2_1-all.tex

touch linalg2_1-all-mm.tex
sed -n -e '/\t*\\begin{mm}/,/\t*\\end{mm}/!p' linalg2_1-all.tex >> linalg2_1-all-mm.tex

touch linalg2_1-all-mm-megj.tex
sed -n -e '/\t*\\begin{megj}/,/\t*\\end{megj}/!p' linalg2_1-all-mm.tex >> linalg2_1-all-mm-megj.tex
