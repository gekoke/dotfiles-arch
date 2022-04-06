function nopen
    notes ls | fzf | xargs notes open
end
