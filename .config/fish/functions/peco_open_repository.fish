function  peco_open_repository
  ghq list -p | peco $peco_flags | read line; gh-open $line
end
