# Escriba su código aquí
sed 's/\/[0-9][0-9]\([0-9][0-9]\)\;/\/\1\;/' data.csv > temp.1
sed 's/^\([0-9]\)\//0\1\//' temp.1 > temp.2
sed 's/\/\([0-9]\)\//\/0\1\//' temp.2 > temp.3
sed 's/\([0-9][0-9]\)\/\([0-9][0-9]\)\/\([0-9][0-9]\)\;/20\3\-\2\-\1\;/' temp.3 > temp.4
sed 's/.*/\U&/g' temp.4 > temp.5
sed 's/\;N/\;\\N/g' temp.5 > temp.6
sed 's/\;\;/\;\\N\;/g' temp.6 > temp.7
sed 's/\;$/\;\\N/g' temp.7 > temp.8
sed 's/\,/\./g' temp.8 > temp.9
sed 's/\;/\,/g' temp.9 > final.txt
rm temp.*
cat final.txt