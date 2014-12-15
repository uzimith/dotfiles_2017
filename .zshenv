# path
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH
export PATH=$HOME/Library/Haskell/bin:$PATH
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
#opam
source /Users/uzimith/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
