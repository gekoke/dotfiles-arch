function configure_path
  set -gx PATH $PATH $HOME/.local/bin/
end

function configure_default_programs
  set -Ux EDITOR "lvim"
  set -Ux VISUAL "lvim"
  set -Ux SUDO_EDITOR "lvim"
  set -Ux BROWSER "brave"
  fish_vi_key_bindings
end

function configure_environment
  set -x _JAVA_AWT_WM_NONREPARENTING 1
  set -x XSECURELOCK_NO_COMPOSITE 1
  set -x GCM_CREDENTIAL_STORE gpg
end

function bind_aliases
  alias v "lvim"
  alias c "find ~/.config -type f | fzf | xargs $EDITOR"
  alias ra "ranger"
  alias dl "trash"
  alias recycle "trash-empty 10"
  alias ls "exa --icons"
  alias ll "exa -l --icons"
  alias tree "exa --tree --icons"
  alias sv "sudoedit"
  alias dots '/usr/bin/git --git-dir $HOME/.dotfiles/ --work-tree $HOME'
  alias dts 'lazygit --git-dir $HOME/.dotfiles --work-tree $HOME'
  alias x "grep"
  alias i "grep -i"
  alias cal "ncal -M -b -A 1"
  alias lg "lazygit"
  alias lzd "sudo lazydocker"
  alias cb "xclip -selection clipboard"
  alias cbo "xclip -o -selection clipboard"
end

function fish_greeting
  neofetch
  printf "\n"
  set_color green; fortune -a | boxes -d java-cmt
end

configure_path
configure_default_programs
configure_environment
bind_aliases

