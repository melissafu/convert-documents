

# Declare input argument as a variable
INPUTFILE=$1
OUTPUTNAME=$INPUTFILE

# Convert markdown to HTML
pandoc -o $OUTPUTNAME.html $INPUTFILE  

# Convert markdown to DOCX
pandoc -o $OUTPUTNAME.docx $INPUTFILE  

# Convert markdown to ODT
pandoc -o $OUTPUTNAME.odt $INPUTFILE  

# Convert markdown to PDF
pandoc -o $OUTPUTNAME.pdf $INPUTFILE  

# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF"