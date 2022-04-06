function m
    mbsync -a > /dev/null &
    neomutt $argv; 
end
