#!/bin/sh
# Usage: ./set-domain.sh https://your-final-domain.com
# Replaces the placeholder deployment URL used in the Open Graph / canonical / Twitter tags.
if [ -z "$1" ]; then echo "Usage: $0 https://your-domain.com"; exit 1; fi
URL=$(printf '%s' "$1" | sed 's#/*$##')
sed -i.bak "s#https://YOUR-DOMAIN-HERE#$URL#g" index.html && rm -f index.html.bak
echo "Updated index.html to use $URL"
