#!/bin/bash

mkdir output

QUOTE='Life is available only in the present moment.'

convert input.png -font Helvetica-Narrow-BoldOblique -gravity Center -fill white -pointsize 45 -annotate 0 "${QUOTE}" edited2.png
convert edited2.png -font Helvetica-Narrow-BoldOblique -gravity Center -fill white -pointsize 50 -annotate +0+100 "- Thich Nhat Hanh" edited.png

tts --list_models >> output/models.txt
tts --text "${QUOTE}" --out_path output/speech.wav

melt output/speech.wav -track edited.png in=0 out=160 -consumer avformat:output.mp4
mv output.mp4 output/output.mp4
