#!/bin/bash

# Simple script to create placeholder icons for PWA
# For production, replace these with proper Rook card graphics

echo "Creating placeholder PWA icons..."

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "❌ ImageMagick not found. Installing would require:"
    echo "   Ubuntu/Debian: sudo apt-get install imagemagick"
    echo "   Mac: brew install imagemagick"
    echo ""
    echo "📝 Alternative: Create icons online at:"
    echo "   - https://favicon.io/favicon-converter/"
    echo "   - https://realfavicongenerator.net/"
    echo "   - https://www.pwabuilder.com/imageGenerator"
    echo ""
    echo "Upload a 512x512 Rook card image and download as PNG"
    exit 1
fi

# Create a simple placeholder icon with text
convert -size 512x512 xc:'#fbbf24' \
    -gravity center \
    -pointsize 200 \
    -fill '#0f172a' \
    -font Arial-Bold \
    -annotate +0+0 '🎴' \
    icon-512.png

# Create 192x192 version
convert icon-512.png -resize 192x192 icon-192.png

# Create a simple screenshot placeholder
convert -size 1280x720 xc:'#0f172a' \
    -gravity center \
    -pointsize 60 \
    -fill '#fbbf24' \
    -annotate +0-100 'Crocker Rook' \
    -pointsize 30 \
    -fill '#ffffff' \
    -annotate +0+50 'Card Game' \
    screenshot.png

echo "✅ Created icon-192.png, icon-512.png, and screenshot.png"
echo ""
echo "🎨 For better icons, create a 512x512 Rook card graphic and run:"
echo "   convert your-rook-image.png -resize 512x512 icon-512.png"
echo "   convert icon-512.png -resize 192x192 icon-192.png"
