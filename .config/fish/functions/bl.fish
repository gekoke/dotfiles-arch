function bl
    set BW_EMAIL (cat ~/.secrets/pw_manager_email)
    set -g BW_SESSION (bw login $BW_EMAIL --raw --passwordfile ~/.secrets/pw_manager)
    set -e BW_EMAIL
end

