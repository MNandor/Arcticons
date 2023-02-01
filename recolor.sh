#!/bin/bash

white="stroke\s*:\s*\(#fff\|\#ffffff\|white\)"

# If you want to replace all stroke colors (won't match rgb()/hsl()/..., but will match #... and black/blue/...):
# ="stroke\s*:\s*#\?[[:alnum:]]\+"
black="stroke:#FF0000" # can replace with any target color
for x in other/*.svg; do
	sed -i "s/${white}/${black}/Ig" "${x}"
done

