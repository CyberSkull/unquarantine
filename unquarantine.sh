#! /bin/zsh
#Usage: removes quarantine exenteded attribute from files

if `which -s xattr`
  then
    xattr -rv -d "com.apple.quarantine" $@
  else
    echo "\bxattr is not in your path."
    return 1
  fi
