#!/bin/sh
set -e

MSG=${1:-"Update site content"}

echo "Building search index..."
npx pagefind --site . --output-path _pagefind

echo "Committing and pushing..."
git add -A
git commit -m "$MSG"
git pull --rebase
git push

echo "Done."
