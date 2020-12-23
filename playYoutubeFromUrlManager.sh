#!/bin/bash
CLIP=$(xclip -o -selection clipboard)
echo "CLIP: $CLIP"
youtube-dl --cookies ~/cookies/youtube.txt $CLIP -o - | mpv -
