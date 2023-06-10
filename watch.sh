export GOPATH=/Users/$USER/go
export GOROOT="$(/usr/local/bin/brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
cd ~/Bolg/quartz
nodemon -w ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Obsidian -w ~/Blog/quartz/assets/js -w ~/Blog/quartz/assets/styles -w ~/Blog/quartz/layouts -w ~/Blog/quartz/config.toml -w ~/Blog/quartz/data/config.yaml -x "~/Blog/quartz/compile.sh" -e md,html,js,scss,xml
