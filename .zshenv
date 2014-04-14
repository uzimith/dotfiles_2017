# path
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH
export PATH=$HOME/Library/Haskell/bin:$PATH
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH
#opam
source /Users/uzimith/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

#boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
[ -f /opt/boxen/nvm/nvm.sh ] && source /opt/boxen/nvm/nvm.sh

## rbenv
#
if [[ -s /opt/boxen/rbenv/bin ]] ; then
  rbenv global 2.1.0
  rbenv version | sed -e 's/ .*//'
fi

## nodenv
#
if [[ -s /opt/boxen/nodenv/bin ]] ; then
  nodenv global v0.10.25
  nodenv versions | sed -e 's/ .*//'
fi

