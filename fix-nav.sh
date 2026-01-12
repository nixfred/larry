#!/bin/bash

cd /Users/pi/Projects/Larry/pages

# Fix 2026-01-10
sed -i '' 's/\[← Previous Day\](2026-01-09.md)/[← Previous Day]({{ '\''\/journal\/2026-01-09\/'\'' | relative_url }})/g' 2026-01-10.md
sed -i '' 's/\[Journal Index\](INDEX.md)/[Journal Index]({{ '\''\/diary\/'\'' | relative_url }})/g' 2026-01-10.md
sed -i '' 's/\[Next Day →\](2026-01-11.md)/[Next Day →]({{ '\''\/journal\/2026-01-11\/'\'' | relative_url }})/g' 2026-01-10.md

# Fix 2026-01-11
sed -i '' 's/\[← Previous Day\](2026-01-10.md)/[← Previous Day]({{ '\''\/journal\/2026-01-10\/'\'' | relative_url }})/g' 2026-01-11.md
sed -i '' 's/\[Journal Index\](INDEX.md)/[Journal Index]({{ '\''\/diary\/'\'' | relative_url }})/g' 2026-01-11.md
sed -i '' 's/\[Next Day →\](2026-01-12.md)/[Next Day →]({{ '\''\/journal\/2026-01-12\/'\'' | relative_url }})/g' 2026-01-11.md

# Fix 2026-01-12
sed -i '' 's/← Previous Day (none yet)/[← Previous Day]({{ '\''\/journal\/2026-01-11\/'\'' | relative_url }})/g' 2026-01-12.md
sed -i '' 's/\[Journal Index\](INDEX.md)/[Journal Index]({{ '\''\/diary\/'\'' | relative_url }})/g' 2026-01-12.md
sed -i '' 's/\[Next Day →\](2026-01-13.md)/[Next Day →]({{ '\''\/journal\/2026-01-13\/'\'' | relative_url }})/g' 2026-01-12.md

# Fix 2026-01-12-website
sed -i '' 's/\[← Previous Day\](2026-01-11.md)/[← Previous Day]({{ '\''\/journal\/2026-01-11\/'\'' | relative_url }})/g' 2026-01-12-website.md
sed -i '' 's/\[Journal Index\](INDEX.md)/[Journal Index]({{ '\''\/diary\/'\'' | relative_url }})/g' 2026-01-12-website.md
sed -i '' 's/\[Next Day →\](2026-01-13.md)/[Next Day →]({{ '\''\/journal\/2026-01-13\/'\'' | relative_url }})/g' 2026-01-12-website.md

echo "Navigation links fixed!"
