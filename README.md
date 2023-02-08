# collate_pdfs
Collate PDFs of front and back / odd and even scanned sides of physical documents.

## Motivation
I scan physical documents using a simple printer which can only handle one sided scanning. For double sided documents, I have to scan the back and front.

## Example
Given I have scanned document ABC front (ABC.f.pdf) and back (ABC.b.pdf) this script combines the two using pdftk into one document. It will automatically pickup documents with matching names and matching .f.pdf and .b.pdf extensions.

## Usage
Put the collate_pdfs.sh script in the directory containing your pdfs. Then:
`bash collate_pdfs.sh`
