#!/bin/bash

mkdir -p static/fonts

cd static/fonts

for font in "comfortaa" "ibm-plex-serif" "source-code-pro" "playfair-display"
do
    curl -o $font.zip \
        "https://google-webfonts-helper.herokuapp.com/api/fonts/$font?download=zip&subsets=latin&formats=woff,woff2&variants=regular,italic,700,700italic"
    unzip -o $font.zip
    rm $font.zip
done
