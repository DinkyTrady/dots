if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source

    # Set variable
    set -Ux SDKMAN_DIR $HOME/DevPkg/.sdkman
    set -U nvm_default_version v20.18.0
    set -U nvm_default_packages npm

    set -Ux RUSTUP_HOME $HOME/DevPkg/.rustup
    set -Ux CARGO_HOME $HOME/DevPkg/.cargo

    alias vi nvim
    set -Ux EDITOR nvim

    # Add path
    fish_add_path ~/.local/share/nvim/mason/bin

    # Aliases
    alias l="eza -a --icons"
    alias ll="eza -lahF --icons"
    alias lt="eza -lahF --tree --icons"
end
