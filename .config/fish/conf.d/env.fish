function _configure_path
    set -gx PATH $PATH $HOME/.local/bin/
    set -gx PATH $PATH $HOME/.jbang/bin/
    set -gx PATH $PATH $HOME/.emacs.d/bin
end

function _configure_default_programs
    set -U EDITOR "lvim"
    set -U VISUAL "lvim"
    set -U SUDO_EDITOR "lvim"
    set -U BROWSER "brave"
    set -U AUR_HELPER "paru"
    set -U PAGER "less -r"
    set -U MANPAGER "less -r"
end

function less_colors
    set -Ux LESS_TERMCAP_mb (tput bold; tput setaf 2)
    set -Ux LESS_TERMCAP_md (tput bold; tput setaf 6)
    set -Ux LESS_TERMCAP_me (tput sgr0)
    set -Ux LESS_TERMCAP_so (tput bold; tput setaf 3; tput setab 4)
    set -Ux LESS_TERMCAP_se (tput rmso; tput sgr0)
    set -Ux LESS_TERMCAP_us (tput smul; tput bold; tput setaf 7)
    set -Ux LESS_TERMCAP_ue (tput rmul; tput sgr0)
    set -Ux LESS_TERMCAP_mr (tput rev)
    set -Ux LESS_TERMCAP_mh (tput dim)
    set -Ux LESS_TERMCAP_ZN (tput ssubm)
    set -Ux LESS_TERMCAP_ZV (tput rsubm)
    set -Ux LESS_TERMCAP_ZW (tput rsupm)
    set -Ux LESS_TERMCAP_ZO (tput ssupm)
end

function _configure_configurations
    set -gx XDG_CONFIG_HOME "$HOME/.config"
    set -gx JAVA_AWT_WM_NONREPARENTING 1
    set -gx SECURELOCK_NO_COMPOSITE 1
    set -gx GCM_CREDENTIAL_STORE "gpg"
    set -gx NOTES_DIRECTORY "$HOME/.notes"
    less_colors
end

function _configure_environment
    _configure_path
    _configure_default_programs
    _configure_configurations
end

_configure_environment

