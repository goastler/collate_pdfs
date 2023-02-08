#! /bin/bash

cd "$(dirname $0)"

for filename in ./*; do
	label=${filename%" f.pdf"}
	[[ "$label" != "$filename" ]] || continue
	front="$filename"
	back="${label} b.pdf"
	[ -f "$back" ] || continue
	echo "$filename $label"
	pdftk A="$front" B="$back" shuffle A Bend-1 output "${label}.pdf"
	rm "$front" "$back"
done
