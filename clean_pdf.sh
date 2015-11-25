#!/bin/bash
    FILE=$1
    FILE="${FILE%%.*}"
    echo "#############"
    echo $1
    echo "#############"
    if [ -e $1 ]
        then
        pdftk $1 dump_data | \
        sed -e 's/\(InfoValue:\)\s.*/\1\ /g' | \
        pdftk $1 update_info - output ${FILE}.clean.pdf
        exiftool -all:all= ${FILE}.clean.pdf
        exiftool -all:all ${FILE}.clean.pdf
        exiftool -extractEmbedded -all:all ${FILE}.clean.pdf
        qpdf --linearize ${FILE}.clean.pdf ${FILE}.clean2.pdf
        pdftk ${FILE}.clean2.pdf1 dump_data
        exiftool ${FILE}.clean2.pdf
        echo "#############"
        echo "Metadata of file "${FILE}.clean2.pdf
        pdfinfo -meta ${FILE}.clean2.pdf
        echo "#############"
    else
        echo "File not found!"

        fi
