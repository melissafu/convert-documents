
# Declare input argument as a variable
INPUTFILE=$1
# OUTPUTNAME=$(echo -n $INPUTFILE | head -c -3)
OUTPUTNAME=${INPUTFILE%.*}
# ??? $ when referencing variable
# echo $OUTPUTNAME

# Convert markdown to HTML
pandoc -o $OUTPUTNAME.html $INPUTFILE  

# Convert markdown to DOCX
pandoc -o $OUTPUTNAME.docx $INPUTFILE  

# Convert markdown to ODT
pandoc -o $OUTPUTNAME.odt $INPUTFILE  

# Convert markdown to PDF
pandoc $INPUTFILE --latex-engine pdflatex -o $OUTPUTNAME.pdf

# Convert markdown to RTF
pandoc $INPUTFILE -o $OUTPUTNAME.rtf
# ??? -s command

# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF, RTF"