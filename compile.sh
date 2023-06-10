#! /bin/bash

cd ~/Blog/hugo-obsidian
rm -fr ~/Blog/quartz/content/*
rm -rf ~/Blog/quartz/public/*
~/Blog/obsidian-export/target/debug/obsidian-export --frontmatter=always ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Obsidian ~/Blog/quartz/content
go run ~/Blog/hugo-obsidian -input=/Users/tallpizza/Blog/quartz/content -output=/Users/tallpizza/Blog/quartz/assets/indices -index -root=/Users/tallpizza/Blog/quartz
(cd ~/Blog/quartz && hugo --minify)
