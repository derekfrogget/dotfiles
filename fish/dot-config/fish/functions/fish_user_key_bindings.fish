function fish_user_key_bindings
    # Navigation
    bind ctrl-up beginning-of-line
    bind ctrl-down end-of-line
    bind ctrl-backspace backward-kill-word
    bind ctrl-delete kill-word

    # Shortcuts
    bind alt-h '$EDITOR .'
    bind alt-f fg

    # bind alt-c fzf_change_directory
    # bind ctrl-t fzf_find_file
end
