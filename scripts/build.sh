#!/bin/sh

xelatex -output-directory="./output" "./main.tex"

if [[ $1 == "del" ]]; then 
    rm -vf ./output/*.log ./output/*.aux ./output/*.idx ./output/*.toc ./output/*.synctex.gz ./output/*.out ./output/*.dvi ./output/*.fdb_latexmk ./output/*.fls ./output/*.ilg ./output/*.ind ./output/*.pgf-plot.gnuplot ./output/*.run.xml
else
    echo "Argument specified not recognized"
fi

