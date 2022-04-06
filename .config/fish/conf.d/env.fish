function _configure_path
    set -gx PATH $PATH $HOME/.local/bin/
    set -gx PATH $PATH $HOME/.jbang/bin/
end

function _configure_default_programs
    set -Ux EDITOR "lvim"
    set -Ux VISUAL "lvim"
    set -Ux SUDO_EDITOR "lvim"
    set -Ux BROWSER "brave"
end

function _configure_configurations
    set -gx XDG_CONFIG_HOME "$HOME/.config"
    set -gx JAVA_AWT_WM_NONREPARENTING 1
    set -gx SECURELOCK_NO_COMPOSITE 1
    set -gx GCM_CREDENTIAL_STORE "gpg"
    set -gx NOTES_DIRECTORY "$HOME/.notes"
end

function _configure_environment
    _configure_path
    _configure_default_programs
    _configure_configurations
end

_configure_environment

