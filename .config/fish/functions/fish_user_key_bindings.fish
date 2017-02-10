function fish_user_key_bindings
  fish_vi_key_bindings

  bind -M default -m default sk peco_kill
  bind -M default -m insert sh peco_select_history
  bind -M default -m insert sr peco_select_repository
  bind -M default -m insert sR peco_open_repository
  bind -M default -m insert sm peco_recent_directory
  bind -M insert -m default jj backward-char force-repaint
end
