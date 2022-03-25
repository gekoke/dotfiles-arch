function _configure_path
    set -gx PATH $PATH $HOME/.local/bin/
end

function _configure_default_programs
    set -Ux EDITOR "lvim"
    set -Ux VISUAL "lvim"
    set -Ux SUDO_EDITOR "lvim"
    set -Ux BROWSER "brave"
end

function _configure_environment
    _configure_path
    _configure_default_programs
    set -gx JAVA_AWT_WM_NONREPARENTING 1
    set -gx SECURELOCK_NO_COMPOSITE 1
    set -gx GCM_CREDENTIAL_STORE "gpg"
end

_configure_environment

