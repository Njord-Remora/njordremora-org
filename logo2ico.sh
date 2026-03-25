#!/bin/bash

todir="assets/img/favicons"

magick -density 300 -define icon:auto-resize=256,128,96,64,48,32,16 -background none assets/logo.svg "${todir}/favicon.ico"

cp assets/logo.svg "${todir}/favicon.svg"

for x in 16 32 48 64 96 128 192 256; do
	magick -background none assets/logo.svg -density "${x}x${x}" "${todir}/favicon-${x}x${x}.png"
done
for x in 192 512; do
	magick -background none assets/logo.svg -density "${x}x${x}" "${todir}/web-app-manifest-${x}x${x}.png"
done

magick -background none assets/logo.svg -density "180x180" "${todir}/apple-touch-icon.png"
