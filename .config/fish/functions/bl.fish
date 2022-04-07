function bl
    bw login (cat ~/.secrets/pw_manager_email $BW_EMAIL) --raw --passwordfile ~/.secrets/pw_manager
end

