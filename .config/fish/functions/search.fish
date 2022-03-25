function search -d "Search for an occurence of text in files"
    find . -type f | xargs grep -i $argv[1] 2> /dev/null
end

